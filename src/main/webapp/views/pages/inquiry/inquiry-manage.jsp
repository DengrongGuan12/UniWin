<%--
  Created by IntelliJ IDEA.
  User: I330558
  Date: 7/25/2016
  Time: 10:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/views/css/custom/inquiry.css" />
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
                <h1>询价单
                    <small>询价单管理</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-inquiry-query">
                    <div class="inquiry-query-header">
                        <div class="query-info">
                            <div class="bar">
                                <label>款号:</label>
                                <input type="text"/>
                                <label>部门:</label>
                                <input type="text" />
                                <label>询价状态</label>
                                <select>
                                    <option value ="type">Type</option>
                                </select>
                                <button type="button" class="btn-query">查询</button>
                            </div>
                        </div>
                        <jsp:include page="modal-frame-new-inquiry.jsp"></jsp:include>
                        <div class="inquiry-operation">
                            <button type="button" class="btn-add" data-toggle="modal"
                                    data-target="#inquiryModal">新增</button>
                        </div>
                    </div>
                    <div class="inquiry-list">
                        <div class="inquiry-table table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th>图片</th>
                                    <th>询价单编号</th>
                                    <th>部门</th>
                                    <th>部门报价</th>
                                    <th>进度</th>
                                    <th>详细信息</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <input type="radio">
                                    </td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td><a href="<%=request.getContextPath() %>/main/inquirymodify">修改</a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="radio">
                                    </td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td><a href="<%=request.getContextPath() %>/main/inquirymodify">修改</a></td>
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
<script>
    window.onload = function () {
        highlightTab('nav-inquiry','nav-inquiry-manage');
    };
</script>
</body>
</html>
