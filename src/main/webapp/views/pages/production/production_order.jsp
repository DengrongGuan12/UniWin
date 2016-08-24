<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/production.css" />
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
                <h1>生产单管理
                    <small>生产单列表</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-production-order-list">
                    <div class="production-order-query-header">
                        <div class="query-info">
                            <div class="bar">
                                <label>款号:</label>
                                <input id="query-code" type="text"/>
                                <label>客户名:</label>
                                <input id="query-code" type="text"/>
                                <label>客户代表:</label>
                                <input id="query-code" type="text"/>
                            </div>
                            <div class="bar">
                                <label>生产单状态:</label>
                                <select class="" >
                                    <option value="value1">value1</option>
                                    <option value="value2">value2</option>
                                </select>
                                <label>采购状态:</label>
                                <select class="" >
                                    <option value="value1">value1</option>
                                    <option value="value2">value2</option>
                                </select>
                                <label>下单日期:</label>
                                <input  type="text" data-date-format="dd-mm-yyyy" class="dateInput" id="datetimepicker">
                                <button id="query-button" type="button" class="btn-query">查询</button>
                            </div>
                        </div>
                    </div>
                    <div class="production-order-list">
                        <div class="table-wrapper table-responsive">
                            <table id="production-order-table" class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>图片</th>
                                        <th>订单编号</th>
                                        <th>款式信息</th>
                                        <th>客户名称</th>
                                        <th>采购单</th>
                                        <th>工艺单</th>
                                        <th>进度</th>
                                        <th>详细信息</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th><input type="radio" /></th>
                                        <th>图片</th>
                                        <th>订单编号</th>
                                        <th>款式信息</th>
                                        <th>客户名称</th>
                                        <th>采购单</th>
                                        <th>工艺单</th>
                                        <th>进度</th>
                                        <th><a href="<%= request.getContextPath() %>/v1/productionOrder/productionordermodify">详细信息</a></th>
                                    </tr>
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

<script src="<%=request.getContextPath() %>/views/js/custom/production/production_order.js" charset="utf-8"></script>
</body>
</html>
