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
    <link href="${ctx}/resources/pages/css/coming-soon.min.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="${ctx}/favicon.ico"/>
</head>
<!-- END HEAD -->
<body class="">
<div class="container">
    <div class="row">
        <div class="col-md-12 coming-soon-header">
            <a class="brand" href="../index.jsp">
                <img src="${ctx}/resources/pages/img/logo-big.png" alt="logo" /> </a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 coming-soon-content">
            <h1>Coming Soon!</h1>
            <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi vehicula sem ut volutpat. Ut non libero magna fusce condimentum eleifend
                enim a feugiat. </p>
            <br>
            <form class="form-inline" action="#">
                <div class="input-group input-group-lg input-large">
                    <input type="text" class="form-control">
                            <span class="input-group-btn">
                                <button class="btn green" type="button"> Subscribe </button>
                            </span>
                </div>
            </form>
            <ul class="social-icons margin-top-20">
                <li>
                    <a href="javascript:;" data-original-title="Feed" class="rss"> </a>
                </li>
                <li>
                    <a href="javascript:;" data-original-title="Facebook" class="facebook"> </a>
                </li>
                <li>
                    <a href="javascript:;" data-original-title="Twitter" class="twitter"> </a>
                </li>
                <li>
                    <a href="javascript:;" data-original-title="Goole Plus" class="googleplus"> </a>
                </li>
                <li>
                    <a href="javascript:;" data-original-title="Pinterest" class="pintrest"> </a>
                </li>
                <li>
                    <a href="javascript:;" data-original-title="Linkedin" class="linkedin"> </a>
                </li>
                <li>
                    <a href="javascript:;" data-original-title="Vimeo" class="vimeo"> </a>
                </li>
            </ul>
        </div>
        <div class="col-md-6 coming-soon-countdown">
            <div id="defaultCountdown"> </div>
        </div>
    </div>
    <!--/end row-->
    <div class="row">
        <div class="col-md-12 coming-soon-footer"> 2014 &copy; Metronic. Admin Dashboard Template. </div>
    </div>
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
<script src="${ctx}/resources/pages/scripts/coming-soon.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>

</html>