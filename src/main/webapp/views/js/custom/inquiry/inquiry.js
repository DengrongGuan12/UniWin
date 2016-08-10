
var repertoryRootURL = "/uniwin/v1/inquiry";
var numOfPage = 4;

window.onload = function () {
    highlightTab('nav-inquiry','nav-inquiry-manage');
};

$(document).ready(function() {
    updateTable({page: 1, num: 4});
    $(".paging-section").on("click", "li", _pagination_click);
    $(".btn-query").on("click", _search);
    $(".inquiry-table > table").on("click", "tr", _toggleChecked);
});

function _toggleChecked(e)
{
    $("input[type='radio']").prop("checked", false);
    $(e.currentTarget).find("input").prop("checked", "checked");
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
    const sum = $(".inquiry-table > table").data("sumPage");
    let page = $(".inquiry-table > table").data("curPage");
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
                $(".inquiry-table > table").data("curPage", options.page);
                $(".inquiry-table > table").data("sumPage", Math.ceil(result.data.count / options.num));
                updatePagination();
                renderTable(result.data);
            }

        });

    }
}
// 更新分页信息
function updatePagination()
{
    const current = $(".inquiry-table > table").data("curPage");
    const sum = $(".inquiry-table > table").data("sumPage");

    $("#current").text(current + "页");
    $("#sum > span").text("总共" + sum + "页");
}
// 渲染table
function renderTable(data)
{
    /*
    table tr
    <th></th>
    <th>图片</th>
    <th>款式ID</th>
    <th>工艺部门报价</th>
    <th>生产部门报价</th>
    <th>采购部门报价</th>
    <th>制版部门报价</th>
    <th>进度</th>
    <th>更多操作</th>

    table绑定数据和产生ID
    "id":询价单id,
    "styleId":款式id,
    "createTime":创建时间,
    "technologyPrice":工艺部报价,
    "producePrice":生产部报价,
    "purchasePrice":采购部报价,
    "plateMakePrice":制版部报价,
    "checkTime":审核时间,
    "state":状态
    */
    $(".repertory-control-records-list").data("data", data);
    const $container = $(".inquiry-table > table");
    $container.children("tbody").find("tr").remove();
    if (data && data.list.length > 0)
    {
        let index = 0;
        while(index < data.list.length)
        {
            const item = data.list[index];
            console.log(item.imgUrl);
            console.log(item.styleId);
            console.log(item);
            const $item = $(`<tr id="index-${index}">
            <td>
            <input type="radio">
            </td>
            <td><img class="short-img" /></td>
            <td>${item.styleId}</td>
            <td>${item.technologyPrice}</td>
            <td>${item.producePrice}</td>
            <td>${item.purchasePrice}</td>
            <td>${item.plateMakePrice}</td>
            <td>${item.checkTime ? "passed" : "pending"}</td>
            <td><a href="./inquirymodify?styleId=${item.styleId}">修改</a></td>
            </tr>`);
            const newurl = "/uniwin/v1/styles/detail?id=" + item.styleId;
            getDataByAjax(newurl).then((result) => {
                if (result.result === 1)
                {
                    $item.find("img").attr("src", result.data.imgUrl);
                }
            });

            $item.data("id", item.styleId);
            $container.append($item);
            index++;
        }
    }
}
