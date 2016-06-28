<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/views/css/custom/customer.css" />
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
                <h1>客户管理
                    <small>客户管理</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-customer-query">
                    <div class="customer-query-header">
                        <div class="query-info">
                            <div class="bar">
                                <label>主联系人:</label>
                                <input type="text"/>
                                <label>状态</label>
                                <select>
                                    <option value ="type">Type</option>
                                </select>
                            </div>
                            <div class="bar">
                                <label>品牌:</label>
                                <input type="text"/>
                                <label>类型:</label>
                                <select>
                                    <option value ="type">Type</option>
                                </select>
                                <button type="button" class="btn-query">查询</button>
                            </div>
                        </div>
                        <div class="customer-operation">
                            <button type="button" class="btn-add" data-toggle="modal"
                                    data-target="#myModal">新增</button>
                            <button type="button" class="btn-modify">修改</button>
                        </div>
                    </div>
                    <div class="customer-list">
                        <div class="customer-table table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th>品牌名</th>
                                    <th>类型</th>
                                    <th>主联系人</th>
                                    <th>电话</th>
                                    <th>邮箱</th>
                                    <th>状态</th>
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
<jsp:include page="./modal-frame.jsp"></jsp:include>
<script>
    window.onload = function () {
        highlightTab('nav-customer','nav-customer-manage');
    };
</script>
</body>
</html>
