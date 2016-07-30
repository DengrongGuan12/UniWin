
var repertoryRootURL = "/uniwin/v1/materials";
var numOfPage = 4;

window.onload = function () {
    highlightTab('nav-repertory','nav-repertory-records');
};

$(document).ready(function() {
    updateTable({page: 1, num: 4});
    $(".paging-section").on("click", "li", _pagination_click);
    $(".btn-query").on("click", _search);
    $(".repertory-records-table > table").on("click", "tr", _toggleChecked);
    $(".btn-add").on("click", () => {
        window.location.href = "./repertoryin";
    });
    $(".btn-modify").on("click", () => {
        window.location.href = "./repertoryout";
    });
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
    const sum = $(".repertory-records-table > table").data("sumPage");
    let page = $(".repertory-records-table > table").data("curPage");
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
                console.log(result.data);
                $(".repertory-records-table > table").data("curPage", options.page);
                $(".repertory-records-table > table").data("sumPage", Math.ceil(result.data.count / options.num));
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
    const current = $(".repertory-records-table > table").data("curPage");
    const sum = $(".repertory-records-table > table").data("sumPage");

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
    <th>类型</th>
    <th>供应商名称</th>
    <th>供应商编号</th>
    <th>仓储数量</th>
    <th>仓储位置</th>
    <th>更多信息</th>


    table绑定数据和产生ID
    "id":物料id(更新时要用到),
          "number":物料编号,
          "name": 物料名称,
          "type": 描述,
          "supplierId": 供应商id,
          "inventoryAmount": 库存,
          "supplier":供应商名称,
          "component": 成分,
    */
    $(".repertory-control-records-list").data("data", data);
    const $container = $(".repertory-records-table > table");
    $container.children("tr").remove();
    if (data && data.list.length > 0)
    {
        let index = 0;
        while(index < data.list.length)
        {
            const item = data.list[index];
            const $item = $(`<tr id="index-${index}">
            <td>
            <input type="radio">
            </td>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>${item.type}</td>
            <td>${item.supplier}</td>
            <td>${item.supplierId}</td>
            <td>${item.inventoryAmount}</td>
            <td>1</td>
            <td><a href="./repertoryinfo">更多信息</a></td>
            </tr>`);
            $item.data("id", item.id);
            $container.append($item);
            index++;
        }
    }
}
