<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.0.3
Version: 1.5.5
Author: KeenThemes
Website: http://www.keenthemes.com/
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8"/>
    <title>500 Server Error</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <meta name="MobileOptimized" content="320">
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="${ctx}/resources/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="${ctx}/resources/global/css/style-metronic.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="${ctx}/resources/global/css/pages/error.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/global/css/custom.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-500-full-page">
<div class="row">
    <div class="col-md-12 page-500">
        <div class=" number">
            500
        </div>
        <div class=" details">
            <h3>Oops! Something went wrong.</h3>
            <p>
                We are fixing it!<br/>
                Please come back in a while.<br/><br/>
            </p>
        </div>
    </div>
</div>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<script src="${ctx}/resources/global/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="${ctx}/resources/global/scripts/app.js"></script>
<script>
    jQuery(document).ready(function () {
        App.init();
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>