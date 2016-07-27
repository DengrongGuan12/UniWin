var rootApi = "./";

$(document).ready(function(){
    highlightTab('nav-design','nav-design-list');

    LoadDesignList({
        page: 1,
        num: 10,
        operation: "NORMAl"
    });

});

function LoadDesignList(params)
{
    var url = rootApi + "?";
    if (params.operation === "NORMAl")
    {
        url = url + `?page=${params.page}&num=${params.num}&operation=${params.operation}`;
    }
    else
    {
        url = url + `?page=${params.page}&num=${params.num}&operation=${params.operation}&key=${params.key}&field=${params.field}`;
    }

    $.ajax({
        url,
        method: "get",
        success: function(data)
        {
            if (data.result === 1) {
                renderDesignTable(data.data);
            }
        },
        error: function(data)
        {
            console.log(data);
        }
    });
}

function renderDesignTable(items)
{
    var $designtable = $("#design-table");
    $designtable.find("tbody").children("tr").remove();
    items.forEach(function(item)
    {
        $designtable.find("tbody").append(renderDesignItem(item));
    });
}

function renderDesignItem(item)
{
    var status = item.pass ? "已审核" : "未审核";
    var $tr = $(`
        <tr>
            <td>
                <input type="radio">
            </td>
            <td><img width=30px height=20px src=${item.imgUrl}></td>
            <td>${item.code}</td>
            <td>${item.code}</td>
            <td>${status}</td>
            <td>${item.description}</td>
        </tr>
    `);
    return $tr;
}
