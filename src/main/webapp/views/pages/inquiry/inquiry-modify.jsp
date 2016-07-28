<%--
  Created by IntelliJ IDEA.
  User: I330558
  Date: 7/25/2016
  Time: 10:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>

    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/inquiry.css" charset="utf-8">
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
                <h1>询价单管理
                    <small>询价单审核</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="tab-panel main-inquiry-modify">
                    <div class="style-info">
                        <div class="bar"><a class="table-header">款式信息>></a></div>
                        <div class="bar">
                            <label>物料名称:</label>
                            <input type="text"/>
                            <label>物料编号:</label>
                            <input type="text"/>
                        </div>
                        <div class="bar">
                            <label>物料成分:</label>
                            <input type="text"/>
                            <label>物料单价:</label>
                            <input type="text"/>
                        </div>
                        <div class="bar">
                            <label>单位:</label>
                            <input type="text"/>
                            <label>类型:</label>
                            <input type="text"/>
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
                            <label>出量:</label>
                            <input type="text"/>
                            <label>米/公斤</label>
                        </div>
                        <div class="bar">
                            <label>供应商地址:</label>
                            <input type="text" class="input-lg" disabled />
                        </div>
                    </div>
                    <div class="inquiry-price">
                        <div class="bar"><a class="table-header">报价信息>></a></div>
                        <div class="bar">
                            <label>生产部门报价:</label>
                            <input type="text"/>
                        </div>
                        <div class="big-bar">
                            <label>生产部门备注:</label>
                            <textarea name="" id="" cols="30" rows="10"></textarea>
                        </div>
                        <div class="bar">
                            <label>生产部门报价:</label>
                            <input type="text"/>
                        </div>
                        <div class="big-bar">
                            <label>生产部门备注:</label>
                            <textarea name="" id="" cols="30" rows="10"></textarea>
                        </div>
                        <div class="bar">
                            <label>生产部门报价:</label>
                            <input type="text"/>
                        </div>
                        <div class="big-bar">
                            <label>生产部门备注:</label>
                            <textarea name="" id="" cols="30" rows="10"></textarea>
                        </div>
                        <div class="bar">
                            <label>生产部门报价:</label>
                            <input type="text"/>
                        </div>
                        <div class="big-bar">
                            <label>生产部门备注:</label>
                            <textarea name="" id="" cols="30" rows="10"></textarea>
                        </div>
                    </div>
                    <div class="inquiry-modify-submit">
                        <div class="bar">
                            <button type="submit" class="btn-save">保存</button>
                            <button type="button" >返回</button>
                        </div>
                    </div>
                </div>

            </div>
        </main>
    </div>
</div>
<script src="<%=request.getContextPath() %>/views/js/custom/repertory/repertoryInfo.js"></script>
<script>
    window.onload = function () {
        highlightTab('nav-inquiry','nav-inquiry-manage');
    };
</script>
</body>
</html>
