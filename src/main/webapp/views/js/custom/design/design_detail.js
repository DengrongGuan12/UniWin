$(document).ready(function(){
    highlightTab('nav-design','nav-design-list');

    var param = location.href.split("?")[1];
    var id = param.split("=")[1];
    $("#inquiry-add-button").data("styleId", id);
    getDataByAjax("./detail",{ id }).then(result => {
        if (result.result === 1) {
            console.log(result.data);
            renderDesignDetail(result.data);
        }
    });

    $("#inquiry-add-button").on("click", (e) => {
        var styleId = $("#inquiry-add-button").data("styleId");
        const url = "/uniwin/v1/inquiry?styleId=" + id;
        postDataByAjax(url).then((result) => {
            if (result.result === 1)
            {
                alert("创建成功");
                // 如何传ID
                window.location = "../inquiry/inquirymodify";
            }
            else
            {
                alert("创建失败");
            }
        });
    });
});

function renderDesignDetail(data)
{
    var $info = $(".design-info");
    $info.find("input[name=design-code]").val(data.code);
    $info.find("input[name=design-name]").val(data.name);
    $info.find("input[name=design-createTime]").val(data.createTimeStr);

    $info.find("input[name=design-status]").val(data.pass ? "已审核" : "未审核");
    $info.find("textarea").val(data.description);
    $(".design-img > img").attr("src",data.imgUrl);

    renderOrderList(data.orderList);
}

function renderOrderList(orderList)
{
    var $orderTable = $(".design-order-list tbody");
    orderList.forEach(order => {
        renderOrder(order, $orderTable);
    });
}

function renderOrder(order, $container)
{
    var $tr = $(`
        <tr>
            <td>${order.id}</td>
            <td>${order.orderNumber}</td>
            <td>${order.createTime}</td>
            <td>${order.state}</td>
        </tr>
    `);
    $container.append($tr);
}
