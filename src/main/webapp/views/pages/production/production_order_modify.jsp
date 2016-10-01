<%--
--%>
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
                <h1><a href="<%=request.getContextPath() %>/production/productionorder"><i class="glyphicon glyphicon-chevron-left"></i></a>生产单管理
                    <small>生产单修改</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-production-order-modify">
                    <div class="order-info">
                        <div class="bar"><a class="table-header">订单信息>></a></div>
                        <div class="bar">
                            <label>款式名称:</label>
                            <input type="text" disabled />
                            <label>订单类型:</label>
                            <select disabled >
                                <option value ="volvo">Volvo</option>
                                <option value ="volvo">Volvo</option>
                            </select>
                        </div>
                        <div class="bar">
                            <label>新款/老款:</label>
                            <select disabled >
                                <option value ="volvo">Volvo</option>
                                <option value ="volvo">Volvo</option>
                            </select>
                            <label>订单状态:</label>
                            <select disabled >
                                <option value ="volvo">Volvo</option>
                                <option value ="volvo">Volvo</option>
                            </select>
                        </div>
                        <div class="bar">
                            <label>款号:</label>
                            <input type="text" disabled />
                            <label>下单日期:</label>
                            <input type="text" class="date-picker" disabled />
                        </div>
                        <div class="bar">
                            <label>订单类型:</label>
                            <input type="text"  />
                            <label>联系方式:</label>
                            <input type="text"  />
                        </div>
                        <div class="bar">
                            <label>客户名称:</label>
                            <input type="text"  />
                            <label>客户代表:</label>
                            <input type="text"  />
                        </div>

                        <div class="big-bar">
                            <label>订单信息:</label>
                            <textarea name="name" rows="8" cols="40" disabled="disabled"></textarea>
                            <label>备注:</label>
                            <textarea name="name" rows="8" cols="40" disabled="disabled"></textarea>
                        </div>
                    </div>
                    <div class="order-modify-submit">
                        <div class="bar">
                            <button id="order-modify-button" type="submit" class="btn-save">保存</button>
                            <button type="button" >返回</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<script src="<%=request.getContextPath() %>/views/js/custom/production/production_order_modify.js" charset="utf-8"></script>
</body>
</html>

</body>
</html>
