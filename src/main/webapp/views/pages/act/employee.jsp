<%@ page isELIgnored ="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>请假</title>
</head>
<body>
<h1>请假</h1>
<div>
    <p>正在审核中的的请假: ${processList.size()}</p>
    <c:forEach var="process" items="${processList}">
        <p>
            <span>process:</span>
            <span>${process.getId()}</span>
        </p>
    </c:forEach>
</div>
<div>
    <p>被驳回的请假: ${taskList.size()}</p>
    <c:forEach var="task" items="${taskList}">
        <form method="POST">

            <p>
                <span>${task.getId()}</span>
                <input type="hidden" value="${task.getId()}" name="tid">
                <input type="submit" value="重新申请" name="submit" />
            </p>

        </form>

    </c:forEach>

</div>
<form method="POST">
    <div>
        <input type="hidden" value="first" name="tid">
        <input name="submit" value="提交申请" type="submit"/>
    </div>
</form>
</body>
</html>
