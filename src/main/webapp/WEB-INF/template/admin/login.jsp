<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html>
<!--<![endif]-->

<head>
<meta charset="GBK">
<title><tiles:getAsString name="title" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="description" content="">
<meta name="author" content="">

<!-- Custom styles -->
<style type="text/css">
.signin-content {
  max-width: 360px;
  margin: 0 auto 20px;
}
</style>

<!-- Le styles -->
<link href="${templetDir}/assets/css/lib/bootstrap.css" rel="stylesheet">
<link href="${templetDir}/assets/css/lib/bootstrap-responsive.css" rel="stylesheet">
<link href="${templetDir}/assets/css/boo-extension.css" rel="stylesheet">
<link href="${templetDir}/assets/css/boo.css" rel="stylesheet">
<link href="${templetDir}/assets/css/style.css" rel="stylesheet">
<link href="${templetDir}/assets/css/boo-coloring.css" rel="stylesheet">
<link href="${templetDir}/assets/css/boo-utility.css" rel="stylesheet">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="${templetDir}/assets/plugins/selectivizr/selectivizr-min.js"></script>
    <script src="${templetDir}/assets/plugins/flot/excanvas.min.js"></script>
<![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="${templetDir}/assets/ico/favicon.ico">
</head>

<body class="signin signin-vertical">
<div class="page-container">
    <div id="header-container">
        <div id="header">
            <div class="navbar-inverse navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container"> </div>
                </div>
            </div>
            <!-- // navbar -->
            
            <div class="header-drawer" style="height:3px"> </div>
            <!-- // breadcrumbs --> 
        </div>
        <!-- // drawer --> 
    </div>
    <!-- // header-container -->
    
    <div id="main-container">		
        <div id="main-content" class="main-content container">
            <div class="signin-content">
                <h1 class="welcome text-center" style="line-height: 0.6;"><span style="margin-left: -45px;">Welcome to</span><br />
                    ${sysConfig.sysName}<small> admin</small></h1>
                <div class="well well-black well-impressed">
                    <div class="tab-content overflow">
                        <div class="tab-pane fade in active" id="login">
                            <h3 class="no-margin-top"><i class="fontello-icon-user-4"></i> 请登录系统</h3>
                            <form class="form-tied margin-00" method="post" action="#" name="login_form">
                                <fieldset>
                                    <legend class="two"><span></span></legend>
                                    <ul>
                                        <li>
                                            <input id="idLogin" name="id_login_username"  class="input-block-level" type="text" placeholder="账号">
                                        </li>
                                        <li>
                                            <input id="idPassword" class="input-block-level" type="password" name="id_login_password" placeholder="密码">
                                        </li>
                                    </ul>
                                    <button type="submit" class="btn btn-yellow btn-block btn-large">登录</button>
                                    <hr class="margin-xm">
                                    <label class="checkbox pull-left">
                                        <input id="remember" name="remember" class="checkbox" type="checkbox">
                                        记住我 </label>
                                    <a href="login-01.html#forgot" class="pull-right link" data-toggle="tab">忘记密码?</a>
                                </fieldset>
                            </form>
                            <!-- // form --> 
                            
                        </div>
                        <!-- // Tab Login -->
                        
                        <div class="tab-pane fade" id="forgot">
                            <h3 class="no-margin-top">找回密码</h3>
                            <form class="margin-00" method="post" action="getPassword.do" name="forgot_password">
                                <p class="note">Enter your e-mail address, we will send you an e-mail code for password reset.</p>
                                <input id="email" class="input-block-level" type="email" name="id_email_forgot" placeholder="email">
                                <p class="text-center">or</p>
                                <input id="email" class="input-block-level" type="tel" name="id_phone_forgot" placeholder="手机号">
                                <hr class="margin-xm">
                                <button type="submit" class="btn btn-yellow">重置</button>
                                <p>Have you remembered? <a href="login-01.html#login" class="pull-right link" data-toggle="tab">Try to log in again.</a></p>
                            </form>
                            <!-- // form --> 
                            
                        </div>
                        <!-- // Tab Forgot -->
                        
                        <div class="tab-pane fade" id="register">
                            <h3 class="no-margin-top"><i class="fontello-icon-users"></i> 注册新账号</h3>
                            <form class="form-tied margin-00" method="post" action="${appPath}/register.do" name="login_form">
                                <fieldset>
                                	<legend class="two"><span>账号信息</span></legend>
                                    <ul>
                                        <li>
                                            <input id="idUsername" class="input-block-level" type="text" name="username" placeholder="用户名">
                                        </li>
                                    </ul>
                                    <legend class="two"><span>密码</span></legend>
                                    <ul>
                                        <li>
                                            <input id="idPassw" class="input-block-level" type="password" name="password" placeholder="password">
                                        </li>
                                        <li>
                                            <input id="idConPassw" class="input-block-level" type="password" name="confirmPassword" placeholder="confirm password">
                                        </li>
                                    </ul>
                                    <button type="submit" class="btn btn-green btn-block btn-large">注册</button>
                                    <hr class="margin-xm">
                                    <p>Have you remembered? <a href="${appPath}/admin/login.do" class="pull-right link" data-toggle="tab">Try to login again.</a></p>
                                </fieldset>
                            </form>
                            <!-- // form --> 
                            
                        </div>
                        <!-- // Tab Forgot --> 
                        
                    </div>
                </div>
                <!-- // Well-Black --> 
                
                <a href="login-01.html#register" class="btn btn-block btn-yellow btn-large f12" data-toggle="tab">还没帐号? 免费注册!</a>
                <div class="web-description">
                    <h5>Copyright &copy; ${sysConfig.copyright} ${sysConfig.sysName}</h5>
                    <p>Backend and Frontend interface for web &amp; wsalix development. <br />
                        All rights reserved.</p>
                </div>
              <!-- //  
                <ul class="nav nav-center well well-impressed well-small" style="margin-top: 90px">
                    <li class="active"><a href="login-01.html" class="link">Black</a></li>
                    <li class="divider-vertical line"></li>
                    <li><a href="index.html" class="link">Nice</a></li>
                    <li class="divider-vertical line"></li>
                    <li><a href="login-02.html" class="link">Base</a></li>
                    <li class="divider-vertical line"></li>
                    <li><a href="login-03.html" class="link">SignIn</a></li>
                </ul>-->
            </div>
            <!-- // sign-content -->
            
            
            
        </div>
        <!-- // main-content --> 
        
    </div>
    <!-- // main-container  --> 
    
</div>
<!-- // page-container --> 

<!-- Le javascript --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="${templetDir}/assets/js/lib/jquery.js"></script> 
<script src="${templetDir}/assets/js/lib/jquery-ui.js"></script>
<script src="${templetDir}/assets/js/lib/jquery.cookie.js"></script> 
<script src="${templetDir}/assets/js/lib/jquery.date.min.js"></script> 
<script src="${templetDir}/assets/js/lib/jquery.mousewheel.js"></script> 
<script src="${templetDir}/assets/js/lib/jquery.load-image.min.js"></script>
<script src="${templetDir}/assets/js/lib/bootstrap/bootstrap.js"></script> 

<!-- Plugins Bootstrap -->
<script src="${templetDir}/assets/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.min.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
<script src="${templetDir}/assets/plugins/bootstrap-fuelux/js/all-fuelux.min.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script src="${templetDir}/assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="${templetDir}/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script src="${templetDir}/assets/plugins/bootstrap-daterangepicker/js/bootstrap-daterangepicker.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-toggle-button/js/bootstrap-toggle-button.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-fileupload/js/bootstrap-fileupload.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-rowlink/js/bootstrap-rowlink.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-progressbar/js/bootstrap-progressbar.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-select/bootstrap-select.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-bootbox/bootbox.min.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-modal/js/bootstrap-modal.js"></script> 
<script src="${templetDir}/assets/plugins/bootstrap-wizard/js/bootstrap-wizard-combi.js"></script>
<script src="${templetDir}/assets/plugins/bootstrap-image-gallery/js/bootstrap-image-gallery.min.js"></script>
 

<!-- Plugins Custom - Only example --> 
<script src="${templetDir}/assets/plugins/pl-extension/google-code-prettify/prettify.js"></script>
<!-- Plugins Custom - System --> 
<script src="${templetDir}/assets/plugins/pl-system/nicescroll/jquery.nicescroll.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-system/xbreadcrumbs/xbreadcrumbs.js"></script> 
<!-- Plugins Custom - System info -->
<script src="${templetDir}/assets/plugins/pl-system-info/qtip2/dist/jquery.qtip.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-system-info/gritter/js/jquery.gritter.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-system-info/notyfy/jquery.notyfy.js"></script>
<!-- Plugins Custom - Content -->
<script src="${templetDir}/assets/plugins/pl-content/list/js/list.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-content/list/plugins/list.paging.min.js"></script>
<script src="${templetDir}/assets/plugins/pl-content/jpages/js/jPages.js"></script> 
<!-- Plugins Custom - Component -->
<script src="${templetDir}/assets/plugins/pl-component/fullcalendar/fullcalendar.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-component/rangeslider/jqallrangesliders.min.js"></script>
<!-- Plugins Custom - Form -->
<script src="${templetDir}/assets/plugins/pl-form/uniform/jquery.uniform.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-form/select2/select2.min.js"></script>
<script src="${templetDir}/assets/plugins/pl-form/counter/jquery.counter.js"></script> 
<script src="${templetDir}/assets/plugins/pl-form/elastic/jquery.elastic.js"></script> 
<script src="${templetDir}/assets/plugins/pl-form/inputmask/jquery.inputmask.js"></script> 
<script src="${templetDir}/assets/plugins/pl-form/inputmask/jquery.inputmask.extensions.js"></script> 
<script src="${templetDir}/assets/plugins/pl-form/validate/js/jquery.validate.min.js"></script> 
    <script src="${templetDir}/assets/plugins/pl-form/duallistbox/jquery.dualListBox.min.js"></script>
<!-- Plugins Custom - Gallery --> 
<script src="${templetDir}/assets/plugins/pl-gallery/nailthumb/jquery.nailthumb.1.1.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-gallery/nailthumb/showLoading/js/jquery.showLoading.min.js"></script>
<script src="${templetDir}/assets/plugins/pl-gallery/wookmark/jquery.imagesloaded.js"></script>
<script src="${templetDir}/assets/plugins/pl-gallery/wookmark/jquery.wookmark.min.js"></script>
 
<!-- Plugins Tables --> 
<script src="${templetDir}/assets/plugins/pl-table/datatables/media/js/jquery.dataTables.js"></script> 
<script src="${templetDir}/assets/plugins/pl-table/datatables/plugin/jquery.dataTables.plugins.js"></script> 
<script src="${templetDir}/assets/plugins/pl-table/datatables/plugin/jquery.dataTables.columnFilter.js"></script> 

<!-- Plugins data visualization --> 
<script src="${templetDir}/assets/plugins/pl-visualization/sparkline/jquery.sparkline.min.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/easy-pie-chart/easy-pie-chart.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/percentageloader/percentageloader.min.js"></script>
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.categories.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.grow.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.orderBars.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.pie.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.resize.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.selection.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.stack.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.stackpercent.js"></script> 
<script src="${templetDir}/assets/plugins/pl-visualization/flot/jquery.flot.time.js"></script> 

<!-- main js --> 
<script src="${templetDir}/assets/js/core.js"></script> 
<script src="${templetDir}/assets/js/application.js"></script> 

<script>
$(document).ready(function() {

    
});

</script>
</body>
</html>