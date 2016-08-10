
window.onload = function () {
    highlightTab('nav-inquiry','nav-inquiry-manage');
};

$(document).ready(() => {
    const id = window.location.href.split("?")[1].split("=")[1];
    updateInquiry(id);
    $("#remove-btn").on("click", () => {
        $(".inquiry-price").find("input").val("");
        $(".inquiry-price").find("textarea").val("");
    });

    $("#commit-btn").on("click", () => {
        putInquiry();
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

    const inquiryurl = "/uniwin/v1/inquiry/detail?styleId=" + id;
    getDataByAjax(inquiryurl).then((result) => {
        if (result.result === 1)
        {
            renderInquiry(result.data);
        }
        console.log(result, "inquiry");
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
    console.log(data, "inter");
    $(".inquiry-price").data("inquiry-id", data.id);
    $("#inquiry-price-p").val(data.producePrice);
    $("#inquiry-description-p").val(data.prodRemark);
    $("#inquiry-price-t").val(data.technologyPrice);
    $("#inquiry-description-t").val(data.technologyPrice);
    $("#inquiry-price-m").val(data.plateMakePrice);
    $("#inquiry-description-m").val(data.platRemark);
    $("#inquiry-price-b").val(data.purchasePrice);
    $("#inquiry-description-b").val(data.purcRemark);
}

function putInquiry()
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

    const inquiryId = $(".inquiry-price").data("inquiry-id");

    const inquiryurl = "/uniwin/v1/inquiry?id=" + inquiryId +
        "&producePrice=" +
        $("#inquiry-price-p").val() + "&prodRemark=" +
        $("#inquiry-description-p").val() + "&technologyPrice=" +
        $("#inquiry-price-t").val() + "&techRemark="
        $("#inquiry-description-t").val() + "&plateMakePrice=" +
        $("#inquiry-price-m").val() + "&platRemark="
        $("#inquiry-description-m").val() + "&purchasePrice=" +
        $("#inquiry-price-b").val() + "&purcRemark=" +
        $("#inquiry-description-b").val();

    putDataByAjax(inquiryurl).then( (result) => {
        if　(result.result === 1)
        {
            alert("提交成功");
            const id = window.location.href.split("?")[1].split("=")[1];
            updateInquiry(id);
            console.log("message");
        }
        else
        {
            alert("服务器拒绝请求");
        }
    });
}
