window.onload = function () {
    highlightTab('nav-repertory','nav-repertory-records');
};


init();
function init() {
    $("input").prop("disabled", true);
    $("sele")
    $(".main-header h1 small").text("库存信息");
    $(".tab-panel.repertory-info").css("display", "flex");
    $(".tab-panel.repertoryIn-list").css("display", "none");
    $(".tab-panel.repertoryOut-list").css("display", "none");
}
$(".tab-nav").each(function(index){
    $(this).bind("click", function() {
        $(".main-content > .tab-navs .tab-nav").removeClass("active");
        $(this).addClass("active");
    });

    if(index === 0 && $(this).text() === "库存信息"){
        $(this).bind("click", function() {
            $(".main-header h1 small").text("库存信息");
            $(".tab-panel.repertory-info").css("display", "flex");
            $(".tab-panel.repertoryIn-list").css("display", "none");
            $(".tab-panel.repertoryOut-list").css("display", "none");
        });
    }
    if(index === 1 && $(this).text() === "入库记录"){
        $(this).bind("click", function() {
            $(".main-header h1 small").text("入库记录");
            $(".tab-panel.repertory-info").css("display", "none");
            $(".tab-panel.repertoryIn-list").css("display", "block");
            $(".tab-panel.repertoryOut-list").css("display", "none");
        });
    }
    if(index === 2 && $(this).text() === "出库记录"){
        $(this).bind("click", function() {
            $(".main-header h1 small").text("出库记录");
            $(".tab-panel.repertory-info").css("display", "none");
            $(".tab-panel.repertoryIn-list").css("display", "none");
            $(".tab-panel.repertoryOut-list").css("display", "block");
        });
    }
});

$(document).ready(() => {

});

function updateTable(options)
{

}

function renderTable(data)
{
    /*
    <th></th>
    <th>出库时间</th>
    <th>物料编号</th>
    <th>物料名称</th>
    <th>物料类型</th>
    <th>出库数量</th>
    <th>单价</th>
    <th>负责人</th>
    <th>供应商编号</th>
    <th>供应商名称</th>
    <th>供应商地址</th>
    */


}
