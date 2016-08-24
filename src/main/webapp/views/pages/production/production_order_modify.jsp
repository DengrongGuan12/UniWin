<%--
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/production/production.css" />
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
                            <label>物料名称:</label>
                            <input type="text" disabled />
                            <label>物料编号:</label>
                            <input type="text" disabled />
                        </div>
                        <div class="bar">
                            <label>物料成分:</label>
                            <input type="text" disabled />
                            <label>物料单价:</label>
                            <input type="text" disabled />
                        </div>
                        <div class="bar">
                            <label>单位:</label>
                            <select disabled >
                                <option value ="volvo">Volvo</option>
                                <option value ="volvo">Volvo</option>
                            </select>
                            <label>类型:</label>
                            <select disabled >
                                <option value ="volvo">Volvo</option>
                            </select>
                        </div>
                        <div class="bar">
                            <label>入库时间:</label>
                            <input type="text" class="date-picker" disabled />
                            <label>颜色说明:</label>
                            <input type="text" disabled />
                        </div>
                        <div class="bar">
                            <label>供应商编号:</label>
                            <input type="text" disabled />
                            <label>门幅:</label>
                            <input type="text" disabled />
                            <label>米</label>
                        </div>
                        <div class="bar">
                            <label>供应商名称:</label>
                            <input type="text" disabled />
                            <label>出量:</label>
                            <input type="text" disabled />
                            <label>米/公斤</label>
                        </div>
                        <div class="bar">
                            <label>供应商地址:</label>
                            <input type="text" class="input-lg" disabled />
                        </div>
                        <div class="bar">
                            <button id="inquiry-add-button" type="button" class="btn-save">确认修改</button>
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
