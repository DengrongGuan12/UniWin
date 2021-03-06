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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/views/css/custom/repertory/repertory-records.css" />
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
                <div class="main-repertory-records-query">
                    <div class="repertory-records-query-header">
                        <div class="query-info">
                            <div class="bar">
                                <label>物料名称:</label>
                                <input type="text"/>
                                <label>物料编号:</label>
                                <input type="text"/>
                                <label>类型</label>
                                <select>
                                    <option value ="type">Type</option>
                                </select>
                            </div>
                            <div class="bar">
                                <label>供应商名称:</label>
                                <input type="text"/>
                                <label>供应商编号:</label>
                                <input type="text">
                                <label>库存数量:</label>
                                <input type="text"/>
                                <button type="button" class="btn-query">查询</button>
                            </div>
                        </div>
                        <div class="repertory-records-operation">
                            <button type="button" class="btn-add">出库</button>
                            <button type="button" class="btn-modify">入库</button>
                        </div>
                    </div>
                    <div class="repertory-records-list">
                        <div class="repertory-records-table table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th>物料编号</th>
                                    <th>物料名称</th>
                                    <th>类型</th>
                                    <th>供应商名称</th>
                                    <th>供应商编号</th>
                                    <th>仓储数量</th>
                                    <th>仓储位置</th>
                                    <th>更多信息</th>
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
                </div>`
            </div>
        </main>
    </div>
</div>
<script src="<%=request.getContextPath() %>/views/js/common/common.js" charset="utf-8"></script>
<script src="<%=request.getContextPath() %>/views/js/custom/repertory/repertory_records.js" charset="utf-8"></script>
</body>
</html>
