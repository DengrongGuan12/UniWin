<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
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
                <h1>出库管理
                    <small>出库</small>
                </h1>
            </div>
            <div class="main-content">
            </div>
        </main>
    </div>
</div>

<script>
    window.onload = function () {
        highlightTab('nav-outRepertory','nav-outRepertory-add');
    };
</script>
</body>
</html>
