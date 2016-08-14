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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/model/editor/editor.css" charset="utf-8">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/inquiry.css" charset="utf-8">
    <script src="<%=request.getContextPath() %>/views/model/editor/editor.js"></script>
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
                <div class="inquiry-modify">
                    <a class="section-label">款式信息 >></a>
                    <div class="inquiry-info">
                        <div class="inquiry-img">
                            <img id="style-img" src="" alt="款式图片缺少" />
                        </div>
                        <div class="inquiry-textInfo">
                            <div class="bar">
                                <label for="style-id">款式编号</label>
                                <input type="text" name="id" id="style-id" />
                            </div>
                            <div class="bar">
                                <label for="style-name">款式名称</label>
                                <input type="text" name="name" id="style-name" />
                            </div>
                            <div class="bar">
                                <label for="style-description">款式描述</label>
                                <textarea name="description" rows="4" cols="40" id="style-description"></textarea>
                            </div>
                        </div>
                    </div>
                    <a class="section-label">已报价部门信息 >></a>
                    <div class="inquiry-price-list">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>部门</th>
                                    <th>报价</th>
                                    <th>备注</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="radio" /> </td>
                                    <td>生产部门</td>
                                    <td class="price-value"></td>
                                    <td><div class="description"></div></td>
                                </tr>
                                <tr>
                                    <td><input type="radio" /> </td>
                                    <td>工艺部门</td>
                                    <td class="price-value"></td>
                                    <td><div class="description"></div></td>
                                </tr>
                                <tr>
                                    <td><input type="radio" /> </td>
                                    <td>采购部门</td>
                                    <td class="price-value"></td>
                                    <td><div class="description"></div></td>
                                </tr>
                                <tr>
                                    <td><input type="radio" /> </td>
                                    <td>制版部门</td>
                                    <td class="price-value"></td>
                                    <td><div class="description"></div></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    <a class="section-label">部门报价 >></a>
                    <div class="inquiry-operation">
                        <div class="inquiry-operation-btns">
                            <button class="btn-save" type="button" id="p-price">生产部门报价</button>
                            <button class="btn-save" type="button" id="t-price">工艺部门报价</button>
                            <button class="btn-save" type="button" id="b-price">采购部门报价</button>
                            <button class="btn-save" type="button" id="c-price">制版部门报价</button>
                        </div>
                        <div class="inquiry-price-input">
                            <div class="inquiry-wrapper">

                            </div>
                            <div class="inquiry-price-content">
                                <div class="bar">
                                    <label for="department-price">部门报价</label>
                                    <input type="text" name="name" id="department-price" />
                                    <button class="btn-save" type="button" id="commit-price">确认提交</button>
                                </div>
                                <jsp:include page="../../model/editor/editor.jsp"></jsp:include>
                            </div>
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
