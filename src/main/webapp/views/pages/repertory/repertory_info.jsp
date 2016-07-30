<%--
  Created by IntelliJ IDEA.
  User: I330558
  Date: 6/29/2016
  Time: 11:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>

    <link rel="stylesheet" href="<%=request.getContextPath() %>/views/css/custom/repertory/repertory-info.css" charset="utf-8">
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
                <h1><a href="<%=request.getContextPath() %>/main/repertoryrecords"><i class="glyphicon glyphicon-chevron-left"></i></a>
                    库存
                    <small>库存信息</small>
                </h1>
            </div>
            <div class="main-content">
                <ul class="tab-navs">
                    <li class="tab-nav active"><a href="#repertoryInfo">库存信息</a></li>
                    <li class="tab-nav"><a href="#repertoryIn-records">入库记录</a></li>
                    <li class="tab-nav"><a href="#repertoryOut-records">出库记录</a></li>
                </ul>
                <div class="tab-panel repertory-info">
                    <div class="repertory-info">
                        <div class="bar"><a class="table-header">基础信息>></a></div>
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
                    <div class="repertory-inventory">
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
                </div>
                <div class="tab-panel repertoryIn-list">
                    <div class="repertoryIn-records-table table-responsive">
                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th></th>
                                <th>入库时间</th>
                                <th>物料编号</th>
                                <th>物料名称</th>
                                <th>物料类型</th>
                                <th>入库数量</th>
                                <th>单价</th>
                                <th>负责人</th>
                                <th>供应商编号</th>
                                <th>供应商名称</th>
                                <th>供应商地址</th>
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
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio">
                                </td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                            </tbody>
                        </table>
                        <nav>
                          <ul id="reperory-in" class="paging-section">
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
                <div class="tab-panel repertoryOut-list">
                    <div class="repertoryOut-records-table table-responsive">
                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th></th>
                                <th>出库时间</th>
                                <th>物料编号</th>
                                <th>物料名称</th>
                                <th>物料类型</th>
                                <th>出库数量</th>
                                <th>单价</th>
                                <th>负责人</th>
                                <th>供应商编号</th>
                                <th>供应商名称</th>
                                <th>供应商地址</th>
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
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio">
                                </td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                            </tbody>
                        </table>
                        <nav>
                          <ul id="repertory-out" class="paging-section">
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
        </main>
    </div>
</div>
<script src="<%=request.getContextPath() %>/views/js/custom/repertory/repertory_info.js"></script>
<script src="<%=request.getContextPath() %>/views/js/common/common.js" charset="utf-8"></script>
</body>
</html>
