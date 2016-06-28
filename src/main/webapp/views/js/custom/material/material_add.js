$(document).ready(function(){
    highlightTab('nav-material','nav-material-add');
    createDateTimePicker();
});

function createDateTimePicker(){
    $('.date-picker').datetimepicker({
        language : 'zh-CN',
        format : 'yyyy-mm-dd',
        weekStart : 1,
        todayBtn : 1,
        autoclose : 1,
        todayHighlight : 1,
        startView : 2,
        minView : 2,
        maxView : 4,
        forceParse : 0,
    });
}
