$(document).ready(function(){
    highlightTab('nav-order','nav-order-add');

    var param = location.href.split("?")[1];
    var design_id = param.split("=")[1];

    $("#add-production").on("click", addProduction);

    $("#production-table > tbody").on("click", "button[name=remove]", (e) => {
        var cur = $(e.currentTarget);
        cur.parent().parent().remove();
    });

});

function addProduction(e)
{
    var $tbody = $("#production-table > tbody");
    var color = $("input[name=color]").val();
    var xs = parseInt($("input[name=xs]").val());
    var s = parseInt($("input[name=s]").val());
    var m = parseInt($("input[name=m]").val());
    var l = parseInt($("input[name=l]").val());
    var xl = parseInt($("input[name=xl]").val());
    var xxl = parseInt($("input[name=xxl]").val());
    var sum = xs + s + m + l + xl + xxl;

    var $tr = $(`
        <tr>
            <td>${color}</td>
            <td>${xs}</td>
            <td>${s}</td>
            <td>${m}</td>
            <td>${l}</td>
            <td>${xl}</td>
            <td>${xxl}</td>
            <td>${sum}</td>
            <td>
                <button class="btn-success" name="remove">删除</button>
            </td>
        </tr>
    `);
    $tbody.prepend($tr);

    $("input[name=color]").val("");
    $("input[name=xs]").val("");
    $("input[name=s]").val("");
    $("input[name=m]").val("");
    $("input[name=l]").val("");
    $("input[name=xl]").val("");
    $("input[name=xxl]").val("");

}
