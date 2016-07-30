$(document).ready(function(){
    highlightTab('nav-design','nav-design-list');

    $("#design-table").data("curPage", 1);

    $(".paging-section").on("click", "li", queryPageData);

    loadDesignList({
        page: 1,
        num: 10,
        operation: "NORMAl"
    });

});

function queryPageData(e)
{
    var id = $(e.currentTarget).attr("id");
    var params = {};
    var curPage = $("#design-table").data("curPage");
    var queryDesignCode = $("#design-code").val();
    var sumPage = $("#design-table").data("sumPage");

    if (queryDesignCode !== "")
    {
        params.operation = "SEARCH";
        params.key = queryDesignCode;
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
    $("#design-table").data("curPage", curPage);
    loadDesignList(params);


}

function loadDesignList(params)
{
    var url = "./?";
    getDataByAjax(url, params).then((data) => {
        if (data.result === 1) {
            renderDesignTable(data.data);
        }
    });
}

function renderDesignTable(data)
{
    $("#design-table").data("sumPage", data.count);
    var items = data.list;
    var $designtable = $("#design-table");
    $designtable.find("tbody").children("tr").remove();
    $("#current").text($("#design-table").data("curPage") + " 页");
    $("#sum").text("总共 " + data.count + " 页");
    items.forEach(function(item)
    {
        $designtable.find("tbody").append(renderDesignItem(item));
    });
}

function renderDesignItem(item)
{
    var status = item.pass ? "已审核" : "未审核";
    var c = $("#design-table").data("curPage");
    var $tr = $(`
        <tr>
            <td>
                <input type="radio">
            </td>
            <td><img width=30px height=20px src=${item.imgUrl}></td>
            <td>${item.code}</td>
            <td>${c}</td>
            <td>${status}</td>
            <td>${item.description}</td>
        </tr>
    `);
    return $tr;
}
