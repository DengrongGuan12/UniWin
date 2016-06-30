/**
 * Created by I330558 on 6/30/2016.
 */
$('#datetimepicker-start').datetimepicker({
    language : 'zh-CN',
    format : 'yyyy-mm-dd',
    weekStart : 1,
    todayBtn : 1,
    autoclose : 1,
    todayHighlight : 1,
    startView : 2,
    minView : 2,
    maxView : 4,
    forceParse : 0
});
$('#datetimepicker-end').datetimepicker({
    language : 'zh-CN',
    format : 'yyyy-mm-dd',
    weekStart : 1,
    todayBtn : 1,
    autoclose : 1,
    todayHighlight : 1,
    startView : 2,
    minView : 2,
    maxView : 4,
    forceParse : 0
});
$("#datetimepicker-start").on("changeDate", function (e) {
    $('#datetimepicker-end').datetimepicker("setStartDate", e.date)
});
$("#datetimepicker-end").on("changeDate", function (e) {
    $('#datetimepicker-start').datetimepicker("setEndDate", e.date);
});
