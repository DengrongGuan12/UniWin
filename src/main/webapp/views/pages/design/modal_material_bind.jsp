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
            <label>物料编号:</label>
            <input type="text" name="material-id"/>
            <label>物料用量:</label>
            <input type="text" name="material-usage"/>
        </div>

        <div class="material-bind-list">
            <table id="material-bind-table" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th>物料编号</th>
                        <th>物料名称</th>
                        <th>物料信息</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <input type="radio" name="selected"/>
                        </td>
                        <td class="id">1</td>
                        <td>1</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="selected"/>
                        </td>
                        <td class="id">2</td>
                        <td>1</td>
                        <td>1</td>
                    </tr>
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
