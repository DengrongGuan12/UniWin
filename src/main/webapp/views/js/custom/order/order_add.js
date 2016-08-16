$(document).ready(function(){
    highlightTab('nav-order','nav-order-add');

    $("#order-table").data("curPage", 1);

    $(".paging-section").on("click", "li", queryPageData);

    $("#order-table > tbody").on("click", "tr", (e) => {
        var $tr = $(e.currentTarget);
        $tr.find("input").prop("checked", true);
        $("#detail-button").data("id", $tr.data("id"));
    });

    $("#query-button").on("click", (e) => {
        var keyword = $("#query-code").val().trim();
        if (keyword !== "")
        {
            loadorderList({
                page: 1,
                num: 10,
                operation: "SEARCH",
                key: keyword,
                field: "code"
            });
        }
        else
        {
            loadorderList({
                page: 1,
                num: 10,
                operation: "NORMAl"
            });
        }
    });

    $("#detail-button").on("click", (e) => {
        var id = $(e.currentTarget).data("id");
        if (id)
        {
            location.href = "./orderadddetail?" + "design_id=" + id;
        }
        else
        {
            alert("请选择");
        }
    });


    loadorderList({
        page: 1,
        num: 10,
        operation: "NORMAl"
    });

});

function queryPageData(e)
{
    var id = $(e.currentTarget).attr("id");
    var params = {};
    var curPage = $("#order-table").data("curPage");
    var queryorderCode = $("#query-code").val();
    var sumPage = $("#order-table").data("sumPage");

    if (queryorderCode !== "")
    {
        params.operation = "SEARCH";
        params.key = queryorderCode;
        params.field = "code";
    }
    else
    {
        params.operation = "NORMAl";
    }
    params.num = 10;

    switch (id) {
        case "first":
            if (curPage > 1)
            {
                curPage = 1;
            }
            break;
        case "previous":
            if (curPage > 1)
            {
                curPage = curPage - 1;
            }
            break;
        case "next":
            if (curPage < sumPage)
            {
                curPage = curPage + 1;
            }
            break;
        case "last":
            if (curPage < sumPage)
            {
                curPage = sumPage;
            }
            break;
        default:

    }

    params.page = curPage;
    $("#order-table").data("curPage", curPage);

    loadorderList(params);

}

function loadorderList(params)
{
    $("#order-table").data("pageNum", params.num);
    var url = "../styles";
    getDataByAjax(url, params).then((data) => {
        if (data.result === 1) {
            renderorderTable(data.data);
        }
    });
}

function renderorderTable(data)
{
    $("#order-table").data("sumPage", data.count);
    var items = data.list;
    var $ordertable = $("#order-table");
    $ordertable.find("tbody").children("tr").remove();
    $("#current").text($("#order-table").data("curPage") + " 页");
    $("#sum").text("总共 " + Math.ceil(data.count / $("#order-table").data("pageNum")) + " 页");
    items.forEach(function(item)
    {
        $ordertable.find("tbody").append(renderorderItem(item));
    });
}

function renderorderItem(item)
{
    var status = item.pass ? "已审核" : "未审核";
    var $tr = $(`
        <tr>
            <td>
                <input name="order-select" type="radio">
            </td>
            <td><img width=30px height=20px src=${item.imgUrl}></td>
            <td>${item.code}</td>
            <td>${item.name}</td>
            <td>${item.createTimeStr}</td>
            <td>${status}</td>
            <td>${item.description}</td>
        </tr>
    `);
    $tr.data("id", item.id);
    return $tr;
}
