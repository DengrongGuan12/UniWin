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
                    <small>用户管理</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-system-user">
                    <div class="system-user-header">
                        <div class="user-query-info">
                            <div class="bar">
                                <label>账号:</label>
                                <input type="text"/>
                                <label>姓名:</label>
                                <input type="text"/>
                                <button type="button" class="btn-query">查询</button>
                            </div>
                        </div>
                        <div class="user-operation">
                            <button type="button" class="btn-add" onclick="addUser()">新增</button>
                            <button type="button" class="btn-modify" onclick="modifyUser()">修改</button>
                            <button type="button" class="btn-delete">删除</button>
                        </div>
                    </div>
                    <div class="user-list">
                        <div class="table-wrapper table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>账号</th>
                                        <th>姓名</th>
                                        <th>手机号码</th>
                                        <th>E-mail</th>
                                        <th>微信号</th>
                                        <th>公司名称</th>
                                        <th>部门名称</th>
                                        <th>地址</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><input type="radio"></td>
                                        <td>admin</td>
                                        <td>管理员</td>
                                        <td>11111111</td>
                                        <td>11111</td>
                                        <td>weixin111</td>
                                        <td>哈美</td>
                                        <td>生产部</td>
                                        <td>江苏南通</td>
                                    </tr>
                                </tbody>
                            </table>
                            <nav>
                              <ul class="pagination">
                                <li>
                                  <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                  </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                  <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                  </a>
                                </li>
                              </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<jsp:include page="modal_user.jsp"></jsp:include>
<script src="<%=request.getContextPath() %>/views/js/custom/system/user_manage.js" charset="utf-8"></script>
</body>
</html>
