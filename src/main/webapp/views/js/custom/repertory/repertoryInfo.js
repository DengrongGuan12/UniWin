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