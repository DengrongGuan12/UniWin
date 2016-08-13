$(document).ready(function(){
    highlightTab('nav-material','nav-material-query');

    $("#material-add-button").on("click", () => {
        location.href = "./materialadd";
    });
    $("#material-table").data("curPage", 1);
    // $(".paging-section").on("click", "li", queryPageData);

    $("#material-table > tbody").on("click", "tr", (e) => {
        var $tr = $(e.currentTarget);
        $tr.find("input").prop("checked", true);
        $("#material-modify-button").data("id", $tr.data("id"));
    });

    $("#material-modify-button").on("click", (e) => {
        var id = $(e.currentTarget).data("id");
        if (id)
        {
            location.href = "./materialmodify?" + "id=" + id;
        }
        else
        {
            alert("请选择");
        }

    });

    loadMaterialList({
        page: 1,
        num: 10,
        operation: "NORMAl"
    });
});

function loadMaterialList(params)
{
    $("#material-table").data("pageNum", params.num);
    var url = "./";
    getDataByAjax(url, params).then((data) => {
        if (data.result === 1) {
            renderMaterialTable(data.data);
        }
    });
}


function renderMaterialTable(data)
{
    $("#material-table").data("sumPage", data.count);
    var items = data.list;
    var $materialTable = $("#material-table");
    $materialTable.find("tbody").children("tr").remove();
    $("#current").text($("#material-table").data("curPage") + " 页");
    $("#sum").text("总共 " + Math.ceil(data.count / $("#material-table").data("pageNum")) + " 页");
    items.forEach(function(item)
    {
        $materialTable.find("tbody").append(renderMaterialItem(item));
    });
}

function renderMaterialItem(item)
{
    var type = (item.type === "MAIN") ? "面料" : "辅料" ;
    var $tr = $(`
        <tr>
            <td><input name="select" type="radio" /></td>
            <td>${item.number}</td>
            <td>${item.name}</td>
            <td>${type}</td>
            <td>${item.supplierId}</td>
            <td>${item.supplier}</td>
            <td>${item.inventoryAmount}</td>
            <td>${item.component}</td>
        </tr>
    `);
    if (item.id)
    {
        $tr.data("id", item.id);
    }
    return $tr;
}
