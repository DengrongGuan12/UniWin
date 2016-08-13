
window.onload = function () {
    highlightTab('nav-inquiry','nav-inquiry-manage');
};

$(document).ready(() => {
    $(".inquiry-info").find("input").attr("disabled", true);
    $(".inquiry-info").find("textarea").attr("disabled", true);
    const id = window.location.href.split("?")[1].split("=")[1];
    updateInquiry(id);
    $(".inquiry-operation-btns > button").on("click", priceInputBtnChange);
    $("#commit-price").on("click", commitPriceChange);
});

function priceInputBtnChange(e)
{
    /*
    "id":询价单id,
    "createTime":创建时间,
    "technologyPrice":工艺部报价,
    "producePrice":生产部报价,
    "purchasePrice":采购部报价,
    "plateMakePrice":制版部报价,
    "techRemark":工艺部备注,
    "prodRemark":生产部备注,
    "purcRemark":采购部备注,
    "platRemark":制版部备注,
    "checkTime":审核时间,
    "state":状态
    */
    const $target = $(e.currentTarget);
    const data = $(".inquiry-price-list").data("data");
    let ouputData = { price: null, description: null, index: null};
    let offset = 42;
    switch ($target.attr("id"))
    {
        case "p-price":  ouputData.price = data.producePrice; ouputData.description = data.prodRemark; ouputData.index = 0; break;
        case "t-price": offset += 120; ouputData.price = data.technologyPrice; ouputData.description = data.techRemark; ouputData.index = 1; break;
        case "b-price": offset += 120 * 2; ouputData.price = data.purchasePrice; ouputData.description = data.purcRemark; ouputData.index = 2; break;
        case "c-price": offset += 120 * 3; ouputData.price = data.plateMakePrice; ouputData.description = data.platRemark; ouputData.index = 3; break;
    }
    $(".inquiry-wrapper").animate({left: offset});
    renderPriceInput(ouputData);

}

function updateInquiry(id)
{
    const styleurl = "/uniwin/v1/styles/detail?id=" + id;
    getDataByAjax(styleurl).then((result) => {
        if (result.result === 1)
        {
            renderStyle(result.data, id);
        }
    });

    const inquiryurl = "/uniwin/v1/inquiry/detail?styleId=" + id;
    getDataByAjax(inquiryurl).then((result) => {
        if (result.result === 1)
        {
            renderInquiry(result.data);
        }

    });
}

function renderPriceInput(data)
{
    if (data)
    {
        $(".inquiry-price-content").data("data", data);
        $("#department-price").val(data.price);
        $("#editor").html(data.description);
    }
}

function renderStyle(data, styleId)
{
    $("#style-name").val(data.name);
    $("#style-id").val(data.code);
    $("#style-description").text(data.description);
    $("#style-img").attr("src", data.imgUrl);
}

function renderInquiry(data)
{
    /*
    "id":询价单id,
    "createTime":创建时间,
    "technologyPrice":工艺部报价,
    "producePrice":生产部报价,
    "purchasePrice":采购部报价,
    "plateMakePrice":制版部报价,
    "techRemark":工艺部备注,
    "prodRemark":生产部备注,
    "purcRemark":采购部备注,
    "platRemark":制版部备注,
    "checkTime":审核时间,
    "state":状态
    */

    $(".inquiry-price-list").data("data", data);
    $(".inquiry-price-list > table > tbody").find(".price-value").eq(0).text(data.producePrice);
    $(".inquiry-price-list > table > tbody").find(".price-value").eq(1).text(data.technologyPrice);
    $(".inquiry-price-list > table > tbody").find(".price-value").eq(2).text(data.purchasePrice);
    $(".inquiry-price-list > table > tbody").find(".price-value").eq(3).text(data.plateMakePrice);
    $(".inquiry-price-list > table > tbody").find(".description").eq(0).text(data.prodRemark || "不存在备注");
    $(".inquiry-price-list > table > tbody").find(".description").eq(1).text(data.techRemark || "不存在备注");
    $(".inquiry-price-list > table > tbody").find(".description").eq(2).text(data.purcRemark || "不存在备注");
    $(".inquiry-price-list > table > tbody").find(".description").eq(3).text(data.platRemark || "不存在备注");
}

function commitPriceChange(e)
{
    const data = $(".inquiry-price-list").data("data");
    const newData = $(".inquiry-price-content").data("data");
    if (newData)
    {
        const price = $("#department-price").val();
        const description = $("#editor").html();
        console.log(newData);
        switch (newData.index)
        {
            case 0: data.producePrice = price; data.prodRemark = description; break;
            case 1: data.technologyPrice = price; data.techRemark = description; break;
            case 2: data.purchasePrice = price; data.purcRemark = description; break;
            case 3: data.plateMakePrice = price; data.platRemark = description; break;
        }

        putInquiry(data);
    }
    else
    {
        alert("请选中相应部门");
    }

}

function putInquiry(data)
{
    /*
    id: (integer)
询价单id

Example:

1
technologyPrice: (string)
工艺部报价

producePrice: (string)
生产部报价

purchasePrice: (string)
采购部报价

plateMakePrice: (string)
制版部报价

techRemark: (string)
工艺部备注

prodRemark: (string)
生产部备注

purcRemark: (string)
采购部备注

platRemark: (string)
制版部备注

state: (string)
    */


    const inquiryurl = "/uniwin/v1/inquiry"

    putDataByAjax(inquiryurl, JSON.stringify(data)).then( (result) => {
        if　(result.result === 1)
        {
            $(".inquiry-price-list").data("data", data);
            alert("提交成功");
        }
        else
        {
            console.log(data);
            console.log(result);
            alert("服务器拒绝请求");
        }
    });
}
