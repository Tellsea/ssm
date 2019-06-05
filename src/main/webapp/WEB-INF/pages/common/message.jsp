<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="modal-danger" style="z-index: 20000" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-danger border-0">
                <h5 class="modal-title text-white">系统警告</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body p-5">
                null ...
            </div>

            <div class="modal-footer border-0">
                <button type="button" class="btn btn-danger" data-dismiss="modal">我知道了</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modal-success" style="z-index: 20000" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-success border-0">
                <h5 class="modal-title text-white">系统提示</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body p-5">
                null ...
            </div>

            <div class="modal-footer border-0">
                <button type="button" class="btn btn-success" data-dismiss="modal" id="successBtn">我知道了</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="deleteModal" style="z-index: 20000" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-danger border-0">
                <h5 class="modal-title text-white">系统警告</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body p-5">
                确定删除该数据？
            </div>

            <div class="modal-footer border-0">
                <button type="button" class="btn btn-link" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-danger" id="deleteButton">确定</button>
            </div>
        </div>
    </div>
</div>
