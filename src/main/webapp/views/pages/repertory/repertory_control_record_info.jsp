<%--
  Created by IntelliJ IDEA.
  User: I330558
  Date: 6/30/2016
  Time: 1:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/repertory/repertory-control-records.css" />
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
                <h1><a href="<%=request.getContextPath() %>/main/repertorycontrolrecords"><i class="glyphicon glyphicon-chevron-left"></i></a>库存调度信息
                    <small>出入库信息</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-repertory-control-record-add">
                    <div class="material-info">
                        <div class="bar"><a class="table-header">基础信息>></a></div>
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
                    </div>
                    <div class="material-inventory">
                        <div class="bar"><a class="table-header">库存信息>></a></div>
                        <div class="bar">
                            <label>仓储位置:</label>
                            <input type="text" disabled />
                            <label>库存数量:</label>
                            <input type="text" disabled />
                        </div>
                        <div class="bar">
                            <label>可用库存:</label>
                            <input type="text" disabled />
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<script>
    window.onload = function () {
        highlightTab('nav-repertory','nav-repertory-control-records');
    };
</script>
</body>
</html>

</body>
</html>
