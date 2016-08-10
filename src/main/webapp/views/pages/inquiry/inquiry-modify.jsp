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
                            <label>款号:</label>
                            <input id="style-id"  type="text" disabled="disabled"/>
                            <label>名称:</label>
                            <input id="style-name" type="text" disabled="disabled"/>
                        </div>
                        <div class="big-bar">
                            <label>图片:</label>
                            <img id="style-img" class="normal-img" src="" alt="缺少图片">
                        </div>
                        <div class="big-bar">
                            <label>描述:</label>
                            <textarea id="style-description"  cols="59" rows="10" disabled="disabled"></textarea>
                        </div>
                    </div>
                    <div class="inquiry-price">
                        <div class="bar"><a class="table-header">报价信息>></a></div>
                        <div class="bar">
                            <label>生产部门报价:</label>
                            <input id="inquiry-price-p" type="text"/>
                        </div>
                        <div class="big-bar">
                            <label>生产部门备注:</label>
                            <textarea id="inquiry-description-p"  cols="59" rows="10"></textarea>
                        </div>
                        <div class="bar">
                            <label>工艺部门报价:</label>
                            <input id="inquiry-price-t" type="text"/>
                        </div>
                        <div class="big-bar">
                            <label>工艺部门备注:</label>
                            <textarea id="inquiry-description-t"  cols="59" rows="10"></textarea>
                        </div>
                        <div class="bar">
                            <label>采购部门报价:</label>
                            <input id="inquiry-price-b" type="text"/>
                        </div>
                        <div class="big-bar">
                            <label>采购部门备注:</label>
                            <textarea id="inquiry-description-b" cols="59" rows="10"></textarea>
                        </div>
                        <div class="bar">
                            <label>制版部门报价:</label>
                            <input id="inquiry-price-m" type="text"/>
                        </div>
                        <div class="big-bar">
                            <label>制版部门备注:</label>
                            <textarea id="inquiry-description-m" cols="59" rows="10"></textarea>
                        </div>
                    </div>
                    <div class="inquiry-modify-submit">
                        <div class="bar">
                            <button type="submit" id="commit-btn" class="btn-save">提交</button>
                            <button type="button" id="remove-btn">清空</button>
                        </div>
                    </div>
                </div>

            </div>
        </main>
    </div>
</div>
<script src="<%=request.getContextPath() %>/views/js/common/common.js"></script>
<script src="<%=request.getContextPath() %>/views/js/custom/inquiry/inquiry-modify.js"></script>
</body>
</html>
