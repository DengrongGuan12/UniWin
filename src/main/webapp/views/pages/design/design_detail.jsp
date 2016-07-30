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
                            <input type="text"/>
                            <label>状态:</label>
                            <select>
                                <option value ="volvo">Volvo</option>
                                <option value ="volvo">Volvo</option>
                            </select>
                        </div>
                        <div class="bar">
                            <label>图片:</label>
                            <input type="text" class="input-lg"/>
                        </div>
                        <div class="bar-text-field">
                            <label>描述:</label>
                            <div class="text-area">
                                <textarea name="" id="" cols="59" rows="10"></textarea>
                            </div>
                        </div>

                        <div class="design-modify-submit">
                            <div class="submit-bar">
                                <button type="button" class="btn-modify">编辑</button>
                                <button type="button" class="btn-add">新建询价单</button>
                            </div>
                        </div>
                    </div>
                    <div class="design-img">
                        <img src="http://d03.res.meilishuo.net/pic/_o/af/c0/06c1acc094c2c0e214e290969679_311_309.c1.jpg" alt="" />
                    </div>

                    <div class="design-query-list">
                        <div class="table-wrapper table-responsive">
                            <table class="table table-striped table-hover">
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
                                    <tr>
                                        <td>
                                            <input type="radio">
                                        </td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                </tbody>
                            </table>
                            <nav>
                              <ul class="pagination">
                                <li>
                                  <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                  </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                  <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                  </a>
                                </li>
                              </ul>
                            </nav>
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
