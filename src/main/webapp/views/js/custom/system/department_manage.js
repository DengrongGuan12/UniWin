$(document).ready(function(){
    highlightTab('nav-system','nav-system-department');
});

function addDepartment(){
    $("#modal-department .modal-title").html("新增部门");
    $("#modal-department").modal("show");
}

function modifyDepartment(){
    $("#modal-department .modal-title").html("修改部门");
    $("#modal-department").modal("show");
}
