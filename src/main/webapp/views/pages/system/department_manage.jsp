<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/system.css" />
</head>
<body>
<div class="app">
    <header>
        <jsp:include page="../logo-header.jsp"></jsp:include>
    </header>
    <div class="app-container">
        <nav>
            <div class="nav-container">
                <jsp:include page="../navigation.jsp"></jsp:include>
            </div>
            <div class="nav-end">
            </div>
        </nav>
        <main>
            <div class="main-header">
                <h1>系统管理
                    <small>组织管理</small>
                </h1>
            </div>
            <div class="main-content">
            </div>
        </main>
    </div>
</div>

<script src="<%=request.getContextPath() %>/views/js/custom/system/department_manage.js" charset="utf-8"></script>

</body>
</html>
