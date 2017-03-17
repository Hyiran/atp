<%@ page language="java" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>

<!DOCTYPE html>
<html lang="zh_CN">
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>首页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="自动化测试平台"
          name="description"/>
    <meta content="han" name="author"/>
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
    <link href="${ctx}/resources/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="${ctx}/resources/global/plugins/morris/morris.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL PLUGINS -->
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
    <link rel="shortcut icon" href="${ctx}/resources/favicon.ico"/>
</head>
<!-- END HEAD -->

<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
<div class="page-wrapper">
    <!-- BEGIN HEADER -->
    <jsp:include page="./common/header.jsp"></jsp:include>
    <!-- END HEADER -->
    <!-- BEGIN HEADER & CONTENT DIVIDER -->
    <div class="clearfix"></div>
    <!-- END HEADER & CONTENT DIVIDER -->
    <!-- BEGIN CONTAINER -->
    <div class="page-container">
        <!-- BEGIN SIDEBAR -->
        <jsp:include page="./common/sidebar.jsp"></jsp:include>
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
                            <a href="${ctx}/page/index">Home</a>
                            <i class="fa fa-circle"></i>
                        </li>
                        <li>
                            <span>Dashboard</span>
                        </li>
                    </ul>
                    <div class="page-toolbar">
                        <div id="dashboard-report-range" class="pull-right tooltips btn btn-sm" data-container="body"
                             data-placement="bottom" data-original-title="Change dashboard date range">
                            <i class="icon-calendar"></i>&nbsp;
                            <span class="thin uppercase hidden-xs"></span>&nbsp;
                            <i class="fa fa-angle-down"></i>
                        </div>
                    </div>
                </div>
                <!-- END PAGE BAR -->
                <!-- BEGIN PAGE TITLE-->
                <h1 class="page-title"> Admin Dashboard
                    <small>statistics, charts, recent events and reports</small>
                </h1>
                <!-- END PAGE TITLE-->
                <!-- END PAGE HEADER-->
                <!-- BEGIN DASHBOARD STATS 1-->
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a class="dashboard-stat dashboard-stat-v2 blue" href="#">
                            <div class="visual">
                                <i class="fa fa-comments"></i>
                            </div>
                            <div class="details">
                                <div class="number">
                                    <span data-counter="counterup" data-value="1349">0</span>
                                </div>
                                <div class="desc"> New Feedbacks</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a class="dashboard-stat dashboard-stat-v2 red" href="#">
                            <div class="visual">
                                <i class="fa fa-bar-chart-o"></i>
                            </div>
                            <div class="details">
                                <div class="number">
                                    <span data-counter="counterup" data-value="12,5">0</span>M$
                                </div>
                                <div class="desc"> Total Profit</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a class="dashboard-stat dashboard-stat-v2 green" href="#">
                            <div class="visual">
                                <i class="fa fa-shopping-cart"></i>
                            </div>
                            <div class="details">
                                <div class="number">
                                    <span data-counter="counterup" data-value="549">0</span>
                                </div>
                                <div class="desc"> New Orders</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a class="dashboard-stat dashboard-stat-v2 purple" href="#">
                            <div class="visual">
                                <i class="fa fa-globe"></i>
                            </div>
                            <div class="details">
                                <div class="number"> +
                                    <span data-counter="counterup" data-value="89"></span>%
                                </div>
                                <div class="desc"> Brand Popularity</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="clearfix"></div>
                <!-- END DASHBOARD STATS 1-->
                <div class="row">
                    <div class="col-lg-6 col-xs-12 col-sm-12">
                        <!-- BEGIN PORTLET-->
                        <div class="portlet light bordered">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-bar-chart font-dark hide"></i>
                                    <span class="caption-subject font-dark bold uppercase">Site Visits</span>
                                    <span class="caption-helper">weekly stats...</span>
                                </div>
                                <div class="actions">
                                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                                        <label class="btn red btn-outline btn-circle btn-sm active">
                                            <input type="radio" name="options" class="toggle" id="option1">New</label>
                                        <label class="btn red btn-outline btn-circle btn-sm">
                                            <input type="radio" name="options" class="toggle"
                                                   id="option2">Returning</label>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div id="site_statistics_loading">
                                    <img src="${ctx}/resources/global/img/loading.gif" alt="loading"/></div>
                                <div id="site_statistics_content" class="display-none">
                                    <div id="site_statistics" class="chart"></div>
                                </div>
                            </div>
                        </div>
                        <!-- END PORTLET-->
                    </div>
                    <div class="col-lg-6 col-xs-12 col-sm-12">
                        <!-- BEGIN PORTLET-->
                        <div class="portlet light bordered">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-share font-red-sunglo hide"></i>
                                    <span class="caption-subject font-dark bold uppercase">Revenue</span>
                                    <span class="caption-helper">monthly stats...</span>
                                </div>
                                <div class="actions">
                                    <div class="btn-group">
                                        <a href="" class="btn dark btn-outline btn-circle btn-sm dropdown-toggle"
                                           data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Filter
                                            Range
                                            <span class="fa fa-angle-down"> </span>
                                        </a>
                                        <ul class="dropdown-menu pull-right">
                                            <li>
                                                <a href="javascript:;"> Q1 2014
                                                    <span class="label label-sm label-default"> past </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> Q2 2014
                                                    <span class="label label-sm label-default"> past </span>
                                                </a>
                                            </li>
                                            <li class="active">
                                                <a href="javascript:;"> Q3 2014
                                                    <span class="label label-sm label-success"> current </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> Q4 2014
                                                    <span class="label label-sm label-warning"> upcoming </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div id="site_activities_loading">
                                    <img src="${ctx}/resources/global/img/loading.gif" alt="loading"/></div>
                                <div id="site_activities_content" class="display-none">
                                    <div id="site_activities" style="height: 228px;"></div>
                                </div>
                                <div style="margin: 20px 0 10px 30px">
                                    <div class="row">
                                        <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                            <span class="label label-sm label-success"> Revenue: </span>
                                            <h3>$13,234</h3>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                            <span class="label label-sm label-info"> Tax: </span>
                                            <h3>$134,900</h3>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                            <span class="label label-sm label-danger"> Shipment: </span>
                                            <h3>$1,134</h3>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                            <span class="label label-sm label-warning"> Orders: </span>
                                            <h3>235090</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END PORTLET-->
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-xs-12 col-sm-12">
                        <div class="portlet light bordered">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-share font-dark hide"></i>
                                    <span class="caption-subject font-dark bold uppercase">Recent Activities</span>
                                </div>
                                <div class="actions">
                                    <div class="btn-group">
                                        <a class="btn btn-sm blue btn-outline btn-circle" href="javascript:;"
                                           data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Filter
                                            By
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                        <div class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
                                            <label class="mt-checkbox mt-checkbox-outline">
                                                <input type="checkbox"/> Finance
                                                <span></span>
                                            </label>
                                            <label class="mt-checkbox mt-checkbox-outline">
                                                <input type="checkbox" checked=""/> Membership
                                                <span></span>
                                            </label>
                                            <label class="mt-checkbox mt-checkbox-outline">
                                                <input type="checkbox"/> Customer Support
                                                <span></span>
                                            </label>
                                            <label class="mt-checkbox mt-checkbox-outline">
                                                <input type="checkbox" checked=""/> HR
                                                <span></span>
                                            </label>
                                            <label class="mt-checkbox mt-checkbox-outline">
                                                <input type="checkbox"/> System
                                                <span></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="scroller" style="height: 300px;" data-always-visible="1"
                                     data-rail-visible="0">
                                    <ul class="feeds">
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-info">
                                                            <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 4 pending tasks.
                                                                    <span class="label label-sm label-warning "> Take action
                                                                        <i class="fa fa-share"></i>
                                                                    </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> Just now</div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <div class="col1">
                                                    <div class="cont">
                                                        <div class="cont-col1">
                                                            <div class="label label-sm label-success">
                                                                <i class="fa fa-bar-chart-o"></i>
                                                            </div>
                                                        </div>
                                                        <div class="cont-col2">
                                                            <div class="desc"> Finance Report for year 2013 has been
                                                                released.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col2">
                                                    <div class="date"> 20 mins</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-danger">
                                                            <i class="fa fa-user"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 5 pending membership that requires a
                                                            quick review.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 24 mins</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-info">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> New order received with
                                                            <span class="label label-sm label-success"> Reference Number: DR23923 </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 30 mins</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-success">
                                                            <i class="fa fa-user"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 5 pending membership that requires a
                                                            quick review.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 24 mins</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-default">
                                                            <i class="fa fa-bell-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> Web server hardware needs to be upgraded.
                                                            <span class="label label-sm label-default "> Overdue </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 2 hours</div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <div class="col1">
                                                    <div class="cont">
                                                        <div class="cont-col1">
                                                            <div class="label label-sm label-default">
                                                                <i class="fa fa-briefcase"></i>
                                                            </div>
                                                        </div>
                                                        <div class="cont-col2">
                                                            <div class="desc"> IPO Report for year 2013 has been
                                                                released.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col2">
                                                    <div class="date"> 20 mins</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-info">
                                                            <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 4 pending tasks.
                                                                    <span class="label label-sm label-warning "> Take action
                                                                        <i class="fa fa-share"></i>
                                                                    </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> Just now</div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <div class="col1">
                                                    <div class="cont">
                                                        <div class="cont-col1">
                                                            <div class="label label-sm label-danger">
                                                                <i class="fa fa-bar-chart-o"></i>
                                                            </div>
                                                        </div>
                                                        <div class="cont-col2">
                                                            <div class="desc"> Finance Report for year 2013 has been
                                                                released.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col2">
                                                    <div class="date"> 20 mins</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-default">
                                                            <i class="fa fa-user"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 5 pending membership that requires a
                                                            quick review.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 24 mins</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-info">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> New order received with
                                                            <span class="label label-sm label-success"> Reference Number: DR23923 </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 30 mins</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-success">
                                                            <i class="fa fa-user"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> You have 5 pending membership that requires a
                                                            quick review.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 24 mins</div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col1">
                                                <div class="cont">
                                                    <div class="cont-col1">
                                                        <div class="label label-sm label-warning">
                                                            <i class="fa fa-bell-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="cont-col2">
                                                        <div class="desc"> Web server hardware needs to be upgraded.
                                                            <span class="label label-sm label-default "> Overdue </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col2">
                                                <div class="date"> 2 hours</div>
                                            </div>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <div class="col1">
                                                    <div class="cont">
                                                        <div class="cont-col1">
                                                            <div class="label label-sm label-info">
                                                                <i class="fa fa-briefcase"></i>
                                                            </div>
                                                        </div>
                                                        <div class="cont-col2">
                                                            <div class="desc"> IPO Report for year 2013 has been
                                                                released.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col2">
                                                    <div class="date"> 20 mins</div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="scroller-footer">
                                    <div class="btn-arrow-link pull-right">
                                        <a href="javascript:;">See All Records</a>
                                        <i class="icon-arrow-right"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xs-12 col-sm-12">
                        <div class="portlet light tasks-widget bordered">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-share font-dark hide"></i>
                                    <span class="caption-subject font-dark bold uppercase">Tasks</span>
                                    <span class="caption-helper">tasks summary...</span>
                                </div>
                                <div class="actions">
                                    <div class="btn-group">
                                        <a class="btn blue-oleo btn-circle btn-sm" href="javascript:;"
                                           data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> More
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                        <ul class="dropdown-menu pull-right">
                                            <li>
                                                <a href="javascript:;"> All Project </a>
                                            </li>
                                            <li class="divider"></li>
                                            <li>
                                                <a href="javascript:;"> AirAsia </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> Cruise </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> HSBC </a>
                                            </li>
                                            <li class="divider"></li>
                                            <li>
                                                <a href="javascript:;"> Pending
                                                    <span class="badge badge-danger"> 4 </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> Completed
                                                    <span class="badge badge-success"> 12 </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> Overdue
                                                    <span class="badge badge-warning"> 9 </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="task-content">
                                    <div class="scroller" style="height: 312px;" data-always-visible="1"
                                         data-rail-visible1="1">
                                        <!-- START TASK LIST -->
                                        <ul class="task-list">
                                            <li>
                                                <div class="task-checkbox">
                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                        <input type="checkbox" class="checkboxes" value="1"/>
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="task-title">
                                                    <span class="task-title-sp"> Present 2013 Year IPO Statistics at Board Meeting </span>
                                                    <span class="label label-sm label-success">Company</span>
                                                            <span class="task-bell">
                                                                <i class="fa fa-bell-o"></i>
                                                            </span>
                                                </div>
                                                <div class="task-config">
                                                    <div class="task-config-btn btn-group">
                                                        <a class="btn btn-sm default" href="javascript:;"
                                                           data-toggle="dropdown" data-hover="dropdown"
                                                           data-close-others="true">
                                                            <i class="fa fa-cog"></i>
                                                            <i class="fa fa-angle-down"></i>
                                                        </a>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-check"></i> Complete </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-pencil"></i> Edit </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-trash-o"></i> Cancel </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="task-checkbox">
                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                        <input type="checkbox" class="checkboxes" value="1"/>
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="task-title">
                                                    <span class="task-title-sp"> Hold An Interview for Marketing Manager Position </span>
                                                    <span class="label label-sm label-danger">Marketing</span>
                                                </div>
                                                <div class="task-config">
                                                    <div class="task-config-btn btn-group">
                                                        <a class="btn btn-sm default" href="javascript:;"
                                                           data-toggle="dropdown" data-hover="dropdown"
                                                           data-close-others="true">
                                                            <i class="fa fa-cog"></i>
                                                            <i class="fa fa-angle-down"></i>
                                                        </a>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-check"></i> Complete </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-pencil"></i> Edit </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-trash-o"></i> Cancel </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="task-checkbox">
                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                        <input type="checkbox" class="checkboxes" value="1"/>
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="task-title">
                                                    <span class="task-title-sp"> AirAsia Intranet System Project Internal Meeting </span>
                                                    <span class="label label-sm label-success">AirAsia</span>
                                                            <span class="task-bell">
                                                                <i class="fa fa-bell-o"></i>
                                                            </span>
                                                </div>
                                                <div class="task-config">
                                                    <div class="task-config-btn btn-group">
                                                        <a class="btn btn-sm default" href="javascript:;"
                                                           data-toggle="dropdown" data-hover="dropdown"
                                                           data-close-others="true">
                                                            <i class="fa fa-cog"></i>
                                                            <i class="fa fa-angle-down"></i>
                                                        </a>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-check"></i> Complete </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-pencil"></i> Edit </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-trash-o"></i> Cancel </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="task-checkbox">
                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                        <input type="checkbox" class="checkboxes" value="1"/>
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="task-title">
                                                    <span class="task-title-sp"> Technical Management Meeting </span>
                                                    <span class="label label-sm label-warning">Company</span>
                                                </div>
                                                <div class="task-config">
                                                    <div class="task-config-btn btn-group">
                                                        <a class="btn btn-sm default" href="javascript:;"
                                                           data-toggle="dropdown" data-hover="dropdown"
                                                           data-close-others="true">
                                                            <i class="fa fa-cog"></i>
                                                            <i class="fa fa-angle-down"></i>
                                                        </a>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-check"></i> Complete </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-pencil"></i> Edit </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-trash-o"></i> Cancel </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="task-checkbox">
                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                        <input type="checkbox" class="checkboxes" value="1"/>
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="task-title">
                                                    <span class="task-title-sp"> Kick-off Company CRM Mobile App Development </span>
                                                    <span class="label label-sm label-info">Internal Products</span>
                                                </div>
                                                <div class="task-config">
                                                    <div class="task-config-btn btn-group">
                                                        <a class="btn btn-sm default" href="javascript:;"
                                                           data-toggle="dropdown" data-hover="dropdown"
                                                           data-close-others="true">
                                                            <i class="fa fa-cog"></i>
                                                            <i class="fa fa-angle-down"></i>
                                                        </a>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-check"></i> Complete </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-pencil"></i> Edit </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-trash-o"></i> Cancel </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="task-checkbox">
                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                        <input type="checkbox" class="checkboxes" value="1"/>
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="task-title">
                                                    <span class="task-title-sp"> Prepare Commercial Offer For SmartVision Website Rewamp </span>
                                                    <span class="label label-sm label-danger">SmartVision</span>
                                                </div>
                                                <div class="task-config">
                                                    <div class="task-config-btn btn-group">
                                                        <a class="btn btn-sm default" href="javascript:;"
                                                           data-toggle="dropdown" data-hover="dropdown"
                                                           data-close-others="true">
                                                            <i class="fa fa-cog"></i>
                                                            <i class="fa fa-angle-down"></i>
                                                        </a>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-check"></i> Complete </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-pencil"></i> Edit </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-trash-o"></i> Cancel </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="task-checkbox">
                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                        <input type="checkbox" class="checkboxes" value="1"/>
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="task-title">
                                                    <span class="task-title-sp"> Sign-Off The Comercial Agreement With AutoSmart </span>
                                                    <span class="label label-sm label-default">AutoSmart</span>
                                                            <span class="task-bell">
                                                                <i class="fa fa-bell-o"></i>
                                                            </span>
                                                </div>
                                                <div class="task-config">
                                                    <div class="task-config-btn btn-group dropup">
                                                        <a class="btn btn-sm default" href="javascript:;"
                                                           data-toggle="dropdown" data-hover="dropdown"
                                                           data-close-others="true">
                                                            <i class="fa fa-cog"></i>
                                                            <i class="fa fa-angle-down"></i>
                                                        </a>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-check"></i> Complete </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-pencil"></i> Edit </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-trash-o"></i> Cancel </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="task-checkbox">
                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                        <input type="checkbox" class="checkboxes" value="1"/>
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="task-title">
                                                    <span class="task-title-sp"> Company Staff Meeting </span>
                                                    <span class="label label-sm label-success">Cruise</span>
                                                            <span class="task-bell">
                                                                <i class="fa fa-bell-o"></i>
                                                            </span>
                                                </div>
                                                <div class="task-config">
                                                    <div class="task-config-btn btn-group dropup">
                                                        <a class="btn btn-sm default" href="javascript:;"
                                                           data-toggle="dropdown" data-hover="dropdown"
                                                           data-close-others="true">
                                                            <i class="fa fa-cog"></i>
                                                            <i class="fa fa-angle-down"></i>
                                                        </a>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-check"></i> Complete </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-pencil"></i> Edit </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-trash-o"></i> Cancel </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="last-line">
                                                <div class="task-checkbox">
                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                        <input type="checkbox" class="checkboxes" value="1"/>
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="task-title">
                                                    <span class="task-title-sp"> KeenThemes Investment Discussion </span>
                                                    <span class="label label-sm label-warning">KeenThemes </span>
                                                </div>
                                                <div class="task-config">
                                                    <div class="task-config-btn btn-group dropup">
                                                        <a class="btn btn-sm default" href="javascript:;"
                                                           data-toggle="dropdown" data-hover="dropdown"
                                                           data-close-others="true">
                                                            <i class="fa fa-cog"></i>
                                                            <i class="fa fa-angle-down"></i>
                                                        </a>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-check"></i> Complete </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-pencil"></i> Edit </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;">
                                                                    <i class="fa fa-trash-o"></i> Cancel </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <!-- END START TASK LIST -->
                                    </div>
                                </div>
                                <div class="task-footer">
                                    <div class="btn-arrow-link pull-right">
                                        <a href="javascript:;">See All Records</a>
                                        <i class="icon-arrow-right"></i>
                                    </div>
                                </div>
                            </div>
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
    <jsp:include page="./common/footer.jsp"></jsp:include>
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
<script src="${ctx}/resources/global/plugins/moment.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js"
        type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/morris/morris.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/morris/raphael-min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/counterup/jquery.waypoints.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/amcharts/amcharts/amcharts.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/amcharts/amcharts/serial.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/amcharts/amcharts/pie.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/amcharts/amcharts/radar.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/amcharts/amcharts/themes/light.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/amcharts/amcharts/themes/patterns.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/amcharts/amcharts/themes/chalk.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/amcharts/ammap/ammap.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/amcharts/ammap/maps/js/worldLow.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/horizontal-timeline/horizontal-timeline.js"
        type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js"
        type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"
        type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="${ctx}/resources/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${ctx}/resources/pages/scripts/dashboard.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="${ctx}/resources/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>