<%--
  Created by IntelliJ IDEA.
  User: I330045
  Date: 6/24/2016
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul id="accordion" class="accordion">
    <li id="nav-material">
        <div class="link"><i class="glyphicon glyphicon-th"></i>物料管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li id="nav-material-add"><a href="<%=request.getContextPath() %>/main/materialadd">物料新增</a></li>
            <li id="nav-material-query"><a href="<%=request.getContextPath() %>/main/materialquery">物料查询</a></li>
            <li id="nav-material-modify"><a href="<%=request.getContextPath() %>/main/materialmodify">物料修改</a></li>
            <li id="nav-material-supplier"><a href="<%=request.getContextPath() %>/main/materialsupplier">供应商管理</a></li>
        </ul>
    </li>
    <li id="nav-inRepertory">
        <div class="link"><i class="glyphicon glyphicon-th"></i>入库管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li id="nav-inRepertory-manage"><a href="">入库管理</a></li>
            <li id="nav-inRepertory-import"><a href="">入库</a></li>
        </ul>
    </li>
    <li id="nav-outRepertory">
        <div class="link"><i class="glyphicon glyphicon-th"></i>出库管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li id="nav-outRepertory-manage"><a href="">出库管理</a></li>
            <li id="nav-outRepertory-export"><a href="">出库</a></li>
        </ul>
    </li>
    <li id="nav-inquiry">
        <div class="link"><i class="glyphicon glyphicon-th"></i>询价管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li id="nav-inquiry-manage"><a href="">询价单管理</a></li>
            <li id="nav-inquiry-add"><a href="">新增询价单</a></li>
        </ul>
    </li>
    <li>
        <div class="link"><i class="glyphicon glyphicon-th"></i>款式管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li><a href="">款式新增</a></li>
            <li><a href="">BOM物料管理</a></li>
        </ul>
    </li>
    <li>
        <div class="link"><i class="glyphicon glyphicon-th"></i>订单管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li><a href="">订单管理</a></li>
            <li><a href="">新建订单</a></li>
        </ul>
    </li>
    <li>
        <div class="link"><i class="glyphicon glyphicon-th"></i>采购管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li><a href="">采购单管理</a></li>
            <li><a href="">采购单审核</a></li>
        </ul>
    </li>
    <li>
        <div class="link"><i class="glyphicon glyphicon-th"></i>制版管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li><a href="">制版单管理</a></li>
            <li><a href="">制版单修改</a></li>
            <li><a href="">样衣管理</a></li>
            <li><a href="">样衣入库</a></li>
        </ul>
    </li>
    <li>
        <div class="link"><i class="glyphicon glyphicon-th"></i>生产管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li><a href="">生产单管理</a></li>
            <li><a href="">生产单审核</a></li>
        </ul>
    </li>
    <li>
        <div class="link"><i class="glyphicon glyphicon-th"></i>加工管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li><a href="">加工方管理</a></li>
            <li><a href="">新增外发单</a></li>
            <li><a href="">外发单管理</a></li>
            <li><a href="">收货单管理</a></li>
        </ul>
    </li>
    <li>
        <div class="link"><i class="glyphicon glyphicon-th"></i>质检管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li><a href="">质检单管理</a></li>
            <li><a href="">新增质检单</a></li>
        </ul>
    </li>
    <li>
        <div class="link"><i class="glyphicon glyphicon-th"></i>成衣管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li><a href="">成衣单管理</a></li>
            <li><a href="">成衣入库</a></li>
            <li><a href="">成衣查询</a></li>
        </ul>
    </li>
    <li id="nav-customer">
        <div class="link"><i class="glyphicon glyphicon-th"></i>客户管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li id="nav-customer-manage"><a href="<%=request.getContextPath() %>/main/customermanage">客户管理</a></li>
        </ul>
    </li>
    <li id="nav-system">
        <div class="link"><i class="glyphicon glyphicon-th"></i>系统管理<i class="glyphicon glyphicon-chevron-down"></i></div>
        <ul class="submenu">
            <li id="nav-system-user"><a href="<%=request.getContextPath() %>/main/usermanage">用户管理</a></li>
            <li id="nav-system-department"><a href="<%=request.getContextPath() %>/main/departmentmanage">组织管理</a></li>
            <li><a href="">权限分配</a></li>
            <li><a href="">角色管理</a></li>
        </ul>
    </li>
</ul>
