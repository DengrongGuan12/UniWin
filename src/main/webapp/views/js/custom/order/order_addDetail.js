$(document).ready(function(){
    highlightTab('nav-order','nav-order-add');

    var param = location.href.split("?")[1];
    var design_id = param.split("=")[1];
    console.log(design_id);
});
