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
    <link rel="shortcut icon" href="${ctx}/favicon.ico"/>
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
                            <span>eCommerce</span>
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
                <h1 class="page-title"> eCommerce Products
                    <small>manage products</small>
                </h1>
                <!-- END PAGE TITLE-->
                <!-- END PAGE HEADER-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="note note-danger">
                            <p> NOTE: The below datatable is not connected to a real database so the filter and sorting
                                is just simulated for demo purposes only. </p>
                        </div>
                        <!-- Begin: life time stats -->
                        <div class="portlet ">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="fa fa-shopping-cart"></i>Order Listing
                                </div>
                                <div class="actions">
                                    <a href="javascript:;" class="btn btn-circle btn-info">
                                        <i class="fa fa-plus"></i>
                                        <span class="hidden-xs"> New Order </span>
                                    </a>
                                    <div class="btn-group">
                                        <a class="btn btn-circle btn-default dropdown-toggle" href="javascript:;"
                                           data-toggle="dropdown">
                                            <i class="fa fa-share"></i>
                                            <span class="hidden-xs"> Tools </span>
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                        <div class="dropdown-menu pull-right">
                                            <li>
                                                <a href="javascript:;"> Export to Excel </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> Export to CSV </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> Export to XML </a>
                                            </li>
                                            <li class="divider"></li>
                                            <a href="javascript:;"> Print Invoices </a>
                                            </li>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-container">
                                    <div class="table-actions-wrapper">
                                        <span> </span>
                                        <select class="table-group-action-input form-control input-inline input-small input-sm">
                                            <option value="">Select...</option>
                                            <option value="publish">Publish</option>
                                            <option value="unpublished">Un-publish</option>
                                            <option value="delete">Delete</option>
                                        </select>
                                        <button class="btn btn-sm btn-success table-group-action-submit">
                                            <i class="fa fa-check"></i> Submit
                                        </button>
                                    </div>
                                    <table class="table table-striped table-bordered table-hover table-checkable"
                                           id="datatable_products">
                                        <thead>
                                        <tr role="row" class="heading">
                                            <th width="1%">
                                                <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                    <input type="checkbox" class="group-checkable"
                                                           data-set="#sample_2 .checkboxes"/>
                                                    <span></span>
                                                </label>
                                            </th>
                                            <th width="10%"> ID</th>
                                            <th width="15%"> Product&nbsp;Name</th>
                                            <th width="15%"> Category</th>
                                            <th width="10%"> Price</th>
                                            <th width="10%"> Quantity</th>
                                            <th width="15%"> Date&nbsp;Created</th>
                                            <th width="10%"> Status</th>
                                            <th width="10%"> Actions</th>
                                        </tr>
                                        <tr role="row" class="filter">
                                            <td></td>
                                            <td>
                                                <input type="text" class="form-control form-filter input-sm"
                                                       name="product_id"></td>
                                            <td>
                                                <input type="text" class="form-control form-filter input-sm"
                                                       name="product_name"></td>
                                            <td>
                                                <select name="product_category"
                                                        class="form-control form-filter input-sm">
                                                    <option value="">Select...</option>
                                                    <option value="1">Mens</option>
                                                    <option value="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Footwear</option>
                                                    <option value="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Clothing</option>
                                                    <option value="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Accessories</option>
                                                    <option value="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fashion Outlet
                                                    </option>
                                                    <option value="6">Football Shirts</option>
                                                    <option value="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Premier League
                                                    </option>
                                                    <option value="8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Football League
                                                    </option>
                                                    <option value="9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Serie A</option>
                                                    <option value="10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bundesliga</option>
                                                    <option value="11">Brands</option>
                                                    <option value="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Adidas</option>
                                                    <option value="13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nike</option>
                                                    <option value="14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Airwalk</option>
                                                    <option value="15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;USA Pro</option>
                                                    <option value="16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kangol</option>
                                                </select>
                                            </td>
                                            <td>
                                                <div class="margin-bottom-5">
                                                    <input type="text" class="form-control form-filter input-sm"
                                                           name="product_price_from" placeholder="From"/></div>
                                                <input type="text" class="form-control form-filter input-sm"
                                                       name="product_price_to" placeholder="To"/></td>
                                            <td>
                                                <div class="margin-bottom-5">
                                                    <input type="text" class="form-control form-filter input-sm"
                                                           name="product_quantity_from" placeholder="From"/></div>
                                                <input type="text" class="form-control form-filter input-sm"
                                                       name="product_quantity_to" placeholder="To"/></td>
                                            <td>
                                                <div class="input-group date date-picker margin-bottom-5"
                                                     data-date-format="dd/mm/yyyy">
                                                    <input type="text" class="form-control form-filter input-sm"
                                                           readonly name="product_created_from" placeholder="From">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-sm default" type="button">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </button>
                                                                </span>
                                                </div>
                                                <div class="input-group date date-picker" data-date-format="dd/mm/yyyy">
                                                    <input type="text" class="form-control form-filter input-sm"
                                                           readonly name="product_created_to " placeholder="To">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-sm default" type="button">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </button>
                                                                </span>
                                                </div>
                                            </td>
                                            <td>
                                                <select name="product_status" class="form-control form-filter input-sm">
                                                    <option value="">Select...</option>
                                                    <option value="published">Published</option>
                                                    <option value="notpublished">Not Published</option>
                                                    <option value="deleted">Deleted</option>
                                                </select>
                                            </td>
                                            <td>
                                                <div class="margin-bottom-5">
                                                    <button class="btn btn-sm btn-success filter-submit margin-bottom">
                                                        <i class="fa fa-search"></i> Search
                                                    </button>
                                                </div>
                                                <button class="btn btn-sm btn-default filter-cancel">
                                                    <i class="fa fa-times"></i> Reset
                                                </button>
                                            </td>
                                        </tr>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- End: life time stats -->
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
<script src="${ctx}/resources/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${ctx}/resources/pages/scripts/ecommerce-products.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="${ctx}/resources/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>