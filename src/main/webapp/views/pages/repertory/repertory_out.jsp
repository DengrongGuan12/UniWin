<%--
  Created by IntelliJ IDEA.
  User: I330558
  Date: 6/30/2016
  Time: 1:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/repertory/repertory-out.css" />
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
                <h1>出库管理
                    <small>出库新增</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-repertoryOut-add">
                    <div class="material-info">
                        <div class="bar"><a class="table-header">基础信息>></a></div>
                        <div class="bar">
                            <label>物料名称:</label>
                            <input type="text"/>
                            <label>物料编号:</label>
                            <input id="material-id" type="text"/>
                        </div>
                        <div class="bar">
                            <label>物料成分:</label>
                            <input type="text"/>
                            <label>物料单价:</label>
                            <input type="text"/>
                        </div>
                        <div class="bar">
                            <label>单位:</label>
                            <select>
                                <option value ="volvo">Volvo</option>
                                <option value ="volvo">Volvo</option>
                            </select>
                            <label>类型:</label>
                            <select>
                                <option value ="volvo">Volvo</option>
                            </select>
                        </div>
                        <div class="bar">
                            <label>入库时间:</label>
                            <input type="text" class="date-picker"/>
                            <label>颜色说明:</label>
                            <input type="text"/>
                        </div>
                        <div class="bar">
                            <label>供应商编号:</label>
                            <input type="text" />
                            <label>门幅:</label>
                            <input type="text"/>
                            <label>米</label>
                        </div>
                        <div class="bar">
                            <label>供应商名称:</label>
                            <input type="text" disabled />
                            <label>数量:</label>
                            <input id="repertory-out-quantity" type="text"/>
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
                            <input type="text"/>
                            <label>库存数量:</label>
                            <input type="text"/>
                        </div>
                        <div class="bar">
                            <label>可用库存:</label>
                            <input type="text" disabled />
                        </div>
                    </div>
                    <div class="repertoryOut-add-submit">
                        <div class="bar">
                            <button type="submit" class="btn-save">保存</button>
                            <button type="button" class="btn-remove">清除</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<script src="<%=request.getContextPath() %>/views/js/common/common.js" charset="utf-8"></script>
<script src="<%=request.getContextPath() %>/views/js/custom/repertory/repertory_out.js" charset="utf-8"></script>
</body>
</html>

</body>
</html>
