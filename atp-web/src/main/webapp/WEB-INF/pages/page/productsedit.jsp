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
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="${ctx}/resources/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet"
          type="text/css"/>
    <link href="${ctx}/resources/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="${ctx}/resources/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL PLUGINS -->
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
                            <a href="index.html">Home</a>
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
                <h1 class="page-title"> eCommerce Products Edit
                    <small>edit product</small>
                </h1>
                <!-- END PAGE TITLE-->
                <!-- END PAGE HEADER-->
                <div class="row">
                    <div class="col-md-12">
                        <form class="form-horizontal form-row-seperated" action="#">
                            <div class="portlet">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="fa fa-shopping-cart"></i>Test Product
                                    </div>
                                    <div class="actions btn-set">
                                        <button type="button" name="back" class="btn btn-secondary-outline">
                                            <i class="fa fa-angle-left"></i> Back
                                        </button>
                                        <button class="btn btn-secondary-outline">
                                            <i class="fa fa-reply"></i> Reset
                                        </button>
                                        <button class="btn btn-success">
                                            <i class="fa fa-check"></i> Save
                                        </button>
                                        <button class="btn btn-success">
                                            <i class="fa fa-check-circle"></i> Save & Continue Edit
                                        </button>
                                        <div class="btn-group">
                                            <a class="btn btn-success dropdown-toggle" href="javascript:;"
                                               data-toggle="dropdown">
                                                <i class="fa fa-share"></i> More
                                                <i class="fa fa-angle-down"></i>
                                            </a>
                                            <div class="dropdown-menu pull-right">
                                                <li>
                                                    <a href="javascript:;"> Duplicate </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;"> Delete </a>
                                                </li>
                                                <li class="dropdown-divider"></li>
                                                <li>
                                                    <a href="javascript:;"> Print </a>
                                                </li>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <div class="tabbable-bordered">
                                        <ul class="nav nav-tabs">
                                            <li class="active">
                                                <a href="#tab_general" data-toggle="tab"> General </a>
                                            </li>
                                            <li>
                                                <a href="#tab_meta" data-toggle="tab"> Meta </a>
                                            </li>
                                            <li>
                                                <a href="#tab_images" data-toggle="tab"> Images </a>
                                            </li>
                                            <li>
                                                <a href="#tab_reviews" data-toggle="tab"> Reviews
                                                    <span class="badge badge-success"> 3 </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#tab_history" data-toggle="tab"> History </a>
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="tab_general">
                                                <div class="form-body">
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">Name:
                                                            <span class="required"> * </span>
                                                        </label>
                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control" name="product[name]"
                                                                   placeholder=""></div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">Description:
                                                            <span class="required"> * </span>
                                                        </label>
                                                        <div class="col-md-10">
                                                            <textarea class="form-control"
                                                                      name="product[description]"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">Short Description:
                                                            <span class="required"> * </span>
                                                        </label>
                                                        <div class="col-md-10">
                                                            <textarea class="form-control"
                                                                      name="product[short_description]"></textarea>
                                                            <span class="help-block"> shown in product listing </span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">Categories:
                                                            <span class="required"> * </span>
                                                        </label>
                                                        <div class="col-md-10">
                                                            <div class="form-control height-auto">
                                                                <div class="scroller" style="height:275px;"
                                                                     data-always-visible="1">
                                                                    <ul class="list-unstyled">
                                                                        <li>
                                                                            <label>
                                                                                <input type="checkbox"
                                                                                       name="product[categories][]"
                                                                                       value="1">Mens</label>
                                                                            <ul class="list-unstyled">
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Footwear</label>
                                                                                </li>
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Clothing</label>
                                                                                </li>
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Accessories</label>
                                                                                </li>
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Fashion Outlet</label>
                                                                                </li>
                                                                            </ul>
                                                                        </li>
                                                                        <li>
                                                                            <label>
                                                                                <input type="checkbox"
                                                                                       name="product[categories][]"
                                                                                       value="1">Football Shirts</label>
                                                                            <ul class="list-unstyled">
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Premier League</label>
                                                                                </li>
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Football League</label>
                                                                                </li>
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Serie A</label>
                                                                                </li>
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Bundesliga</label>
                                                                                </li>
                                                                            </ul>
                                                                        </li>
                                                                        <li>
                                                                            <label>
                                                                                <input type="checkbox"
                                                                                       name="product[categories][]"
                                                                                       value="1">Brands</label>
                                                                            <ul class="list-unstyled">
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Adidas</label>
                                                                                </li>
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Nike</label>
                                                                                </li>
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Airwalk</label>
                                                                                </li>
                                                                                <li>
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               name="product[categories][]"
                                                                                               value="1">Kangol</label>
                                                                                </li>
                                                                            </ul>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <span class="help-block"> select one or more categories </span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">Available Date:
                                                            <span class="required"> * </span>
                                                        </label>
                                                        <div class="col-md-10">
                                                            <div class="input-group input-large date-picker input-daterange"
                                                                 data-date="10/11/2012" data-date-format="mm/dd/yyyy">
                                                                <input type="text" class="form-control"
                                                                       name="product[available_from]">
                                                                <span class="input-group-addon"> to </span>
                                                                <input type="text" class="form-control"
                                                                       name="product[available_to]"></div>
                                                            <span class="help-block"> availability daterange. </span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">SKU:
                                                            <span class="required"> * </span>
                                                        </label>
                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control" name="product[sku]"
                                                                   placeholder=""></div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">Price:
                                                            <span class="required"> * </span>
                                                        </label>
                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control"
                                                                   name="product[price]" placeholder=""></div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">Tax Class:
                                                            <span class="required"> * </span>
                                                        </label>
                                                        <div class="col-md-10">
                                                            <select class="table-group-action-input form-control input-medium"
                                                                    name="product[tax_class]">
                                                                <option value="">Select...</option>
                                                                <option value="1">None</option>
                                                                <option value="0">Taxable Goods</option>
                                                                <option value="0">Shipping</option>
                                                                <option value="0">USA</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">Status:
                                                            <span class="required"> * </span>
                                                        </label>
                                                        <div class="col-md-10">
                                                            <select class="table-group-action-input form-control input-medium"
                                                                    name="product[status]">
                                                                <option value="">Select...</option>
                                                                <option value="1">Published</option>
                                                                <option value="0">Not Published</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab_meta">
                                                <div class="form-body">
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">Meta Title:</label>
                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control maxlength-handler"
                                                                   name="product[meta_title]" maxlength="100"
                                                                   placeholder="">
                                                            <span class="help-block"> max 100 chars </span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">Meta Keywords:</label>
                                                        <div class="col-md-10">
                                                            <textarea class="form-control maxlength-handler" rows="8"
                                                                      name="product[meta_keywords]"
                                                                      maxlength="1000"></textarea>
                                                            <span class="help-block"> max 1000 chars </span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-md-2 control-label">Meta Description:</label>
                                                        <div class="col-md-10">
                                                            <textarea class="form-control maxlength-handler" rows="8"
                                                                      name="product[meta_description]"
                                                                      maxlength="255"></textarea>
                                                            <span class="help-block"> max 255 chars </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab_images">
                                                <div class="alert alert-success margin-bottom-10">
                                                    <button type="button" class="close" data-dismiss="alert"
                                                            aria-hidden="true"></button>
                                                    <i class="fa fa-warning fa-lg"></i> Image type and information need
                                                    to be specified.
                                                </div>
                                                <div id="tab_images_uploader_container"
                                                     class="text-align-reverse margin-bottom-10">
                                                    <a id="tab_images_uploader_pickfiles" href="javascript:;"
                                                       class="btn btn-success">
                                                        <i class="fa fa-plus"></i> Select Files </a>
                                                    <a id="tab_images_uploader_uploadfiles" href="javascript:;"
                                                       class="btn btn-primary">
                                                        <i class="fa fa-share"></i> Upload Files </a>
                                                </div>
                                                <div class="row">
                                                    <div id="tab_images_uploader_filelist"
                                                         class="col-md-6 col-sm-12"></div>
                                                </div>
                                                <table class="table table-bordered table-hover">
                                                    <thead>
                                                    <tr role="row" class="heading">
                                                        <th width="8%"> Image</th>
                                                        <th width="25%"> Label</th>
                                                        <th width="8%"> Sort Order</th>
                                                        <th width="10%"> Base Image</th>
                                                        <th width="10%"> Small Image</th>
                                                        <th width="10%"> Thumbnail</th>
                                                        <th width="10%"></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>
                                                            <a href="${ctx}/resources/pages/media/works/img1.jpg"
                                                               class="fancybox-button" data-rel="fancybox-button">
                                                                <img class="img-responsive"
                                                                     src="${ctx}/resources/pages/media/works/img1.jpg"
                                                                     alt=""> </a>
                                                        </td>
                                                        <td>
                                                            <input type="text" class="form-control"
                                                                   name="product[images][1][label]"
                                                                   value="Thumbnail image"></td>
                                                        <td>
                                                            <input type="text" class="form-control"
                                                                   name="product[images][1][sort_order]" value="1"></td>
                                                        <td>
                                                            <label>
                                                                <input type="radio"
                                                                       name="product[images][1][image_type]" value="1">
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <label>
                                                                <input type="radio"
                                                                       name="product[images][1][image_type]" value="2">
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <label>
                                                                <input type="radio"
                                                                       name="product[images][1][image_type]" value="3"
                                                                       checked> </label>
                                                        </td>
                                                        <td>
                                                            <a href="javascript:;" class="btn btn-default btn-sm">
                                                                <i class="fa fa-times"></i> Remove </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <a href="${ctx}/resources/pages/media/works/img2.jpg"
                                                               class="fancybox-button" data-rel="fancybox-button">
                                                                <img class="img-responsive"
                                                                     src="${ctx}/resources/pages/media/works/img2.jpg"
                                                                     alt=""> </a>
                                                        </td>
                                                        <td>
                                                            <input type="text" class="form-control"
                                                                   name="product[images][2][label]"
                                                                   value="Product image #1"></td>
                                                        <td>
                                                            <input type="text" class="form-control"
                                                                   name="product[images][2][sort_order]" value="1"></td>
                                                        <td>
                                                            <label>
                                                                <input type="radio"
                                                                       name="product[images][2][image_type]" value="1">
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <label>
                                                                <input type="radio"
                                                                       name="product[images][2][image_type]" value="2"
                                                                       checked> </label>
                                                        </td>
                                                        <td>
                                                            <label>
                                                                <input type="radio"
                                                                       name="product[images][2][image_type]" value="3">
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <a href="javascript:;" class="btn btn-default btn-sm">
                                                                <i class="fa fa-times"></i> Remove </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <a href="${ctx}/resources/pages/media/works/img3.jpg"
                                                               class="fancybox-button" data-rel="fancybox-button">
                                                                <img class="img-responsive"
                                                                     src="${ctx}/resources/pages/media/works/img3.jpg"
                                                                     alt=""> </a>
                                                        </td>
                                                        <td>
                                                            <input type="text" class="form-control"
                                                                   name="product[images][3][label]"
                                                                   value="Product image #2"></td>
                                                        <td>
                                                            <input type="text" class="form-control"
                                                                   name="product[images][3][sort_order]" value="1"></td>
                                                        <td>
                                                            <label>
                                                                <input type="radio"
                                                                       name="product[images][3][image_type]" value="1"
                                                                       checked> </label>
                                                        </td>
                                                        <td>
                                                            <label>
                                                                <input type="radio"
                                                                       name="product[images][3][image_type]" value="2">
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <label>
                                                                <input type="radio"
                                                                       name="product[images][3][image_type]" value="3">
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <a href="javascript:;" class="btn btn-default btn-sm">
                                                                <i class="fa fa-times"></i> Remove </a>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane" id="tab_reviews">
                                                <div class="table-container">
                                                    <table class="table table-striped table-bordered table-hover"
                                                           id="datatable_reviews">
                                                        <thead>
                                                        <tr role="row" class="heading">
                                                            <th width="5%"> Review&nbsp;#</th>
                                                            <th width="10%"> Review&nbsp;Date</th>
                                                            <th width="10%"> Customer</th>
                                                            <th width="20%"> Review&nbsp;Content</th>
                                                            <th width="10%"> Status</th>
                                                            <th width="10%"> Actions</th>
                                                        </tr>
                                                        <tr role="row" class="filter">
                                                            <td>
                                                                <input type="text"
                                                                       class="form-control form-filter input-sm"
                                                                       name="product_review_no"></td>
                                                            <td>
                                                                <div class="input-group date date-picker margin-bottom-5"
                                                                     data-date-format="dd/mm/yyyy">
                                                                    <input type="text"
                                                                           class="form-control form-filter input-sm"
                                                                           readonly name="product_review_date_from"
                                                                           placeholder="From">
                                                                                <span class="input-group-btn">
                                                                                    <button class="btn btn-sm default"
                                                                                            type="button">
                                                                                        <i class="fa fa-calendar"></i>
                                                                                    </button>
                                                                                </span>
                                                                </div>
                                                                <div class="input-group date date-picker"
                                                                     data-date-format="dd/mm/yyyy">
                                                                    <input type="text"
                                                                           class="form-control form-filter input-sm"
                                                                           readonly name="product_review_date_to"
                                                                           placeholder="To">
                                                                                <span class="input-group-btn">
                                                                                    <button class="btn btn-sm default"
                                                                                            type="button">
                                                                                        <i class="fa fa-calendar"></i>
                                                                                    </button>
                                                                                </span>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <input type="text"
                                                                       class="form-control form-filter input-sm"
                                                                       name="product_review_customer"></td>
                                                            <td>
                                                                <input type="text"
                                                                       class="form-control form-filter input-sm"
                                                                       name="product_review_content"></td>
                                                            <td>
                                                                <select name="product_review_status"
                                                                        class="form-control form-filter input-sm">
                                                                    <option value="">Select...</option>
                                                                    <option value="pending">Pending</option>
                                                                    <option value="approved">Approved</option>
                                                                    <option value="rejected">Rejected</option>
                                                                </select>
                                                            </td>
                                                            <td>
                                                                <div class="margin-bottom-5">
                                                                    <button class="btn btn-sm btn-success filter-submit margin-bottom">
                                                                        <i class="fa fa-search"></i> Search
                                                                    </button>
                                                                </div>
                                                                <button class="btn btn-sm btn-danger filter-cancel">
                                                                    <i class="fa fa-times"></i> Reset
                                                                </button>
                                                            </td>
                                                        </tr>
                                                        </thead>
                                                        <tbody></tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab_history">
                                                <div class="table-container">
                                                    <table class="table table-striped table-bordered table-hover"
                                                           id="datatable_history">
                                                        <thead>
                                                        <tr role="row" class="heading">
                                                            <th width="25%"> Datetime</th>
                                                            <th width="55%"> Description</th>
                                                            <th width="10%"> Notification</th>
                                                            <th width="10%"> Actions</th>
                                                        </tr>
                                                        <tr role="row" class="filter">
                                                            <td>
                                                                <div class="input-group date datetime-picker margin-bottom-5"
                                                                     data-date-format="dd/mm/yyyy hh:ii">
                                                                    <input type="text"
                                                                           class="form-control form-filter input-sm"
                                                                           readonly name="product_history_date_from"
                                                                           placeholder="From">
                                                                                <span class="input-group-btn">
                                                                                    <button class="btn btn-sm default date-set"
                                                                                            type="button">
                                                                                        <i class="fa fa-calendar"></i>
                                                                                    </button>
                                                                                </span>
                                                                </div>
                                                                <div class="input-group date datetime-picker"
                                                                     data-date-format="dd/mm/yyyy hh:ii">
                                                                    <input type="text"
                                                                           class="form-control form-filter input-sm"
                                                                           readonly name="product_history_date_to"
                                                                           placeholder="To">
                                                                                <span class="input-group-btn">
                                                                                    <button class="btn btn-sm default date-set"
                                                                                            type="button">
                                                                                        <i class="fa fa-calendar"></i>
                                                                                    </button>
                                                                                </span>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <input type="text"
                                                                       class="form-control form-filter input-sm"
                                                                       name="product_history_desc" placeholder="To"/>
                                                            </td>
                                                            <td>
                                                                <select name="product_history_notification"
                                                                        class="form-control form-filter input-sm">
                                                                    <option value="">Select...</option>
                                                                    <option value="pending">Pending</option>
                                                                    <option value="notified">Notified</option>
                                                                    <option value="failed">Failed</option>
                                                                </select>
                                                            </td>
                                                            <td>
                                                                <div class="margin-bottom-5">
                                                                    <button class="btn btn-sm btn-default filter-submit margin-bottom">
                                                                        <i class="fa fa-search"></i> Search
                                                                    </button>
                                                                </div>
                                                                <button class="btn btn-sm btn-danger-outline filter-cancel">
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
                                    </div>
                                </div>
                            </div>
                        </form>
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
<script src="${ctx}/resources/global/scripts/datatable.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"
        type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
        type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"
        type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"
        type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/plupload/js/plupload.full.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="${ctx}/resources/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="${ctx}/resources/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>