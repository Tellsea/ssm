<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar page-header">
    <a href="#" class="btn btn-link sidebar-mobile-toggle d-md-none mr-auto">
        <i class="fa fa-bars"></i>
    </a>

    <a class="navbar-brand" href="/">
        <span style="font-size: 18px;">SSM 客户管理系统</span>
    </a>

    <a href="#" class="btn btn-link sidebar-toggle d-md-down-none">
        <i class="fa fa-bars"></i>
    </a>

    <ul class="navbar-nav ml-auto">
        <li class="nav-item d-md-down-none">
            <a href="#">
                <i class="fa fa-bell"></i>
                <span class="badge badge-pill badge-danger">5</span>
            </a>
        </li>

        <li class="nav-item d-md-down-none">
            <a href="#">
                <i class="fa fa-envelope-open"></i>
                <span class="badge badge-pill badge-danger">5</span>
            </a>
        </li>

        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img src="/static/images/avatar-1.png" class="avatar avatar-sm" alt="logo">
                <span class="ml-1 d-md-down-none">当前账户：${currentUser.username}</span>
            </a>

            <div class="dropdown-menu dropdown-menu-right">

                <div class="dropdown-header">Github</div>
                <a target="_blank" href="https://github.com/Tellsea/ssm" class="dropdown-item">
                    <i class="fa fa-hashtag"></i> 项目源码
                </a>
                <a target="_blank" href="https://github.com/Tellsea/springboot-learn" class="dropdown-item">
                    <i class="fa fa-wrench"></i> SpringBoot 整合项目
                </a>
                <a target="_blank" href="https://github.com/Tellsea/spring-cloud" class="dropdown-item">
                    <i class="fa fa-cloud"></i> SpringCloud 脚手架
                </a>

                <div class="dropdown-header">Account</div>
                <a href="/logout" class="dropdown-item">
                    <i class="fa fa-lock"></i> 退出系统
                </a>
            </div>
        </li>
    </ul>
</nav>
