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
                    <small>款式新增</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-design-add">
                    <div class="design-info">
                        <div class="bar"><a class="table-header">款式信息>></a></div>
                        <div class="bar">
                            <label>款号:</label>
                            <input id="design-code" type="text"/>
                            <label>款式名称:</label>
                            <input id="design-name" type="text"/>
                        </div>
                        <div class="bar">
                            <label>图片:</label>
                            <div class="input-file">
                                选择文件<input id="input-file" type="file" accept="image/png,image/jpg"/>
                                <input type="hidden" id="imgUrl" value="">
                            </div>
                            <div class="showFileName">文件名</div>
                        </div>
                        <div class="bar-text-field">
                            <label>描述:</label>
                            <div class="text-area">
                                <textarea name="" id="design-description" cols="59" rows="10"></textarea>
                            </div>
                        </div>
                        <div class="bar">
                            <a class="table-header">款式物料信息>></a>
                            <div class="btn-group">
                                <button id="add-material" type="button" class="btn-add" data-toggle="modal" data-target="#modal-material-bind">添加</button>
                                <button id="remove-material" type="button" class="btn-delete">删除</button>
                            </div>
                        </div>
                        <div class="material-list">
                            <div class="table-wrapper table-responsive">
                                <table id="material-design-table" class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>物料编号</th>
                                            <th>物料名称</th>
                                            <th>物料用量</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <input type="radio" name="selected"/>
                                            </td>
                                            <td>11</td>
                                            <td>1</td>
                                            <td>1</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="design-add-submit">
                            <div class="submit-bar">
                                <button type="submit" class="btn-save" id="submit">保存</button>
                                <button type="button" >返回</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<jsp:include page="modal_material_bind.jsp"></jsp:include>
<script src="<%=request.getContextPath() %>/views/js/custom/design/design_add.js" charset="utf-8"></script>
</body>
</html>
