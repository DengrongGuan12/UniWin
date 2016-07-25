<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/material.css" />
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
                <h1>物料管理
                    <small>物料查询</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-material-query">
                    <div class="material-query-header">
                        <div class="query-info">
                            <div class="bar">
                                <label>物料名称:</label>
                                <input type="text"/>
                                <label>物料编号:</label>
                                <input type="text"/>
                            </div>
                            <div class="bar">
                                <label>供应商:</label>
                                <input type="text"/>
                                <label>物料类型:</label>
                                <select>
                                    <option value ="type">Type</option>
                                </select>
                                <button type="button" class="btn-query">查询</button>
                            </div>
                        </div>
                        <div class="material-operation">
                            <button type="button" class="btn-add">新增</button>
                            <button type="button" class="btn-modify">修改</button>
                        </div>
                    </div>
                    <div class="material-list">
                        <div class="table-wrapper table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>物料编号</th>
                                        <th>物料名称</th>
                                        <th>类型</th>
                                        <th>供应商</th>
                                        <th>库存数量</th>
                                        <th>规格</th>
                                        <th>成分</th>
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

<script src="<%=request.getContextPath() %>/views/js/custom/material/material_query.js" charset="utf-8"></script>

</body>
</html>
