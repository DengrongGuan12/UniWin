$(document).ready(function(){
    highlightTab('nav-system','nav-system-user');
});

function addUser(){
    $("#modal-user .modal-title").html("新增用户");
    $("#modal-user").modal("show");
}

function modifyUser(){
    $("#modal-user .modal-title").html("修改用户");
    $("#modal-user").modal("show");
}
