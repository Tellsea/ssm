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
            <div class="row">
                <div class="col-md-12">
                    <iframe src="/druid/index.html" frameborder="0" width="100%" height="550px"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../../common/js.jsp" %>
</body>
</html>
