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
                <div class="main-system-department">
                    <div class="system-department-header">
                        <div class="department-query-info">
                            <div class="bar">
                                <h2>组织部门管理</h2>
                            </div>
                        </div>
                        <div class="department-operation">
                            <button type="button" class="btn-add" onclick="addDepartment()">新增</button>
                            <button type="button" class="btn-modify" onclick="modifyDepartment()">修改</button>
                        </div>
                    </div>
                    <div class="department-list">
                        <div class="department-table table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>名称</th>
                                        <th>组织编码</th>
                                        <th>英文名称</th>
                                        <th>简称</th>
                                        <th>电话</th>
                                        <th>简要描述</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><input type="radio"></td>
                                        <td>生产部</td>
                                        <td>10001</td>
                                        <td>production</td>
                                        <td>PD</td>
                                        <td>1312331231</td>
                                        <td>生产</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<jsp:include page="modal_department.jsp"></jsp:include>
<script src="<%=request.getContextPath() %>/views/js/custom/system/department_manage.js" charset="utf-8"></script>

</body>
</html>
