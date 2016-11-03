<%@ page contentType="text/html; charset=utf-8" language="java" errorPage=""%>
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
<meta charset="utf-8">
<title><tiles:getAsString name="title" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Access-Control-Allow-Origin" content="*">
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
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${templetDir}/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${templetDir}/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${templetDir}/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="${templetDir}/assets/ico/apple-touch-icon-57-precomposed.png">
<script src="${templetDir}/assets/js/lib/jquery.js"></script> 
</head>

<body class="sidebar-left ">
<div class="page-container">
    <div id="header-container">
        <div id="header">
        	<tiles:insertAttribute name="header" />	
            <!-- // drawer --> 
        </div>
    </div>
    <!-- // header-container -->
    
    <div id="main-container">
    	<div id="main-sidebar" class="sidebar sidebar-inverse">
    		<tiles:insertAttribute name="main-sidebar" />
    	</div>
    	<div id="main-content" class="main-content container-fluid">
			<div id="page-content" class="page-content overflow-y">
				<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
				<section>
				<div class="row-fluid margin-bottom16">
				    <div class="span12">
				    	<div class="widget widget-simple widget-table">
							<tiles:insertAttribute name="table-body" />
							<tiles:insertAttribute name="table-pagination" />
						</div>						    	
			    	</div>					    
				</div>						
				</section>
				</div>
			</div>
 		</div>
        <!-- // Column --> 
    </div>
    <!-- // main-container  -->
    
    <footer id="footer-fix">
    	<tiles:insertAttribute name="footer" />	        
    </footer>
    <!-- // footer-fix  --> 
    
</div>
<!-- // page-container  --> 

<!-- Le javascript --> 
<!-- Placed at the end of the document so the pages load faster --> 
</body>
</html>
