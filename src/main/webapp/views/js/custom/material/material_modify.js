$(document).ready(function(){
    highlightTab('nav-material','nav-material-query');

    var param = location.href.split("?")[1];
    var id = param.split("=")[1];
    getDataByAjax("./detail",{ id }).then(result => {
        if (result.result === 1) {
            console.log(result.data);
            renderMaterialDetail(result.data);
        }
    });

    $("#material-modify-button").on("click", modifyMaterial);
});

function modifyMaterial()
{
    var id = $("#material-modify-button").data("id");
    var id = parseInt(id);
    var params = {
        id,
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
    console.log(params);

    putDataByAjax("./", params).then((result) => {
        console.log(result);
    });

}

function renderMaterialDetail(data)
{
    // var ts = data.timestamp;
    // var createDate = new Date();
    // createDate.setTime(ts * 1000);
    $("#material-modify-button").data("id", data.id);
    $("input[name=material-name]").val(data.name);
    $("input[name=material-number]").val(data.number);
    $("input[name=material-component]").val(data.component);
    $("input[name=material-unitprice]").val(data.unitprice);
    $("select[name=material-measurement]").val(data.measurement);
    $("select[name=material-type]").val(data.type);
    // $("input[name=material-time]").val(createDate.toGMTString());
    $("input[name=material-colorExplain]").val(data.colorExplain);
    $("input[name=material-supplierId]").val(parseInt(data.supplierId));
    $("input[name=material-width]").val(data.width);
    $("input[name=material-outAmount]").val(data.outAmount);
    $("input[name=material-storagePos]").val(data.storagePos);
    $("input[name=material-inventoryAmount]").val(data.inventoryAmount);
    $("input[name=material-supplierName]").val(data.supplier);

}
