var repertoryRootURL = "/uniwin/v1/stockDispatch";
var numOfPage = 4;
window.onload = function () {
    highlightTab('nav-repertory','nav-repertory-control-records');
};

$(document).ready(function() {
    updateTable({page: 1, num: 4});
    $(".paging-section").on("click", "li", _pagination_click);
    $(".btn-query").on("click", _search);
    $(".repertory-control-records-table > table").on("click", "tr", _toggleChecked);
});

function _toggleChecked(e)
{
    $(e.currentTarget).find("input").attr("checked", !$(e.currentTarget).find("input").attr("checked"));
}

function _search(e)
{
    // 获取search内容
    // ajax请求获取

}

// 分页监听click
function _pagination_click(e)
{
    const id = $(e.currentTarget).attr("id");
    const sum = $(".repertory-control-records-table > table").data("sumPage");
    let page = $(".repertory-control-records-table > table").data("curPage");
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

// 更新table
function updateTable(options)
{
    if (options && options.page && options.num)
    {
        var url = repertoryRootURL + "?page=" + options.page + "&num=" + options.num;
        var result = getDataByAjax(url).then((result) => {
            if (result.result === 1)
            {
                $(".repertory-control-records-table > table").data("curPage", options.page);
                $(".repertory-control-records-table > table").data("sumPage", Math.ceil(result.data.count / options.num));
                updatePagination();
                renderTable(result.data);
            }
        }, (reason) => {
            console.log(reason);
        });

    }
}
// 更新分页信息
function updatePagination()
{
    const current = $(".repertory-control-records-table > table").data("curPage");
    const sum = $(".repertory-control-records-table > table").data("sumPage");

    $("#current").text(current + "页");
    $("#sum > span").text("总共" + sum + "页");
}
// 渲染table
function renderTable(data)
{
    /*
    table tr
    <th></th>
    <th>物料编号</th>
    <th>物料名称</th>
    <th>调度类型</th>
    <th>仓储位置</th>
    <th>负责人</th>
    <th>调度数量</th>
    <th>调度时间</th>


    table绑定数据和产生ID
    "materialName":物料名称,
      "type":类型(出库|入库),
      "quantity":数量,
      "time":时间,
      "userName":用户名
    */
    $(".repertory-control-records-list").data("data", data);
    const $container = $(".repertory-control-records-table > table");
    $container.children("tr").remove();
    if (data && data.stockDispatchList.length > 0)
    {
        let index = 0;
        while(index < data.stockDispatchList.length)
        {
            const item = data.stockDispatchList[index];
            const $item = $(`<tr id="index-${index}">
            <td>
            <input type="radio">
            </td>
            <td>1</td>
            <td>${item.materialName}</td>
            <td>${item.type}</td>
            <td>1</td>
            <td>${item.userName}</td>
            <td>${item.quantity}</td>
            <td>${item.time}</td>
            </tr>`);
            $container.append($item);
            index++;
        }
    }
}
