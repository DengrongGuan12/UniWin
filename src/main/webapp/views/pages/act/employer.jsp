<%@ page isELIgnored ="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>employer's tasks</title>
</head>
<body>
<h1>employer's tasks</h1>
<div>
    <c:forEach var="task" items="${taskList}">
        <form method="POST">

            <p>
                <span>${task.getId()}</span>
                <input type="hidden" value="true" name="agree">
                <input type="hidden" value="${task.getId()}" name="tid">
                <input type="submit" value="同意" name="submit" />
            </p>

        </form>
        <form method="POST">

            <p>
                <span>${task.getId()}</span>
                <input type="hidden" value="false" name="agree">
                <input type="hidden" value="${task.getId()}" name="tid">
                <input type="submit" value="拒绝" name="submit" />
            </p>

        </form>

    </c:forEach>

</div>
</body>
</html>
