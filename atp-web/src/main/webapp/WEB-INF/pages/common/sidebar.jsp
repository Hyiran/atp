<%@ page language="java" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar navbar-collapse collapse">
        <!-- BEGIN SIDEBAR MENU -->
        <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true"
            data-slide-speed="200" style="padding-top: 20px">
            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
            <li class="sidebar-toggler-wrapper hide">
                <div class="sidebar-toggler">
                    <span></span>
                </div>
            </li>
            <!-- END SIDEBAR TOGGLER BUTTON -->
            <li class="sidebar-search-wrapper">
                <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                <form class="sidebar-search  " action="../page/search.jsp" method="POST">
                    <a href="javascript:;" class="remove">
                        <i class="icon-close"></i>
                    </a>
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search...">
                                        <span class="input-group-btn">
                                            <a href="javascript:;" class="btn submit">
                                                <i class="icon-magnifier"></i>
                                            </a>
                                        </span>
                    </div>
                </form>
                <!-- END RESPONSIVE QUICK SEARCH FORM -->
            </li>
            <li class="nav-item start ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-home"></i>
                    <span class="title">Dashboard</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item start ">
                        <a href="../index.jsp" class="nav-link ">
                            <i class="icon-bar-chart"></i>
                            <span class="title">Dashboard 1</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="heading">
                <h3 class="uppercase">Features</h3>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-diamond"></i>
                    <span class="title">UI Features</span>
                    <span class="arrow"></span>
                </a>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-puzzle"></i>
                    <span class="title">Components</span>
                    <span class="arrow"></span>
                </a>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-bulb"></i>
                    <span class="title">Elements</span>
                    <span class="arrow"></span>
                </a>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-briefcase"></i>
                    <span class="title">Tables</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="javascript:;" class="nav-link nav-toggle">
                            <span class="title">Datatables</span>
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li class="nav-item ">
                                <a href="../page/datatables_managed.jsp" class="nav-link "> Managed
                                    Datatables </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-bar-chart"></i>
                    <span class="title">Charts</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="../page/amcharts.jsp" class="nav-link ">
                            <span class="title">amChart</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="heading">
                <h3 class="uppercase">Layouts</h3>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-layers"></i>
                    <span class="title">Page Layouts</span>
                    <span class="arrow"></span>
                </a>
            </li>
            <li class="heading">
                <h3 class="uppercase">Pages</h3>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-basket"></i>
                    <span class="title">eCommerce</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="../page/products.jsp" class="nav-link ">
                            <i class="icon-graph"></i>
                            <span class="title">Products</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="../page/productsedit.jsp" class="nav-link ">
                            <i class="icon-graph"></i>
                            <span class="title">Product Edit</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-docs"></i>
                    <span class="title">Apps</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="../page/calendar.jsp" class="nav-link ">
                            <i class="icon-calendar"></i>
                            <span class="title">Calendar</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="app_ticket.jsp" class="nav-link ">
                            <i class="icon-notebook"></i>
                            <span class="title">Support</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-user"></i>
                    <span class="title">User</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="../page/pagelock.jsp" class="nav-link " target="_blank">
                            <i class="icon-lock"></i>
                            <span class="title">Lock Screen</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-social-dribbble"></i>
                    <span class="title">General</span>
                    <span class="arrow"></span>
                </a>
            </li>
            <li class="nav-item  active open">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-settings"></i>
                    <span class="title">System</span>
                    <span class="selected"></span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="../page/comingsoon.jsp" class="nav-link " target="_blank">
                            <span class="title">Coming Soon</span>
                        </a>
                    </li>
                    <li class="nav-item  active open">
                        <a href="../error/404.jsp" class="nav-link ">
                            <span class="title">404 Page</span>
                            <span class="selected"></span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="../error/500.jsp" class="nav-link ">
                            <span class="title">500 Page</span>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- END SIDEBAR MENU -->
        <!-- END SIDEBAR MENU -->
    </div>
    <!-- END SIDEBAR -->
</div>
<!-- END SIDEBAR -->