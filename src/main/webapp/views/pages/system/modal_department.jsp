<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="modal-department" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body">
        <div class="bar">
            <label>名称:</label>
            <input type="text"/>
            <label>部门编码:</label>
            <input type="text"/>
        </div>
        <div class="bar">
            <label>英文名称:</label>
            <input type="text"/>
            <label>简称:</label>
            <input type="text"/>
        </div>
        <div class="bar">
            <label>电话:</label>
            <input type="text"/>
            <label>简要描述:</label>
            <input type="text"/>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary">保存</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
