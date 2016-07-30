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
                    <small>款式列表</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-design-list">
                    <div class="design-query-header">
                        <div class="query-info">
                            <div class="bar">
                                <label>款号:</label>
                                <input id="design-code" type="text"/>
                                <button type="button" class="btn-query">查询</button>
                            </div>
                        </div>
                        <div class="design-operation">
                            <button id="detail-button" type="button" class="btn-detail">详情</button>
                        </div>
                    </div>
                    <div class="design-list">
                        <div class="table-wrapper table-responsive">
                            <table id="design-table" class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>图片</th>
                                        <th>款号</th>
                                        <th>款式名称</th>
                                        <th>状态</th>
                                        <th>描述</th>
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

<script src="<%=request.getContextPath() %>/views/js/custom/design/design_list.js" charset="utf-8"></script>

</body>
</html>
