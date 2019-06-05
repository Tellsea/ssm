<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <%@include file="../../common/head.jsp" %>
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">

    <%@include file="../../common/header.jsp" %>

    <div class="main-container">

        <%@include file="../../common/sidebar.jsp" %>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header text-white bg-primary">
                                更新客户信息
                            </div>

                            <div class="card-body">
                                <label>客户编号</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                                    </div>
                                    <input type="text" name="id" class="form-control" readonly value="${customer.id}">
                                </div>

                                <label>客户姓名</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                                    </div>
                                    <input type="text" name="name" class="form-control" placeholder="Name" value="${customer.name}">
                                </div>

                                <label>客户邮箱</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                                    </div>
                                    <input type="email" name="email" class="form-control" placeholder="Email" value="${customer.email}">
                                </div>

                                <label>联系电话</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-phone"></i></span>
                                    </div>
                                    <input type="text" name="phone" class="form-control" placeholder="Phone" value="${customer.phone}">
                                </div>

                                <label>详细地址</label>
                                <div class="input-group mb-3">
                                    <textarea id="textarea" name="address" class="form-control" rows="6" placeholder="Detailed address">${customer.address}</textarea>
                                </div>

                                <button type="button" class="btn btn-block btn-info" onclick="updateCustomer()">更新客户</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../../common/message.jsp" %>
<%@include file="../../common/js.jsp" %>
<script>
    function updateCustomer() {
        var id = $("input[name='id']").val();
        var name = $("input[name='name']").val();
        var email = $("input[name='email']").val();
        var phone = $("input[name='phone']").val();
        var address = $("#textarea").val();

        if (name == null || name.length == 0) {
            $('#modal-danger').modal('show');
            $('#modal-danger .modal-body').html('客户姓名不能为空');
            return;
        }
        if (email == null || email.length == 0) {
            $('#modal-danger').modal('show');
            $('#modal-danger .modal-body').html('客户邮箱不能为空');
            return;
        }
        if (phone == null || phone.length == 0) {
            $('#modal-danger').modal('show');
            $('#modal-danger .modal-body').html('客户联系电话不能为空');
            return;
        }
        if (address == null || address.length == 0) {
            $('#modal-danger').modal('show');
            $('#modal-danger .modal-body').html('客户详细地址不能为空');
            return;
        }

        $.ajax({
            type: 'POST',
            url: "/customer/update",
            data: {
                id: id,
                name: name,
                email: email,
                phone: phone,
                address: address
            },
            dataType: "json",
            success: function(result) {
                if (result.code == 200) {
                    $('#modal-success').modal('show');
                    $('#modal-success .modal-body').html(result.msg);
                } else {
                    $('#modal-danger').modal('show');
                    $('#modal-danger .modal-body').html("失败：状态码：" + result.code + "，" + result.msg);
                }
            },
            error: function () {
                $('#modal-danger').modal('show');
                $('#modal-danger .modal-body').html('请求失败，请检查请求数据或网络哟');
            }
        });
    }
</script>
</body>
</html>
