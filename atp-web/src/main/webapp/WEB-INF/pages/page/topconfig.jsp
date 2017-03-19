<%@ page language="java"  pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>

<!DOCTYPE html>
<html lang="zh_CN">
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>Config Page </title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="列表页"
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
    <link href="${ctx}/resources/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet"
          type="text/css"/>
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
                            <a href="${ctx}/page/index">Home</a>
                            <i class="fa fa-circle"></i>
                        </li>
                        <li>
                            <a href="#">Tables</a>
                            <i class="fa fa-circle"></i>
                        </li>
                        <li>
                            <span>Datatables</span>
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
                <h1 class="page-title"> Managed Datatables
                    <small>managed datatable samples</small>
                </h1>
                <!-- END PAGE TITLE-->
                <!-- END PAGE HEADER-->
                <div class="m-heading-1 border-green m-bordered">
                    <h3>DataTables jQuery Plugin</h3>
                    <p> DataTables is a plug-in for the jQuery Javascript library. It is a highly flexible tool, based
                        upon the foundations of progressive enhancement, and will add advanced interaction controls to
                        any HTML table. </p>
                    <p> For more info please check out
                        <a class="btn red btn-outline" href="http://datatables.net/" target="_blank">the official
                            documentation</a>
                    </p>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                        <div class="portlet light bordered">
                            <div class="portlet-title">
                                <div class="caption font-dark">
                                    <i class="icon-settings font-dark"></i>
                                    <span class="caption-subject bold uppercase"> Individual column searching (select inputs)</span>
                                </div>
                                <div class="actions">
                                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                                        <label class="btn btn-transparent dark btn-outline btn-circle btn-sm active">
                                            <input type="radio" name="options" class="toggle"
                                                   id="option1">Actions</label>
                                        <label class="btn btn-transparent dark btn-outline btn-circle btn-sm">
                                            <input type="radio" name="options" class="toggle"
                                                   id="option2">Settings</label>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-toolbar">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="btn-group">
                                                <button id="sample_editable_1_2_new" class="btn sbold green"> Add New
                                                    <i class="fa fa-plus"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="btn-group pull-right">
                                                <button class="btn green  btn-outline dropdown-toggle"
                                                        data-toggle="dropdown">Tools
                                                    <i class="fa fa-angle-down"></i>
                                                </button>
                                                <ul class="dropdown-menu pull-right">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="fa fa-print"></i> Print </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="fa fa-file-pdf-o"></i> Save as PDF </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="fa fa-file-excel-o"></i> Export to Excel </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                       id="sample_1_2">
                                    <thead>
                                    <tr>
                                        <th>
                                            <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                <input type="checkbox" class="group-checkable"
                                                       data-set="#sample_1_2 .checkboxes"/>
                                                <span></span>
                                            </label>
                                        </th>
                                        <th> ConfigType</th>
                                        <th> Config</th>
                                        <th> Status</th>
                                        <th> CreatTime</th>
                                        <th>CreatUser</th>
                                        <th> Actions</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach var="item" items="${cfgList}">
                                        <tr class="odd gradeX">
                                            <td>
                                                <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                    <input type="checkbox" class="checkboxes" value="1"/>
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${item.configType == 1}"><span> InstId</span></c:when>
                                                    <c:when test="${item.configType == 2}"><span> BusinType</span></c:when>
                                                    <c:when test="${item.configType == 3}"><span> URL</span></c:when>
                                                </c:choose>
                                            </td>
                                            <td>${item.config}</td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${item.status == 0}"><span
                                                            class="label label-sm label-success"> 可用 </span></c:when>
                                                    <c:when test="${item.status == 0}"><span
                                                            class="label label-sm label-warning"> 不可用 </span></c:when>
                                                </c:choose>
                                            </td>
                                            <td class="center"> ${item.creatTime}</td>
                                            <td class="center">${item.creatUser}</td>
                                            <td>
                                                <div class="btn-group">
                                                    <button class="btn btn-xs green dropdown-toggle" type="button"
                                                            data-toggle="dropdown" aria-expanded="false"> Actions
                                                        <i class="fa fa-angle-down"></i>
                                                    </button>
                                                    <ul class="dropdown-menu pull-left" role="menu">
                                                        <li>
                                                            <a href="javascript:;" onclick="cfgdisable(${item.id},${item.status})">
                                                                <i class="icon-docs"></i> Disable </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <i class="icon-tag"></i> Enable </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <i class="icon-user"></i> New User </a>
                                                        </li>
                                                        <li class="divider"></li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <i class="icon-flag"></i> Comments
                                                                <span class="badge badge-success">4</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    <tr class="odd gradeX">
                                        <td>
                                            <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                <input type="checkbox" class="checkboxes" value="1"/>
                                                <span></span>
                                            </label>
                                        </td>
                                        <td> looper</td>
                                        <td>
                                            <a href="mailto:looper90@gmail.com"> looper90@gmail.com </a>
                                        </td>
                                        <td>
                                            <span class="label label-sm label-warning"> Suspended </span>
                                        </td>
                                        <td class="center"> 12.12.2011</td>
                                        <td class="center"> 12.12.2011</td>
                                        <td>
                                            <div class="btn-group">
                                                <button class="btn btn-xs green dropdown-toggle" type="button"
                                                        data-toggle="dropdown" aria-expanded="false"> Actions
                                                    <i class="fa fa-angle-down"></i>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-docs"></i> New Post </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-tag"></i> New Comment </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-user"></i> New User </a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-flag"></i> Comments
                                                            <span class="badge badge-success">4</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>
                                            <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                <input type="checkbox" class="checkboxes" value="1"/>
                                                <span></span>
                                            </label>
                                        </td>
                                        <td> user1wow</td>
                                        <td>
                                            <a href="mailto:userwow@gmail.com"> userwow@gmail.com </a>
                                        </td>
                                        <td>
                                            <span class="label label-sm label-danger"> Blocked </span>
                                        </td>
                                        <td class="center"> 12.12.2011</td>
                                        <td class="center"> 12.12.2011</td>
                                        <td>
                                            <div class="btn-group">
                                                <button class="btn btn-xs green dropdown-toggle" type="button"
                                                        data-toggle="dropdown" aria-expanded="false"> Actions
                                                    <i class="fa fa-angle-down"></i>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-docs"></i> New Post </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-tag"></i> New Comment </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-user"></i> New User </a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-flag"></i> Comments
                                                            <span class="badge badge-success">4</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>
                                            <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                <input type="checkbox" class="checkboxes" value="1"/>
                                                <span></span>
                                            </label>
                                        </td>
                                        <td> foopl</td>
                                        <td>
                                            <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                        </td>
                                        <td>
                                            <span class="label label-sm label-info"> Info </span>
                                        </td>
                                        <td class="center"> 12.12.2011</td>
                                        <td class="center"> 12.12.2011</td>
                                        <td>
                                            <div class="btn-group">
                                                <button class="btn btn-xs green dropdown-toggle" type="button"
                                                        data-toggle="dropdown" aria-expanded="false"> Actions
                                                    <i class="fa fa-angle-down"></i>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-docs"></i> New Post </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-tag"></i> New Comment </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-user"></i> New User </a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-flag"></i> Comments
                                                            <span class="badge badge-success">4</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>
                                            <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                <input type="checkbox" class="checkboxes" value="1"/>
                                                <span></span>
                                            </label>
                                        </td>
                                        <td> weep</td>
                                        <td>
                                            <a href="mailto:userwow@gmail.com"> good@gmail.com </a>
                                        </td>
                                        <td>
                                            <span class="label label-sm label-danger"> Rejected </span>
                                        </td>
                                        <td class="center"> 12.12.2011</td>
                                        <td class="center"> 12.12.2011</td>
                                        <td>
                                            <div class="btn-group">
                                                <button class="btn btn-xs green dropdown-toggle" type="button"
                                                        data-toggle="dropdown" aria-expanded="false"> Actions
                                                    <i class="fa fa-angle-down"></i>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-docs"></i> New Post </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-tag"></i> New Comment </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-user"></i> New User </a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="icon-flag"></i> Comments
                                                            <span class="badge badge-success">4</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END EXAMPLE TABLE PORTLET-->
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
<script src="${ctx}/resources/global/scripts/datatable.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"
        type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="${ctx}/resources/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${ctx}/resources/pages/scripts/table-datatables-managed.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="${ctx}/resources/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>