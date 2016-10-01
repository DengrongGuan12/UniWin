window.onload = function () {
    highlightTab('nav-production','nav-production-order');
};

$(document).ready(() => {
    $('#datetimepicker').datetimepicker({
        language : 'zh-CN',
        format : 'yyyy-mm-dd',
        weekStart : 1,
        todayBtn : 1,
        autoclose : 1,
        todayHighlight : 1,
        startView : 2,
        minView : 2,
        maxView : 4,
        forceParse : 0
    });
});


// 分页监听click
function _pagination_click(e)
{
    const id = $(e.currentTarget).attr("id");
    const sum = $(".production-order-table > table").data("sumPage");
    let page = $(".production-order-table > table").data("curPage");
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
        updateTable({page, num: numOfPage});
    }
}

// 更新分页信息
function updatePagination()
{
    const current = $(".production-order-table > table").data("curPage");
    const sum = $(".production-order-table > table").data("sumPage");

    $("#current").text(current + "页");
    $("#sum > span").text("总共" + sum + "页");
}
