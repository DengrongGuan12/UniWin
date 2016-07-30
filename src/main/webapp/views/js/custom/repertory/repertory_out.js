const rootURL = "/uniwin/v1/stockDispatch";

window.onload = function () {
    highlightTab('nav-repertory','nav-outRepertory');
};

$(document).ready(() => {
    $(".btn-remove").on("click", _removeAll);
    $(".btn-save").on("click", _saveAll);
});

function _removeAll(e)
{
    $("input[type='text']").val("");
    $("select option:first").attr("selected", "selected");
}

function _saveAll(e) {

    const type = "OUT";
    const materialId = $("#material-id").val().trim();
    const quantity = parseInt($("#repertory-out-quantity").val().trim());
    if (materialId !== "" && !isNaN(quantity) && quantity !== 0)
    {
        const url = rootURL + "?type=" + type + "&materialId=" + materialId + "&quantity=" +quantity;
        postDataByAjax(url, {type, materialId, quantity}).then((result) => {
            if (result.result === 0)
            {
                alert("请求被服务器拒绝");
            }
            else
            {
                alert("提交成功!");
                $("btn-remove").trigger("click");
            }
        });
    }
    else
    {
        alert("输入有误");
    }
}
