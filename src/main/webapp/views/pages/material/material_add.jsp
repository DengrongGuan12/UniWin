<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../header.jsp"></jsp:include>
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
                <h1>物料管理
                    <small>物料新增</small>
                </h1>
            </div>
            <div class="main-content">
                <div class="main-material-add">
                    <div class="material-info">
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

                        </div>
                        <div class="bar"></div>
                        <div class="bar"></div>
                        <div class="bar"></div>
                    </div>
                    <div class="material-inventory">
                        <div class="bar"><a class="table-header">库存信息>></a></div>
                        <div class="bar"></div>
                        <div class="bar"></div>
                    </div>
                    <div class="material-add-submit">

                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
</body>
</html>

