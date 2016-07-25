<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/design.css" />
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
                <h1>款式管理
                    <small>款式列表</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-design-list">
                    <div class="design-query-header">
                        <div class="query-info">
                            <div class="bar">
                                <label>款号:</label>
                                <input type="text"/>
                                <button type="button" class="btn-query">查询</button>
                            </div>
                        </div>
                        <div class="design-operation">
                            <button type="button" class="btn-detail">详情</button>
                        </div>
                    </div>
                    <div class="design-list">
                        <div class="table-wrapper table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>图片</th>
                                        <th>款号</th>
                                        <th>款式名称</th>
                                        <th>状态</th>
                                        <th>描述</th>
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
</body>
</html>
