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
                    <small>供应商管理</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-material-supplier">
                    <div class="material-supplier-header">
                        <div class="supplier-query-info">
                            <div class="bar">
                                <label>供应商名称:</label>
                                <input type="text"/>
                                <button type="button" class="btn-query">查询</button>
                            </div>
                        </div>
                        <div class="supplier-operation">
                            <button type="button" class="btn-add" data-toggle="modal" data-target="#modal-supplier-add">新增</button>
                        </div>
                    </div>
                    <div class="material-list">
                        <div class="table-wrapper table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>供应商名称</th>
                                        <th>供应商编号</th>
                                        <th>供应商电话</th>
                                        <th>供应商手机</th>
                                        <th>供应商地址</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
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

<jsp:include page="modal_supplier_add.jsp"></jsp:include>
<script src="<%=request.getContextPath() %>/views/js/custom/material/material_supplier.js" charset="utf-8"></script>
</body>
</html>
