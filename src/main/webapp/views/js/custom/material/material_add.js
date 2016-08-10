$(document).ready(function(){
    highlightTab('nav-material','nav-material-add');
    createDateTimePicker();

    $("#submit").on("click", addMaterial);
});



function addMaterial()
{
    var params = {
        name : $("input[name=material-name]").val(),
        number : $("input[name=material-number]").val(),
        component : $("input[name=material-component]").val(),
        unitprice : $("input[name=material-unitprice]").val(),
        measurement : $("select[name=material-measurement]").val(),
        type : $("select[name=material-type]").val(),
        colorExplain : $("input[name=material-colorExplain]").val(),
        supplierId : parseInt($("input[name=material-supplierId]").val()),
        width : $("input[name=material-width]").val(),
        outAmount : $("input[name=material-outAmount]").val(),
        storagePos : $("input[name=material-storagePos]").val(),
        inventoryAmount : $("input[name=material-inventoryAmount]").val()
    };

    postDataByAjax("./", params).then((result) => {
        if (result.result === 1)
        {
            alert("物料添加成功");
            location.href = "./materialquery";
        }
        else
        {
            alert("物料添加失败：" + result.error.message);
        }
    });

}












function createDateTimePicker(){
    $('.date-picker').datetimepicker({
        language : 'zh-CN',
        format : 'yyyy-mm-dd',
        weekStart : 1,
        todayBtn : 1,
        autoclose : 1,
        todayHighlight : 1,
        startView : 2,
        minView : 2,
        maxView : 4,
        forceParse : 0,
    });
}
