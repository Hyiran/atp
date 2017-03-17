<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh_CN">
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8"/>
    <title>404 Page </title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="找不到页面"
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
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="${ctx}/resources/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css"/>
    <link href="${ctx}/resources/global/css/plugins.min.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <link href="${ctx}/resources/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/layouts/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css"
          id="style_color"/>
    <link href="${ctx}/resources/layouts/layout/css/custom.min.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
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
                            <a href="../index.jsp">Home</a>
                            <i class="fa fa-circle"></i>
                        </li>
                        <li>
                            <span>Charts</span>
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
                <h1 class="page-title"> amChart
                    <small>charting library & maps. Where all data goes visual with amChart plugin</small>
                </h1>
                <!-- END PAGE TITLE-->
                <!-- END PAGE HEADER-->
                <div class="m-heading-1 border-green m-bordered">
                    <p> You can download and use all amCharts products for free. The only limitation of the free version
                        is that a small link to this web site will be displayed in the top left corner of your charts.
                        If you would like to use charts
                        without this link, or you appreciate the software and would like to support its creators,
                        <a href="http://www.amcharts.com/online-store/" target="_blank"> please purchase a commercial
                            license</a>
                    </p>
                    <p>
                        <span class="label label-success">Exclusively for Metronic users:</span>
                        <br> After purchasing Metronic you will get a promo code for
                        <span class="label label-danger">15% DISCOUNT</span> for commercial license of amChart. To find
                        the promo code please check the readme.txt file in the Metronic's purchased package. </p>
                    <p> For more info please chech the plugin's official
                        <a class="btn red btn-outline" href="http://www.amcharts.com/demos/" target="_blank">demos &
                            documentation</a>
                    </p>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN ROW -->
                        <div class="row">
                            <div class="col-md-12">
                                <!-- BEGIN CHART PORTLET-->
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-bar-chart font-green-haze"></i>
                                            <span class="caption-subject bold uppercase font-green-haze"> Bar Charts</span>
                                            <span class="caption-helper">column and line mix</span>
                                        </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                            <a href="javascript:;" class="reload"> </a>
                                            <a href="javascript:;" class="fullscreen"> </a>
                                            <a href="javascript:;" class="remove"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="chart_1" class="chart" style="height: 500px;"></div>
                                    </div>
                                </div>
                                <!-- END CHART PORTLET-->
                            </div>
                        </div>
                        <!-- END ROW -->
                        <!-- BEGIN ROW -->
                        <div class="row">
                            <div class="col-md-12">
                                <!-- BEGIN CHART PORTLET-->
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-bar-chart font-green-haze"></i>
                                            <span class="caption-subject bold uppercase font-green-haze"> Line & Area</span>
                                            <span class="caption-helper">with changing color</span>
                                        </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                            <a href="javascript:;" class="reload"> </a>
                                            <a href="javascript:;" class="fullscreen"> </a>
                                            <a href="javascript:;" class="remove"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="chart_3" class="chart" style="height: 400px;"></div>
                                    </div>
                                </div>
                                <!-- END CHART PORTLET-->
                            </div>
                        </div>
                        <!-- END ROW -->
                        <!-- BEGIN ROW -->
                        <div class="row">
                            <div class="col-md-6">
                                <!-- BEGIN CHART PORTLET-->
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-bar-chart font-green-haze"></i>
                                            <span class="caption-subject bold uppercase font-green-haze"> Simple Pie Chart</span>
                                        </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                            <a href="javascript:;" class="reload"> </a>
                                            <a href="javascript:;" class="fullscreen"> </a>
                                            <a href="javascript:;" class="remove"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="chart_6" class="chart" style="height: 525px;"></div>
                                    </div>
                                </div>
                                <!-- END CHART PORTLET-->
                            </div>
                            <div class="col-md-6">
                                <!-- BEGIN CHART PORTLET-->
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-bar-chart font-green-haze"></i>
                                            <span class="caption-subject bold uppercase font-green-haze"> 3D Pie Chart</span>
                                            <span class="caption-helper">bar and line chart mix</span>
                                        </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                            <a href="javascript:;" class="reload"> </a>
                                            <a href="javascript:;" class="fullscreen"> </a>
                                            <a href="javascript:;" class="remove"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="chart_7" class="chart" style="height: 400px;"></div>
                                        <div class="well margin-top-20">
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <label class="text-left">Top Radius:</label>
                                                    <input class="chart_7_chart_input" data-property="topRadius"
                                                           type="range" min="0" max="1.5" value="1" step="0.01"/></div>
                                                <div class="col-sm-3">
                                                    <label class="text-left">Angle:</label>
                                                    <input class="chart_7_chart_input" data-property="angle"
                                                           type="range" min="0" max="89" value="30" step="1"/></div>
                                                <div class="col-sm-3">
                                                    <label class="text-left">Depth:</label>
                                                    <input class="chart_7_chart_input" data-property="depth3D"
                                                           type="range" min="1" max="120" value="40" step="1"/></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END CHART PORTLET-->
                            </div>
                        </div>
                        <!-- END ROW -->
                        <!-- BEGIN ROW -->
                        <div class="row">
                            <div class="col-md-12">
                                <!-- BEGIN CHART PORTLET-->
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-bar-chart font-green-haze"></i>
                                            <span class="caption-subject bold uppercase font-green-haze"> Stock Charts</span>
                                            <span class="caption-helper">with stock events</span>
                                        </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                            <a href="javascript:;" class="reload"> </a>
                                            <a href="javascript:;" class="fullscreen"> </a>
                                            <a href="javascript:;" class="remove"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="chart_12" class="chart" style="height: 500px;"></div>
                                    </div>
                                </div>
                                <!-- END CHART PORTLET-->
                            </div>
                        </div>
                        <!-- END ROW -->
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
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="${ctx}/resources/pages/scripts/charts-amcharts.min.js" type="text/javascript"></script>

<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="${ctx}/resources/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>