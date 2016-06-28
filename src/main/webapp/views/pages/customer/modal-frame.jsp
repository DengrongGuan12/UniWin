<%--
  Created by IntelliJ IDEA.
  User: I330558
  Date: 6/28/2016
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <style>
        .modal-body {
            display: flex;
            flex-direction: column;
            align-content: center;
            justify-content: center;
        }
        .modal-body > .info {
            margin: 5px;
            flex: 1 0 20px;
        }
        .modal-body > .info label {
            margin: 5px;
            margin-left: 100px;
            width: 60px;
        }
    </style>
</head>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    创建客户资料
                </h4>
            </div>
            <div class="modal-body">
                <!-- 添加内部组件 客户信息 -->
                <div class="info" id="customer-info">
                    <label>联系人：</label>
                    <input type="text" required="required"/>
                    </br>
                    <label>电话：</label>
                    <input type="text" required="required">
                    </br>
                    <label>邮箱：</label>
                    <input type="text" required="required"/>
                </div>
                <div class="info" id="branch-info">
                    <label>品牌：</label>
                    <input type="text" required="required"/>
                    </br>
                    <label>类型：</label>
                    <input type="text" required="required"/>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
                    提交新建
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
