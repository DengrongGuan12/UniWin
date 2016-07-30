$(document).ready(function(){
    highlightTab('nav-design','nav-design-list');

    var param = location.href.split("?")[1];
    var id = param.split("=")[1];
    console.log(id);
    getDataByAjax("./detail",{ id }).then(result => {
        console.log(result);
    });

});
