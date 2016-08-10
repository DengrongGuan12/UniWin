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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/views/css/custom/inquiry.css" />
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
                <h1>询价单
                    <small>询价单管理</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-inquiry-query">
                    <div class="inquiry-query-header">
                        <div class="query-info">
                            <div class="bar">
                                <label>款号:</label>
                                <input type="text"/>
                                <label>部门:</label>
                                <input type="text" />
                                <label>询价状态</label>
                                <select>
                                    <option value ="type">Type</option>
                                </select>
                                <button type="button" class="btn-query">查询</button>
                            </div>
                        </div>
                        <jsp:include page="modal-frame-new-inquiry.jsp"></jsp:include>
                        <div class="inquiry-operation">
                            <button type="button" class="btn-add" data-toggle="modal"
                                    data-target="#inquiryModal">新增</button>
                        </div>
                    </div>
                    <div class="inquiry-list">
                        <div class="inquiry-table table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th>图片</th>
                                    <th>款式ID</th>
                                    <th>工艺部门报价</th>
                                    <th>生产部门报价</th>
                                    <th>采购部门报价</th>
                                    <th>制版部门报价</th>
                                    <th>进度</th>
                                    <th>更多操作</th>
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
                </div>
            </div>
        </main>
    </div>
</div>

<script src="<%=request.getContextPath() %>/views/js/common/common.js"></script>
<script src="<%=request.getContextPath() %>/views/js/custom/inquiry/inquiry.js"></script>
</body>
</html>
