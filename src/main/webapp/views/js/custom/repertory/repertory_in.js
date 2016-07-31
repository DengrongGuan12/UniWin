const rootURL = "/uniwin/v1/materials/detail";

window.onload = function () {
    highlightTab('nav-repertory','nav-inRepertory');
};

$(document).ready(() => {
    $(".btn-remove").on("click", _removeAll);
    $(".btn-save").on("click", _saveAll);
    $("input").attr("disabled", true);
    $("select").attr("disabled", true);
    $("#repertory-in-quantity").prop("disabled", false);
    const id = window.location.href.split("?")[1].split("=")[1];
    updateMaterial(id);
});

function _removeAll(e)
{
    $("#repertory-in-quantity").val("");
}

function updateMaterial(id)
{
    const url = rootURL + "?id=" + id;
    getDataByAjax(url).then((result) => {
        if (result.result === 1)
        {
            renderMaterial(result.data);
        }
    });
}

function renderMaterial(data)
{
//     "id":物料id(更新时要用到),
//      "number":物料编号,
//      "name": 物料名称,
//      "supplierId": 供应商id,
//      "inventoryAmount": 库存,
//      "supplier":供应商名称,
//      "component": 成分,
//      "unitPrice": 单价,
//      "measurement": 单位,
//      "type": 类型MAIN|AUXILIARY,
//      "colorExplain": 颜色说明,
//      "width": 门幅,
//      "outAmount": 出量,
//      "storagePos": 仓储位置,
//      "inventoryAmount": 库存数量
console.log(data);
    if (data)
    {
        $(".material-info").data("id", data.id);
        $("#material-name").val(data.name);
        $("#material-time").val(data.timestamp);
        $("#material-number").val(data.number);
        $("#material-supplierId").val(data.supplierId);
        $("#material-inventoryAmount").val(data.inventoryAmount);
        $("#material-supplier").val(data.supplier);
        $("#material-component").val(data.component);
        $("#material-unitPrice").val(data.unitprice);
        $("#material-measurement").val(data.measurement);
        $(`#material-type option[value='${data.type}']`).prop("selected", true);
        $("#material-colorExplain").val(data.colorExplain);
        $("#material-width").val(data.width);
        $("#material-outAmount").val(data.outAmount);
        $("#repertory-in-location").val(data.storagePos);
        $("#material-inventoryAmount").val(data.inventoryAmount);
    }
}

function _saveAll(e) {
    const rootpost = "/uniwin/v1/stockDispatch"
    const type = "IN";
    const materialId = $(".material-info").data("id");
    console.log(materialId);
    const quantity = parseInt($("#repertory-in-quantity").val().trim());
    if (materialId !== "" && !isNaN(quantity) && quantity !== 0)
    {
        const url = rootpost + "?type=" + type + "&materialId=" + materialId + "&quantity=" +quantity + "&userId=1";
        postDataByAjax(url, {type, materialId, quantity}).then((result) => {
            if (result.result === 0)
            {
                alert("请求被服务器拒绝");
                console.log(result.error);
            }
            else
            {
                alert("提交成功!");
                updateMaterial(materialId);
                $(".btn-remove").trigger("click");
            }
        });
    }
    else
    {
        alert("输入有误");
    }
}
