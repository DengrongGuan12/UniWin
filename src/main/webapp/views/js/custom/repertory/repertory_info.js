const rootURL = "/uniwin/v1/materials/detail";

window.onload = function () {
    highlightTab('nav-repertory','nav-repertory-records');
};

$(document).ready(() => {
$("#repertory-in").on("click", "li", _pagination_in_click);
$("#repertory-out").on("click", "li", _pagination_out_click);
init();
});

function init() {
    $("input").prop("disabled", true);
    $("select").prop("disabled", true);
    $(".main-header h1 small").text("库存信息");
    $(".tab-panel.repertory-info").css("display", "flex");
    $(".tab-panel.repertoryIn-list").css("display", "none");
    $(".tab-panel.repertoryOut-list").css("display", "none");
    $(".tab-nav").each(function(index){
        $(this).bind("click", function() {
            $(".main-content > .tab-navs .tab-nav").removeClass("active");
            $(this).addClass("active");
        });

        if(index === 0 && $(this).text() === "库存信息"){
            $(this).bind("click", function() {
                $(".main-header h1 small").text("库存信息");
                $(".tab-panel.repertory-info").css("display", "flex");
                $(".tab-panel.repertoryIn-list").css("display", "none");
                $(".tab-panel.repertoryOut-list").css("display", "none");
            });
        }
        if(index === 1 && $(this).text() === "入库记录"){
            $(this).bind("click", function() {
                $(".main-header h1 small").text("入库记录");
                $(".tab-panel.repertory-info").css("display", "none");
                $(".tab-panel.repertoryIn-list").css("display", "block");
                $(".tab-panel.repertoryOut-list").css("display", "none");
            });
        }
        if(index === 2 && $(this).text() === "出库记录"){
            $(this).bind("click", function() {
                $(".main-header h1 small").text("出库记录");
                $(".tab-panel.repertory-info").css("display", "none");
                $(".tab-panel.repertoryIn-list").css("display", "none");
                $(".tab-panel.repertoryOut-list").css("display", "block");
            });
        }
    });


    const id = window.location.href.split("?")[1].split("=")[1];
    updateMaterial(id);
    updateInTable(null);
    updateOutTable(null);
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
    if (data)
    {
        $(".repertory-info").data("id", data.id);
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
        $("#repertory-location").val(data.storagePos);
        $("#material-inventoryAmount").val(data.inventoryAmount);
    }
}


function _pagination_in_click(e)
{
    const id = $(e.currentTarget).attr("id");
    const sum = $(".repertoryIn-records-table > table").data("sumPage");
    let page = $(".repertoryIn-records-table > table").data("curPage");
    let canUpdate = true;
    switch(id)
    {
        case "first":
        if (page === 1)
        {
            canUpdate = false;
            break;
        }
        page = 1;
        break;
        case "previous":
        if (page <= 1)
        {
            canUpdate = false;
            break;
        }
        page--;
        break;
        case "next":
        if (page >= sum)
        {
            canUpdate = false;
            break;
        }
        page++;
        break;
        case "last":
        if (page === sum)
        {
            canUpdate = false;
            break;
        }
        page = sum;
        break;
        default:
        canUpdate = false;
    }

    if (canUpdate)
    {
        updateInTable({page, num: numOfPage});
    }
}

function _pagination_out_click(e)
{
    const id = $(e.currentTarget).attr("id");
    const sum = $(".repertoryOut-records-table > table").data("sumPage");
    let page = $(".repertoryOut-records-table > table").data("curPage");
    let canUpdate = true;
    switch(id)
    {
        case "first":
        if (page === 1)
        {
            canUpdate = false;
            break;
        }
        page = 1;
        break;
        case "previous":
        if (page <= 1)
        {
            canUpdate = false;
            break;
        }
        page--;
        break;
        case "next":
        if (page >= sum)
        {
            canUpdate = false;
            break;
        }
        page++;
        break;
        case "last":
        if (page === sum)
        {
            canUpdate = false;
            break;
        }
        page = sum;
        break;
        default:
        canUpdate = false;
    }

    if (canUpdate)
    {
        updateOutTable({page, num: numOfPage});
    }
}

function updateOutTable(options)
{
    console.log(options);
    $(".repertoryIn-records-table > table").data("curPage", 1);
    $(".repertoryIn-records-table > table").data("sumPage", 1);
    const current = $(".repertoryIn-records-table > table").data("curPage");
    const sum = $(".repertoryIn-records-table > table").data("sumPage");

    $("#current").text(current + "页");
    $("#sum > span").text("总共" + sum + "页");
}

function updateInTable(options)
{
    console.log(options);
    $(".repertoryOut-records-table > table").data("curPage", 1);
    $(".repertoryOut-records-table > table").data("sumPage", 1);
    const current = $(".repertoryOut-records-table > table").data("curPage");
    const sum = $(".repertoryOut-records-table > table").data("sumPage");

    $("#current").text(current + "页");
    $("#sum > span").text("总共" + sum + "页");
}
