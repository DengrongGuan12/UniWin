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
                            <button id="material-add-button" type="button" class="btn-add">新增</button>
                            <button type="button" class="btn-modify">修改</button>
                        </div>
                    </div>
                    <div class="material-list">
                        <div class="table-wrapper table-responsive">
                            <table id="material-table" class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>物料编号</th>
                                        <th>物料名称</th>
                                        <th>类型</th>
                                        <th>供应商ID</th>
                                        <th>供应商名称</th>
                                        <th>库存数量</th>
                                        <th>成分</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                            <nav>
                                <ul class="paging-section">
                                    <li id="first"><span class="icon iconfont icon-first"></span></li>
                                    <li id="previous"><span class="icon iconfont icon-previous"></span></li>
                                    <li id="current">1页</li>
                                    <li id="next"><span class="icon iconfont icon-next"></span></li>
                                    <li id="last"><span class="icon iconfont icon-last"></span></li>
                                    <li id="sum"><span>总共0页</span></li>
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
