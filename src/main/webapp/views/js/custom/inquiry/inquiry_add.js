$("#inquiryModal").ready(() => {
    $("#checkId").on("click", _checkStyleId);
    $("#inquiry-add").attr("disabled", "disabled");
    $("#inquiry-add").on("click", _inquiry_add);
});

function _inquiry_add()
{
    if ($("#inquiry-add").data("styleId"))
    {
        const id = $("#inquiry-add").data("styleId");
        const url = "/uniwin//v1/inquiry?styleId=" + id;
        postDataByAjax(url).then((result) => {
            if (result.result === 1)
            {
                alert("创建成功");
                // 如何传ID
                window.location = "./inquirymodify";
            }
            else
            {
                alert("创建失败");
            }
        });
    }
}

function _checkStyleId(e)
{
    const id = $("#style-id").val().trim();
    if (id !== null)
    {
        updateStyle(id);
    }
}


function getInquiryById(id)
{
    const url = "/uniwin//v1/inquiry?styleId=" + id;

    getDataByAjax(url).then((result) => {

    });
}

function updateInquiry(data)
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
    "checkTime":审核时间
    */
}

function updateStyle(id)
{
    const url = "/uniwin/v1/styles/detail?id=" + id;
    alert(url);
    getDataByAjax(url).then((result) => {
        if (result.result === 1)
        {
            renderStyle(result.data, id);
        }
        else
        {
            $("style-description").text("该款式并不存在！");
        }
    });
}

function renderStyle(data, id)
{
    /*
    "code":款号,
    "imgUrl": 图片地址,
    "description": 描述,
    */
    if (data)
    {
        $(".style-image").attr("src", data.imgUrl);
        $(".style-description").text(data.description);
        $("#inquiry-add").attr("disabled", false);
        $("#inquiry-add").data("styleId", id);
    }
}
