<%--
  Created by IntelliJ IDEA.
  User: I330558
  Date: 7/26/2016
  Time: 7:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <style>

        .hideModalInfo
        {
            display: none;
        }

        .showModelInfo
        {
            display: block;
        }

        .modal-body
        {
            width: 100%;
            min-height: 300px;
            display: flex;
            flex-direction: column;
            align-items: center;


        }
        .modal-body .style-input
        {
            display: flex;
            width: 100%;
            flex-direction: row;
            align-items: center;
            justify-content: flex-start;

        }

        .modal-body .style-input label
        {
            width: 40px;
            margin-left: 80px;
        }

        .modal-body .style-input button
        {
            flex-grow: 0;
            flex-shrink: 0;
            padding: 4px;
            margin-left: 140px;

        }

        .modal-body .error-info
        {

        }

        .modal-body .style-info
        {
            flex-grow: 0;
            flex-shrink: 1;
            width: 100%;
            padding:15px;
            border: 1px solid #7687b8;

            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
        }

        .modal-body .style-info .style-image
        {
            flex: 0 0 200px;
            height: 200px;
            margin-right: 5px;
            border: none;
        }

        .modal-body .style-info .style-description
        {
            flex: 0 0 200px;
            margin-left: 25px;
        }


    </style>
</head>
<!-- 模态框（Modal） -->
<div class="modal fade" id="inquiryModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    创建询价单
                </h4>
            </div>
            <div class="modal-body">
                <!-- 添加内部组件 -->
                <!--   款式ID输入  -->
                <div class="style-input">
                    <label>款式ID</label>
                    <input id="style-id" type="text">
                    <button id="checkId" type="button">验证ID</button>
                </div>
                <!-- error info -->
                <div class="error-info">

                </div>
                <!--  款式信息 -->
                <div class="style-info">
                    <img class="style-image" alt="" />

                    <div class="style-description"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">关闭
                </button>
                <button id="inquiry-add" type="button" class="btn btn-primary">
                    提交新建
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<script src="<%=request.getContextPath() %>/views/js/custom/inquiry/inquiry_add.js" charset="utf-8"></script>
