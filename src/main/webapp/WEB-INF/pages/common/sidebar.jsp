<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar">
    <nav class="sidebar-nav">
        <ul class="nav">
            <li class="nav-title">ssm-crud</li>
            <li class="nav-item">
                <a href="/" class="nav-link active">
                    <i class="icon icon-speedometer"></i> 首页
                </a>
            </li>

            <li class="nav-title">数据管理</li>
            <li class="nav-item nav-dropdown">
                <a href="#" class="nav-link nav-dropdown-toggle">
                    <i class="icon icon-grid"></i> 客户管理 <i class="fa fa-caret-left"></i>
                </a>

                <ul class="nav-dropdown-items">
                    <li class="nav-item">
                        <a href="/customer/insert" class="nav-link">
                            <i class="icon icon-plus"></i> 新增客户
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="/customer/list" class="nav-link">
                            <i class="icon icon-user"></i> 客户列表
                        </a>
                    </li>
                </ul>
            </li>

            <li class="nav-title">数据统计</li>
            <li class="nav-item nav-dropdown">
                <a href="#" class="nav-link nav-dropdown-toggle">
                    <i class="icon icon-graph"></i> 网站监控 <i class="fa fa-caret-left"></i>
                </a>

                <ul class="nav-dropdown-items">
                    <li class="nav-item">
                        <a href="/web/druid" class="nav-link">
                            <i class="icon icon-speedometer"></i> Druid 监控
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
</div>
