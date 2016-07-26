$(document).ready(function(){
    highlightTab('nav-design','nav-design-add');
    $(".input-file").on("change","input[type='file']",function(){
        var filePath=$(this).val();
        var arr=filePath.split('\\');
        var fileName=arr[arr.length-1];
        console.log(fileName);
        $(".showFileName").html(fileName);
    });

});
