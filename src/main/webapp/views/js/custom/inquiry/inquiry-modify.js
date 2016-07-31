
window.onload = function () {
    highlightTab('nav-inquiry','nav-inquiry-manage');
};

$(document).ready(() => {
    const id = window.location.href.split("?")[1].split("=")[1];
    updateInquiry(id);
    $("#remove-btn").on("click", () => {
        $(".inquiry-price").find("input").val("");
        $(".inquiry-price").find("textarea").text("");
    });

    $("#commit-btn").on("click", () => {

    });
});

function updateInquiry(id)
{
    const styleurl = "/uniwin/v1/styles/detail?id=" + id;
    getDataByAjax(styleurl).then((result) => {
        if (result.result === 1)
        {
            renderStyle(result.data, id);
        }
    });

    const inquiryurl = "/uniwin/v1/inquiry/detail?id=" + id;
    getDataByAjax(inquiryurl).then((result) => {
        if (result.result === 1)
        {
            renderInquiry(result.data, id);
        }
    });
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
    console.log(data);
    $(".inquiry-price").data("inquiry-id", data.id);
    $("#inquriy-price-p").val(data.producePrice);
    $("#inquriy-description-p").val(data.prodRemark);
    $("#inquriy-price-t").val(data.technologyPrice);
    $("#inquriy-description-t").val(data.technologyPrice);
    $("#inquriy-price-m").val(data.plateMakePrice);
    $("#inquriy-description-m").val(data.platRemark);
    $("#inquriy-price-b").val(data.purchasePrice);
    $("#inquriy-description-b").val(data.purcRemark);
}
