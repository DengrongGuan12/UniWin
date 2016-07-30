$(document).ready(function(){
    highlightTab('nav-material','nav-material-supplier');

    $("#supplier-add-button").on("click", addSupplier);
});

function addSupplier()
{
    var $modal = $("#modal-supplier-add");
    var number = $modal.find("input[name=supplier-number]").val();
    var name = $modal.find("input[name=supplier-name]").val();
    var telNo = $modal.find("input[name=supplier-telNo]").val();
    var mbNo = $modal.find("input[name=supplier-mbNo]").val();
    var address = $modal.find("input[name=supplier-address]").val();
    var level = $modal.find("select[name=supplier-level]").val();
    postDataByAjax("../supplier", {
        number,
        name,
        telNo,
        mbNo,
        address,
        level
    }).then((result) => {
        if (result.result === 1)
        {
            alert("供应商添加成功");
            $modal.find("input").val("");
            $modal.modal("hide");
        }
        else
        {
            alert("供应商添加失败");
        }
    });
}
