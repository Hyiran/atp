<%@ page language="java" pageEncoding="utf-8" %>
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
    <link href="${ctx}/resources/global/plugins/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/resources/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet"
          type="text/css"/>
    <link href="${ctx}/resources/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet"
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
    <script>var contextPath = '${ctx}';</script>
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
                            </div>
                            <div class="portlet-body">
                                <div class="table-toolbar">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="btn-group">
                                                <a type="button" class="btn sbold green" data-toggle="modal"
                                                   data-target="#addConfigInfoModal" href="${ctx}/page/cfgadd"> Add
                                                    New
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- addConfigInfo Modal start -->
                                    <div class="modal fade " id="addConfigInfoModal" tabindex="-1"
                                         role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- addConfigInfo Modal end -->
                                    <div class="table-container">
                                        <table class="table table-striped table-bordered table-hover table-checkable"
                                               id="datatable_ajax">
                                            <thead>
                                            <tr role="row" class="heading">
                                                <th width="20%"> Date</th>
                                                <th width="15%"> InstId</th>
                                                <th width="15%"> BusinType</th>
                                                <th width="15%"> Status</th>
                                                <th width="20%"> Ship&nbsp;To</th>
                                                <th width="10%"> Actions</th>
                                            </tr>
                                            <tr role="row" class="filter">
                                                <td>
                                                    <div class="input-group date date-picker margin-bottom-5"
                                                         data-date-format="dd/mm/yyyy">
                                                        <input type="text" class="form-control form-filter input-sm"
                                                               readonly name="order_date_from" placeholder="From">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-sm default" type="button">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </button>
                                                                </span>
                                                    </div>
                                                    <div class="input-group date date-picker"
                                                         data-date-format="dd/mm/yyyy">
                                                        <input type="text" class="form-control form-filter input-sm"
                                                               readonly name="order_date_to" placeholder="To">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-sm default" type="button">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </button>
                                                                </span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <select class="form-control form-filter input-sm" data-style="btn-info">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="form-control form-filter input-sm" data-style="btn-info">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <select name="order_status"
                                                            class="form-control form-filter input-sm">
                                                        <option value="">Select...</option>
                                                        <option value="pending">Pending</option>
                                                        <option value="closed">Closed</option>
                                                        <option value="hold">On Hold</option>
                                                        <option value="fraud">Fraud</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="text" class="form-control form-filter input-sm"
                                                           name="order_ship_to"></td>
                                                <td>
                                                    <div class="margin-bottom-5">
                                                        <button class="btn btn-sm green btn-outline filter-submit margin-bottom">
                                                            <i class="fa fa-search"></i> Search
                                                        </button>
                                                    </div>
                                                    <button class="btn btn-sm red btn-outline filter-cancel" type="reset" >
                                                        <i class="fa fa-times"></i> Reset
                                                    </button>
                                                </td>
                                            </tr>
                                            </thead>
                                            <tbody></tbody>
                                        </table>
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
                                        <th> Description</th>
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
                                                    <c:when test="${item.status == 1}"><span
                                                            class="label label-sm label-warning"> 不可用 </span></c:when>
                                                </c:choose>
                                            </td>
                                            <td class="center"> ${item.description}</td>
                                            <td class="center"> ${item.creatTime}</td>
                                            <td class="center">${item.creatUser}</td>
                                            <td>
                                                <div class="btn-group">
                                                    <c:choose>
                                                        <c:when test="${item.status == 1}">
                                                            <button type="button"
                                                                    class="btn btn-circle btn-xs  btn-success"
                                                                    onclick="cfgstatus(${item.id},${item.status})">
                                                                Enable
                                                            </button>
                                                        </c:when>
                                                        <c:when test="${item.status == 0}">
                                                            <button type="button"
                                                                    class="btn btn-circle btn-xs  btn-warning"
                                                                    onclick="cfgstatus(${item.id},${item.status})">
                                                                Disable
                                                            </button>
                                                        </c:when>
                                                    </c:choose>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
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
<script src="${ctx}/resources/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="${ctx}/resources/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${ctx}/resources/pages/scripts/table-datatables-managed.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/pages/scripts/ui-modals.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/bootstrap-select/js/bootstrap-select.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/pages/scripts/components-bootstrap-select.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/pages/scripts/table-datatables-buttons.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="${ctx}/resources/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
<!--BEGIN CUSTOMＪＳ-->
<script src="${ctx}/resources/custom/js/actions.js" type="text/javascript"></script>
<script src="${ctx}/resources/custom/js/ajaxReq.js" type="text/javascript"></script>
<script src="${ctx}/resources/custom/js/common.js" type="text/javascript"></script>
<script> /*$(function () {
 $('#addConfigInfoModal').modal({
 // keyboard: true
 })
 });*/
//水平垂直居中显示
$(document).ready(function () {
    $('#addConfigInfoModal').on('shown.bs.modal', function (e) {
        // 关键代码，如没将modal设置为 block，则$modala_dialog.height() 为零
        $(this).css('display', 'block');
        var modalHeight = $(window).height() / 2 - $('#addConfigInfoModal .modal-dialog').height() / 2;
        $(this).find('.modal-dialog').css({
            'margin-top': modalHeight
        });
    });
});

</script>
<!--END CUSTOMＪＳ-->
</body>

</html>