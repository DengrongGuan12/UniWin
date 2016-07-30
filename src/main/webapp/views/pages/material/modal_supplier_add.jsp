<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="modal-supplier-add" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">新增供应商</h4>
      </div>
      <div class="modal-body">
        <div class="bar">
            <label>供应商编号:</label>
            <input type="text" name="supplier-number"/>
            <label>供应商名称:</label>
            <input type="text" name="supplier-name"/>
        </div>
        <div class="bar">
            <label>供应商电话:</label>
            <input type="text" name="supplier-telNo"/>
            <label>供应商手机:</label>
            <input type="text" name="supplier-mbNo"/>
        </div>
        <div class="bar">
            <label>供应商地址:</label>
            <input type="text" name="supplier-address" class="input-lg"/>
        </div>
        <div class="bar">
            <label>供应商等级：</label>
            <select name="supplier-level">
                <option value ="优质">优质</option>
                <option value ="中等">中等</option>
                <option value ="劣质">劣质</option>
            </select>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button id="supplier-add-button" type="button" class="btn btn-primary">保存</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
