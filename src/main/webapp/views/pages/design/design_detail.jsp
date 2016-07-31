<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/design.css" />
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
                <h1>款式管理
                    <small>款式详情</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-design-detail">
                    <div class="design-info">
                        <div class="bar"><a class="table-header">款式信息>></a></div>
                        <div class="bar">
                            <label>款号:</label>
                            <input name="design-code" type="text" readonly/>
                            <label>名称:</label>
                            <input name="design-name" type="text" readonly/>
                        </div>
                        <div class="bar">
                            <label>创建时间:</label>
                            <input name="design-createTime" type="text" readonly/>
                            <label>状态:</label>
                            <input name="design-status" type="text" readonly/>
                        </div>
                        <div class="bar-text-field">
                            <label>描述:</label>
                            <div class="text-area">
                                <textarea name="design-description" cols="59" rows="10" readonly></textarea>
                            </div>
                        </div>

                        <div class="design-modify-submit">
                            <div class="submit-bar">
                                <button id="inquiry-add-button" type="button" class="btn-add">新建询价单</button>
                            </div>
                        </div>
                    </div>
                    <div class="design-img">
                        <img src="" alt="" />
                    </div>

                    <div class="design-order-list">
                        <div class="table-wrapper table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>订单ID</th>
                                        <th>订单号</th>
                                        <th>创建时间</th>
                                        <th>订单状态</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<script src="<%=request.getContextPath() %>/views/js/custom/design/design_detail.js" charset="utf-8"></script>
</body>
</html>
