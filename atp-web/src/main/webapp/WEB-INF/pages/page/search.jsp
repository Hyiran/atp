<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>

<html lang="en">


<head>
    <meta charset="utf-8"/>
    <title>Metronic | The Ultimate Multi-purpose Bootstrap Admin Dashboard Theme | Theme #1 | Search Results 3</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="#1 selling multi-purpose bootstrap admin theme sold in themeforest marketplace packed with angularjs, material design, rtl support with over thausands of templates and ui elements and plugins to power any type of web applications including saas and admin dashboards. Preview page of Theme #1 for search results"
          name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet"
          type="text/css"/>
    <link href="${ctx}/resources/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="${ctx}/resources/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="${ctx}/resources/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="${ctx}/resources/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="${ctx}/resources/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="${ctx}/resources/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css"/>
    <link href="${ctx}/resources/global/css/plugins.min.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="${ctx}/resources/pages/css/search.min.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <link href="${ctx}/resources/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/layouts/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css"
          id="style_color"/>
    <link href="${ctx}/resources/layouts/layout/css/custom.min.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="${ctx}/favicon.ico"/>
</head>
<!-- END HEAD -->

<body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid page-content-white">
<div class="page-wrapper">
    <!-- BEGIN HEADER -->
    <jsp:include page="../common/header.jsp"></jsp:include>
    <!-- END HEADER -->
    <!-- BEGIN HEADER & CONTENT DIVIDER -->
    <div class="clearfix"></div>
    <!-- END HEADER & CONTENT DIVIDER -->
    <!-- BEGIN CONTAINER -->
    <div class="page-container">
        <!-- BEGIN SIDEBAR -->
        <jsp:include page="../common/sidebar.jsp"></jsp:include>
        <!-- END SIDEBAR -->
        <!-- BEGIN CONTENT -->
        <div class="page-content-wrapper">
            <!-- BEGIN CONTENT BODY -->
            <div class="page-content">
                <!-- BEGIN PAGE HEADER-->
                <!-- BEGIN PAGE BAR -->
                <div class="page-bar">
                    <ul class="page-breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                            <i class="fa fa-circle"></i>
                        </li>
                        <li>
                            <a href="#">General</a>
                            <i class="fa fa-circle"></i>
                        </li>
                        <li>
                            <span>Search</span>
                        </li>
                    </ul>
                    <div class="page-toolbar">
                        <div class="btn-group pull-right">
                            <button type="button" class="btn green btn-sm btn-outline dropdown-toggle"
                                    data-toggle="dropdown"> Actions
                                <i class="fa fa-angle-down"></i>
                            </button>
                            <ul class="dropdown-menu pull-right" role="menu">
                                <li>
                                    <a href="#">
                                        <i class="icon-bell"></i> Action</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-shield"></i> Another action</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="icon-user"></i> Something else here</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <i class="icon-bag"></i> Separated link</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- END PAGE BAR -->
                <!-- BEGIN PAGE TITLE-->
                <h1 class="page-title"> Search Results 3
                    <small>search results</small>
                </h1>
                <!-- END PAGE TITLE-->
                <!-- END PAGE HEADER-->
                <div class="search-page search-content-2">
                    <div class="search-bar ">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for...">
                                            <span class="input-group-btn">
                                                <button class="btn blue uppercase bold" type="button">Search</button>
                                            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-7">
                            <div class="search-container ">
                                <ul class="search-container">
                                    <li class="search-item clearfix">
                                        <div class="search-content text-left">
                                            <h2 class="search-title">
                                                <a href="javascript:;">Metronic Search Results</a>
                                            </h2>
                                            <p class="search-desc"> Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit. Donec efficitur pellentesque auctor. Morbi lobortis, leo in
                                                tristique scelerisque, mauris quam volutpat nunc </p>
                                        </div>
                                    </li>
                                    <li class="search-item clearfix">
                                        <div class="search-content text-left">
                                            <h2 class="search-title">
                                                <a href="javascript:;">Lorem ipsum dolor</a>
                                            </h2>
                                            <p class="search-desc"> Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit. Donec efficitur pellentesque auctor. Morbi lobortis, leo in
                                                tristique scelerisque, mauris quam volutpat nunc </p>
                                        </div>
                                    </li>
                                    <li class="search-item clearfix">
                                        <div class="search-content text-left">
                                            <h2 class="search-title">
                                                <a href="javascript:;">sit amet</a>
                                            </h2>
                                            <p class="search-desc"> Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit. Donec efficitur pellentesque auctor. Morbi lobortis, leo in
                                                tristique scelerisque, mauris quam volutpat nunc </p>
                                        </div>
                                    </li>
                                    <li class="search-item clearfix">
                                        <div class="search-content text-left">
                                            <h2 class="search-title">
                                                <a href="javascript:;">consectetur adipiscing</a>
                                            </h2>
                                            <p class="search-desc"> Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit. Donec efficitur pellentesque auctor. Morbi lobortis, leo in
                                                tristique scelerisque, mauris quam volutpat nunc </p>
                                        </div>
                                    </li>
                                    <li class="search-item clearfix">
                                        <div class="search-content text-left">
                                            <h2 class="search-title">
                                                <a href="javascript:;">Metronic Search Reborn</a>
                                            </h2>
                                            <p class="search-desc"> Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit. Donec efficitur pellentesque auctor. Morbi lobortis, leo in
                                                tristique scelerisque, mauris quam volutpat nunc </p>
                                        </div>
                                    </li>
                                    <li class="search-item clearfix">
                                        <div class="search-content text-left">
                                            <h2 class="search-title">
                                                <a href="javascript:;">tristique scelerisque</a>
                                            </h2>
                                            <p class="search-desc"> Lorem ipsum dolor sit amet, consectetur adipiscing
                                                elit. Donec efficitur pellentesque auctor. Morbi lobortis, leo in
                                                tristique scelerisque, mauris quam volutpat nunc </p>
                                        </div>
                                    </li>
                                </ul>
                                <div class="search-pagination">
                                    <ul class="pagination">
                                        <li class="page-active">
                                            <a href="javascript:;"> 1 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"> 2 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"> 3 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"> 4 </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <!-- BEGIN PORTLET-->
                            <div class="portlet light ">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="icon-edit font-dark"></i>
                                        <span class="caption-subject font-dark bold uppercase">Notes</span>
                                    </div>
                                    <div class="actions">
                                        <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                            <i class="icon-cloud-upload"></i>
                                        </a>
                                        <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                            <i class="icon-wrench"></i>
                                        </a>
                                        <a class="btn btn-circle btn-icon-only btn-default fullscreen"
                                           href="javascript:;"> </a>
                                        <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                            <i class="icon-trash"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="note note-success">
                                        <h4 class="block">Success! Some Header Goes Here</h4>
                                        <p> Duis mollis, est non commodo luctus, nisi erat mattis consectetur purus sit
                                            amet porttitor ligula, eget lacinia odio sem nec elit. Cras mattis
                                            consectetur purus sit amet fermentum. </p>
                                    </div>
                                    <div class="note note-info">
                                        <h4 class="block">Info! Some Header Goes Here</h4>
                                        <p> Duis mollis, est non commodo luctus, nisi erat porttitor ligula, mattis
                                            consectetur purus sit amet eget lacinia odio sem nec elit. Cras mattis
                                            consectetur purus sit amet fermentum. </p>
                                    </div>
                                    <div class="note note-danger">
                                        <h4 class="block">Danger! Some Header Goes Here</h4>
                                        <p> Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget
                                            lacinia odio sem nec elit mattis consectetur purus sit amet.\ Cras mattis
                                            consectetur purus sit amet fermentum. </p>
                                    </div>
                                    <div class="note note-warning">
                                        <h4 class="block">Warning! Some Header Goes Here</h4>
                                        <p> Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget
                                            lacinia odio sem nec elit mattis consectetur purus sit amet. Cras mattis
                                            consectetur purus sit amet fermentum. </p>
                                    </div>
                                </div>
                            </div>
                            <!-- END PORTLET-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- END CONTENT BODY -->
        </div>
        <!-- END CONTENT -->
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    <!-- END FOOTER -->
</div>
<!-- BEGIN CORE PLUGINS -->
<script src="${ctx}/resources/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
        type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
        type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="${ctx}/resources/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
        type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="${ctx}/resources/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${ctx}/resources/pages/scripts/search.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="${ctx}/resources/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>