$(document).ready(function(){
    highlightTab('nav-material','nav-material-supplier');

    $("#supplier-add-button").on("click", addSupplier);
    $("#supplier-table").data("curPage", 1);
    $(".paging-section").on("click", "li", queryPageData);

    $("#query-button").on("click", (e) => {
        var keyword = $("input[name=query-name]").val().trim();
        if (keyword !== "")
        {
            loadSupplierList({
                page: 1,
                num: 10,
                operation: "SEARCH",
                key: keyword,
                field: "name"
            });
        }
        else
        {
            loadSupplierList({
                page: 1,
                num: 10,
                operation: "NORMAl"
            });
        }
    });

    loadSupplierList({
        page: 1,
        num: 10,
        operation: "NORMAl"
    });

});


function queryPageData(e)
{
    var id = $(e.currentTarget).attr("id");
    var params = {};
    var curPage = $("#supplier-table").data("curPage");
    var querySupplierName = $("input[type=query-name]").val();
    var sumPage = $("#supplier-table").data("sumPage");

    if (querySupplierName !== "")
    {
        params.operation = "SEARCH";
        params.key = querySupplierName;
        params.field = "name";
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
    $("#supplier-table").data("curPage", curPage);

    loadSupplierList(params);

}

function loadSupplierList(params)
{
    $("#supplier-table").data("pageNum", params.num);
    var url = "../supplier?";
    getDataByAjax(url, params).then((data) => {
        if (data.result === 1) {
            renderSupplierTable(data.data);
        }
    });
}

function renderSupplierTable(data)
{
    $("#supplier-table").data("sumPage", data.count);
    var items = data.list;
    var $supplierTable = $("#supplier-table");
    $supplierTable.find("tbody").children("tr").remove();
    $("#current").text($("#supplier-table").data("curPage") + " 页");
    $("#sum").text("总共 " + Math.ceil(data.count / $("#supplier-table").data("pageNum")) + " 页");
    items.forEach(function(item)
    {
        $supplierTable.find("tbody").append(renderSupplierItem(item));
    });
}

function renderSupplierItem(item)
{
    var $tr = $(`
        <tr>
            <td>${item.name}</td>
            <td>${item.number}</td>
            <td>${item.telNo}</td>
            <td>${item.mbNo}</td>
            <td>${item.address}</td>
            <td>${item.level}</td>
        </tr>
    `);
    $tr.data("id", item.id);
    return $tr;
}



function addSupplier()
{
    var $modal = $("#modal-supplier-add");
    var number = $modal.find("input[name=supplier-number]").val();
    var name = $modal.find("input[name=supplier-name]").val();
    var telNo = $modal.find("input[name=supplier-telNo]").val();
    var mbNo = $modal.find("input[name=supplier-mbNo]").val();
    var address = $modal.find("input[name=supplier-address]").val();
    var level = $modal.find("select[name=supplier-level]").val();
    postDataByAjax("../supplier", {
        number,
        name,
        telNo,
        mbNo,
        address,
        level
    }).then((result) => {
        if (result.result === 1)
        {
            alert("供应商添加成功");
            $modal.find("input").val("");
            $modal.modal("hide");
        }
        else
        {
            alert("供应商添加失败");
        }
    });
}
