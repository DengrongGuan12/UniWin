<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="modal-material-bind" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">物料绑定</h4>
      </div>
      <div class="modal-body">
        <div class="bar">
            <label>选中物料ID:</label>
            <input type="text" name="selected-material-id" readonly/>
            <label>物料用量:</label>
            <input type="text" name="material-usage"/>
        </div>
        <div class="last-bar">
            <label>查询物料ID:</label>
            <input type="text" name="material-qid"/>
            <label>物料名称:</label>
            <input type="text" name="material-qname"/>
        </div>

        <div class="material-bind-list">
            <table id="material-bind-table" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th>物料ID</th>
                        <th>物料编号</th>
                        <th>物料名称</th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button id="add-material-button" type="button" class="btn btn-primary">添加</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
