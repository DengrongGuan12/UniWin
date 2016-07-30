$(document).ready(function(){
    highlightTab('nav-material','nav-material-query');

    $("#material-add-button").on("click", () => {
        location.href = "./materialadd";
    });
    $("#material-table").data("curPage", 1);
    // $(".paging-section").on("click", "li", queryPageData);

    loadMaterialList({
        page: 1,
        num: 10
    });
});

function loadMaterialList(params)
{
    $("#material-table").data("pageNum", params.num);
    var url = "./";
    getDataByAjax(url, params).then((data) => {
        console.log(data);
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
    var $tr = $(`
        <tr>
            <td>${item.number}</td>
            <td>${item.name}</td>
            <td>${item.type}</td>
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
