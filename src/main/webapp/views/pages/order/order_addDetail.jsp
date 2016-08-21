<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/order.css" />
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
                <h1>订单管理
                    <small>新建订单</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-order-add">
                    <div class="order-info">
                        <div class="bar"><a class="table-header">订单信息>></a></div>
                        <div class="bar">
                            <label>客户名称:</label>
                            <input name="customer-name" type="text"/>
                            <label>订单优先级:</label>
                            <select name="order-priority">
                                <option value ="普通">普通</option>
                                <option value ="第一时间">第一时间</option>
                            </select>
                        </div>
                        <div class="bar">
                            <label>订单类型:</label>
                            <select name="order-type">
                                <option value ="新款">新款</option>
                                <option value ="老款">老款</option>
                            </select>
                            <label>配送方式:</label>
                            <input name="delivery-type" type="text"/>
                        </div>
                    </div>
                    <div class="production-info">
                        <div class="bar"><a class="table-header">生产信息>></a></div>
                        <div class="production-list">
                            <div class="table-wrapper table-responsive">
                                <table id="production-table" class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>颜色</th>
                                            <th>XS</th>
                                            <th>S</th>
                                            <th>M</th>
                                            <th>L</th>
                                            <th>XL</th>
                                            <th>XXL</th>
                                            <th>合计</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <input type="text" name="color"/>
                                            </td>
                                            <td>
                                                <input type="text" name="xs"/>
                                            </td>
                                            <td>
                                                <input type="text" name="s"/>
                                            </td>
                                            <td>
                                                <input type="text" name="m"/>
                                            </td>
                                            <td>
                                                <input type="text" name="l"/>
                                            </td>
                                            <td>
                                                <input type="text" name="xl"/>
                                            </td>
                                            <td>
                                                <input type="text" name="xxl"/>
                                            </td>
                                            <td>
                                                <input type="text" name="sum" disabled />
                                            </td>
                                            <td>
                                                <button class="btn-success" id="add-production"/>添加
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="purchase-info">
                        <div class="bar">
                            <a class="table-header">采购信息>></a>
                            <div class="btn-group">
                                <button id="edit-save" type="button" class="btn-save" >保存</button>
                            </div>
                        </div>
                        <div class="purchase-list">
                            <div class="table-wrapper table-responsive">
                                <table id="purchase-table" class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>物料名称</th>
                                            <th>供应商</th>
                                            <th>物料类型</th>
                                            <th>采购数量</th>
                                            <th>单位</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>棉</td>
                                            <td>xx供应商</td>
                                            <td>面料</td>
                                            <td><input type="text" /></td>
                                            <td>米</td>
                                        </tr>
                                        <tr>
                                            <td>棉</td>
                                            <td>xx供应商</td>
                                            <td>面料</td>
                                            <td><input type="text" /></td>
                                            <td>米</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                        <div class="order-add-submit">
                            <div class="bar">
                                <button id="submit" type="submit" class="btn-save">保存</button>
                                <button type="button" >返回</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<script src="<%=request.getContextPath() %>/views/js/custom/order/order_addDetail.js" charset="utf-8"></script>

</body>
</html>
