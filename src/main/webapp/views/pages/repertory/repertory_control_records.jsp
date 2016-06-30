<%--
  Created by IntelliJ IDEA.
  User: I330558
  Date: 6/30/2016
  Time: 1:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/views/css/custom/repertory-control-records.css" />
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
                <h1>库存管理
                    <small>库存</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-repertory-control-records-query">
                    <div class="repertory-control-records-query-header">
                        <div class="query-info">
                            <div class="bar">
                                <label>物料名称:</label>
                                <input type="text"/>
                                <label>物料编号:</label>
                                <input type="text"/>
                                <label>调度类型</label>
                                <select>
                                    <option value ="type">Type</option>
                                </select>
                            </div>
                            <div class="bar small">
                                <label>数量区间:</label>
                                <input type="text"/>
                                -
                                <input type="text"/>
                                <label>时间期间:</label>
                                <input  type="text" data-date-format="dd-mm-yyyy" id="datetimepicker-start">
                                -
                                <input  type="text" data-date-format="dd-mm-yyyy" id="datetimepicker-end">
                                <button type="button" class="btn-query">查询</button>
                            </div>
                        </div>
                        <div class="repertory-control-records-operation">
                            <button type="button" class="btn-add">新增</button>
                            <button type="button" class="btn-modify">修改</button>
                        </div>
                    </div>
                    <div class="repertory-control-records-list">
                        <div class="repertory-control-records-table table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th>物料编号</th>
                                    <th>物料名称</th>
                                    <th>调度类型</th>
                                    <th>仓储位置</th>
                                    <th>调度数量</th>
                                    <th>调度时间</th>
                                    <th>更多信息</th>
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
                                    <td>1</td>
                                    <td><a href="">更多信息</a></td>
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
                                    <td>1</td>
                                    <td><a href="">更多信息</a></td>
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
                </div>`
            </div>
        </main>
    </div>
</div>
<script src="<%=request.getContextPath() %>/views/js/custom/repertory/dateTimePicker.js"></script>
<script>
    window.onload = function () {
        highlightTab('nav-repertory','nav-repertory-control-records');
    };
</script>
</body>
</html>
