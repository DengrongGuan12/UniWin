$(document).ready(function(){
    highlightTab('nav-design','nav-design-add');
    $(".input-file").on("change","input[type='file']",function(){
        var filePath=$(this).val();
        var arr=filePath.split('\\');
        var fileName=arr[arr.length-1];
        $(".showFileName").html(fileName);
    });

    $("#submit").on("click", () => {
        sendImg().then(res => {
            if (res)
            {
                var imgUrl = res;
                var code = $("#design-code").val();
                var name = $("#design-name").val();
                var description = $("#design-description").val();

                if (imgUrl && code && name)
                {
                    addDesign({
                        imgUrl,
                        name,
                        code,
                        description
                    });
                }
                else
                {
                    alert("input invaild!");
                }
            }
        });
    });

});

function addDesign(params)
{
    var url = "./";
    postDataByAjax(url, params).then((res) => {
        if (res.result === 1) {
            alert("添加款式成功");
        }
        else
        {
            alert("添加款式失败");
        }
    });
}

function sendImg()
{
    var formdata = new FormData();
    var fileObj = document.getElementById("input-file").files;
    var url = "../../main/uploadPicture";
    formdata.append("file", fileObj[0]);

    return new Promise((resolve, reject) => {
        $.ajax({
            url : url,
            type : 'post',
            data : formdata,
            cache : false,
            contentType : false,
            processData : false,
            dataType : "json",
            success : function(data) {
                resolve(data.data.url);
            }
        });
    });
}
