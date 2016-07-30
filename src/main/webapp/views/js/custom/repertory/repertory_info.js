init();
function init() {
    $("input").prop("disabled", true);
    $("select").prop("disabled", true);
    $(".main-header h1 small").text("库存信息");
    $(".tab-panel.repertory-info").css("display", "flex");
    $(".tab-panel.repertoryIn-list").css("display", "none");
    $(".tab-panel.repertoryOut-list").css("display", "none");
    const id = 1;
    updateMaterial(id);
    updateInTable(null);
    updateOutTable(null);
}

function updateMaterial(id)
{
    //获得数据
}

function renderMaterial()
{
    //渲染
}

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

window.onload = function () {
    highlightTab('nav-repertory','nav-repertory-records');
};

$(document).ready(() => {
$("#repertory-in").on("click", "li", _pagination_in_click);
$("#repertory-out").on("click", "li", _pagination_out_click);
});

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
