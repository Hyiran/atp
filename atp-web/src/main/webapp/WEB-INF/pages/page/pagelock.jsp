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
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="${ctx}/resources/pages/css/lock.min.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="${ctx}/favicon.ico"/>
</head>
<!-- END HEAD -->
<body class="">
<div class="page-lock">
    <div class="page-logo">
        <a class="brand" href="../index.jsp">
            <img src="${ctx}/resources/pages/img/logo-big.png" alt="logo"/> </a>
    </div>
    <div class="page-body">
        <div class="lock-head"> Locked</div>
        <div class="lock-body">
            <div class="pull-left lock-avatar-block">
                <img src="${ctx}/resources/pages/media/profile/photo3.jpg" class="lock-avatar"></div>
            <form class="lock-form pull-left" action="../index.jsp" method="post">
                <h4>Amanda Smith</h4>
                <div class="form-group">
                    <input class="form-control placeholder-no-fix" type="password" autocomplete="off"
                           placeholder="Password" name="password"/></div>
                <div class="form-actions">
                    <button type="submit" class="btn red uppercase">Login</button>
                </div>
            </form>
        </div>
        <div class="lock-bottom">
            <a href="">Not Amanda Smith?</a>
        </div>
    </div>
    <div class="page-footer-custom"> 2014 &copy; Metronic. Admin Dashboard Template.</div>
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
<script src="${ctx}/resources/pages/scripts/lock.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>

</html>