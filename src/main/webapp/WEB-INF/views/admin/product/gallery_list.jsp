<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
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
<title>Boo Admin - Template page</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="${appCssPath}/assets/css/lib/bootstrap.css" rel="stylesheet">
<link href="${appCssPath}/assets/css/lib/bootstrap-responsive.css" rel="stylesheet">
<link href="${appCssPath}/assets/css/boo-extension.css" rel="stylesheet">
<link href="${appCssPath}/assets/css/boo.css" rel="stylesheet">
<link href="${appCssPath}/assets/css/style.css" rel="stylesheet">
<link href="${appCssPath}/assets/css/boo-coloring.css" rel="stylesheet">
<link href="${appCssPath}/assets/css/boo-utility.css" rel="stylesheet">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="${appCssPath}/assets/plugins/selectivizr/selectivizr-min.js"></script>
    <script src="${appCssPath}/assets/plugins/flot/excanvas.min.js"></script>
<![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="${appCssPath}/assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${appCssPath}/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${appCssPath}/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${appCssPath}/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="${appCssPath}/assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<body class="sidebar-left ">
<div class="page-container">
    <div id="header-container">
        <div id="header">
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <a class="brand" href="javascript:void(0);"><img src="${appCssPath}/assets/img/demo/logo-brand.png"></a>
                        <div class="search-global">
                            <input id="globalSearch" class="search search-query input-medium" type="search">
                            <a class="search-button" href="javascript:void(0);"><i class="fontello-icon-search-5"></i></a> </div>
                        <div class="nav-collapse collapse">
                            <ul class="nav user-menu visible-desktop">
                                <li><a class="btn-glyph fontello-icon-edit tip-bc" href="javascript:void(0);" title="Messages"><span class="badge badge-important">8</span></a></li>
                                <li><a class="btn-glyph fontello-icon-mail-1 tip-bc" href="javascript:void(0);" title="Emails"></a></li>
                                <li><a class="btn-glyph fontello-icon-lifebuoy tip-bc" href="javascript:void(0);" title="Support"><span class="badge badge-important">4</span></a></li>
                            </ul>
                            <ul class="nav">
                                <li> <a href="dashboard-one.html">Dashboard</a> </li>
                                <li class="active"> <a href="javascript:void(0);">Components</a> </li>
                                <li> <a href="component-fullcalendar-demo.html"><span class="fontello-icon-calendar"></span>Calendar</a> </li>
                                <li> <a href="javascript:void(0);"><span class="fontello-icon-users"></span>Contacts</a> </li>
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"><span class="fontello-icon-list-1"></span>Customize <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="component-form-demo.html">Demo Form</a></li>
                                        <li><a href="component-widgets-remember.html">Remember</a></li>
                                        <li><a href="component-widgets-users.html">User List</a></li>
                                        <li class="divider"></li>
                                        <li class="nav-header">Next Update</li>
                                        <li><a href="javascript:void(0);">Contacts</a></li>
                                        <li><a href="javascript:void(0);">Email</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- // navbar -->
            
            <div class="header-drawer">
                <div class="mobile-nav text-center visible-phone"> <a href="javascript:void(0);" class="mobile-btn" data-toggle="collapse" data-target=".sidebar"><i class="aweso-icon-chevron-down"></i> Components</a> </div>
                <!-- // Resposive navigation -->
                <div class="breadcrumbs-nav hidden-phone">
                    <ul id="breadcrumbs" class="breadcrumb">
                        <li><a href="javascript:void(0);"><i class="fontello-icon-home f12"></i> Dashboard</a> <span class="divider">/</span></li>
                        <li class="dropdown"><a href="javascript:void(0);">Table </a> <span class="divider">/</span>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:void(0);">Table</a></li>
                                <li><a href="javascript:void(0);">Elements</a></li>
                                <li><a href="javascript:void(0);">Elements</a></li>
                                <li><a href="javascript:void(0);">Elements</a></li>
                            </ul>
                        </li>
                        <li class="active">Boo Admin </li>
                    </ul>
                </div>
                <!-- // breadcrumbs --> 
                
            </div>
            <!-- // drawer --> 
            
        </div>
    </div>
    <!-- // header-container -->
    
    <div id="main-container">
        <div id="main-sidebar" class="sidebar sidebar-inverse">
            <div class="sidebar-item">
                <div class="media profile">
                    <div class="media-thumb media-left thumb-bordereb"> <a class="img-shadow" href="javascript:void(0);"><img class="thumb" src="${appCssPath}/assets/img/demo/demo-avatar9604.jpg"></a> </div>
                    <div class="media-body">
                        <h5 class="media-heading">Twitter Bootstrap <small>as Administrator</small></h5>
                        <p class="data">Last Access: 16 May 15:30</p>
                    </div>
                </div>
            </div>
            <!-- // sidebar item - profile -->
            
            <ul id="mainSideMenu" class="nav nav-list nav-side">
                <li class="accordion-group">
                    <div class="accordion-heading"> <a href="#accDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon fontello-icon-monitor"></span> <i class="chevron fontello-icon-right-open-3"></i> Dashboards </a> </div>
                    <ul class="accordion-content nav nav-list collapse" id="accDash">
                        <li> <a href="dashboard-one.html"> <i class="fontello-icon-right-dir"></i> <span class="hidden-tablet">Dashboard</span> Demo 1 </a> </li>
                        <li> <a href="dashboard-two.html"> <i class="fontello-icon-right-dir"></i> <span class="hidden-tablet">Dashboard</span> Demo 2 </a> </li>
                    </ul>
                </li>
                <!-- // item accordionMenu Dashboard -->
                <li class="accordion-group">
                    <div class="accordion-heading"> <a href="#accForms" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon aweso-icon-list-alt"></span><i class="chevron fontello-icon-right-open-3"></i> Form </a> </div>
                    <ul class="accordion-content nav nav-list collapse" id="accForms">
                        <li> <a href="component-form-demo.html"> <i class="fontello-icon-right-dir"></i> Demo Form </a> </li>
                        <li> <a href="component-form-elements.html"> <i class="fontello-icon-right-dir"></i> Form Element </a> </li>
                        <li> <a href="component-form-extension.html"> <i class="fontello-icon-right-dir"></i> Form Extension</a> </li>
                        <li> <a href="component-form-wizard.html"> <i class="fontello-icon-right-dir"></i> Form Wizard</a> </li>
                    </ul>
                </li>
                <!-- // item accordionMenu Forms -->
                <li class="accordion-group">
                    <div class="accordion-heading"> <a href="#accComponents" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon fontello-icon-align-justify"></span> <i class="chevron fontello-icon-right-open-3"></i> Components </a> </div>
                    <ul class="accordion-content nav nav-list collapse in" id="accComponents">
                        <li> <a href="elements-notification.html"> <i class="fontello-icon-right-dir"></i> Notification </a> </li>
                        <li> <a href="component-rangeslider.html"> <i class="fontello-icon-right-dir"></i> Rangeslider </a> </li>
                        <li> <a href="component-file-upload.html"> <i class="fontello-icon-right-dir"></i> File upload </a> </li>
                        <li class="active"> <a href="component-gallery.html"> <i class="fontello-icon-right-dir"></i> Gallery &amp; Image </a> </li>
                    </ul>
                </li>
                <!-- // item accordionMenu Components -->
                <li class="accordion-group">
                    <div class="accordion-heading active"> <a href="#accTables" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon fontello-icon-align-justify"></span> <i class="chevron fontello-icon-right-open-3"></i> Tables </a> </div>
                    <ul class="accordion-content nav nav-list collapse" id="accTables">
                        <li> <a href="component-table.html"> <i class="fontello-icon-right-dir"></i> Base Table </a> </li>
                        <li> <a href="component-table-boo.html"> <i class="fontello-icon-right-dir"></i> Boo Table </a> </li>
                        <li> <a href="component-table-datatable.html"> <i class="fontello-icon-right-dir"></i> DataTable </a> </li>
                        <!-- <li> <a href="component-table-editable.html"> <i class="fontello-icon-right-dir"></i> EdiTable </a> </li> -->
                    </ul>
                </li>
                <!-- // item accordionMenu Tables -->
                <li class="accordion-group">
                    <div class="accordion-heading"> <a href="#accStatistics" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon fontello-icon-chart"></span> <i class="chevron fontello-icon-right-open-3"></i> Statistics </a> </div>
                    <ul class="accordion-content nav nav-list collapse" id="accStatistics">
                        <li> <a href="statistic-flot.html"> <i class="fontello-icon-right-dir"></i> Charts </a> </li>
                        <li> <a href="statistic-sparkline.html"> <i class="fontello-icon-right-dir"></i> Sparklines </a> </li>
                        <li> <a href="statistic-circle.html"> <i class="fontello-icon-right-dir"></i> Circle </a> </li>
                    </ul>
                </li>
                <!-- // item accordionMenu Statistics -->
                <li class="accordion-group">
                    <div class="accordion-heading"> <a href="#accWidgets" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon  fontello-icon-window"></span> <i class="chevron fontello-icon-right-open-3"></i> Widgets </a> </div>
                    <ul class="accordion-content nav nav-list collapse" id="accWidgets">
                        <li> <a href="component-widget-style.html"> <i class="fontello-icon-right-dir"></i> <span class="hidden-tablet">Widgets </span> Style </a> </li>
                        <li> <a href="component-widget-custom.html"> <i class="fontello-icon-right-dir"></i> <span class="hidden-tablet">Widgets </span> Custom </a> </li>
                    </ul>
                </li>
                <!-- // item accordionMenu Widgets -->
                <li class="accordion-group">
                    <div class="accordion-heading"> <a href="#accButtons" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon fontello-icon-puzzle"></span> <i class="chevron fontello-icon-right-open-3"></i> UI Elements </a> </div>
                    <ul class="accordion-content nav nav-list collapse" id="accButtons">
                        <li> <a href="elements-button.html"> <i class="fontello-icon-right-dir"></i> Button </a> </li>
                        <li> <a href="elements-icon-font.html"> <i class="fontello-icon-right-dir"></i> Iconic fonts </a> </li>
                        <li> <a href="elements-icon-fugue-demo.html"> <i class="fontello-icon-right-dir"></i> Icon </a> </li>
                        <li> <a href="elements-wells.html"> <i class="fontello-icon-right-dir"></i> Wells </a> </li>
                        <li> <a href="elements-tabs.html"> <i class="fontello-icon-right-dir"></i> Tabs </a> </li>
                        <li> <a href="elements-modals.html"> <i class="fontello-icon-right-dir"></i> Modal </a> </li>
                        <li> <a href="elements-progressbar.html"> <i class="fontello-icon-right-dir"></i> Progressbar </a> </li>
                    </ul>
                </li>
                <!-- // item accordionMenu UI Elements -->
                <li class="accordion-group">
                    <div class="accordion-heading"> <a href="#accCalendar" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon fontello-icon-calendar"></span> <i class="chevron fontello-icon-right-open-3"></i> Calendar </a> </div>
                    <ul class="accordion-content nav nav-list collapse" id="accCalendar">
                        <li> <a href="component-fullcalendar-demo.html"> <i class="fontello-icon-right-dir"></i> <span class="hidden-tablet">Calendar </span> Demo </a> </li>
                        <li> <a href="component-fullcalendar.html"> <i class="fontello-icon-right-dir"></i> <span class="hidden-tablet">Calendar </span> Style </a> </li>
                    </ul>
                </li>
                <!-- // item accordionMenu Calendar -->
            </ul>
            <!-- // sidebar menu -->
            
            <div class="sidebar-item"></div>
            <!-- // sidebar item --> 
            
        </div>
        <!-- // sidebar -->
        
        <div id="main-content" class="main-content container-fluid">
            <div class="row-fluid page-head">
                <h2 class="page-title"><i class="fontello-icon-picasa"></i> Dynamic, multi-column layout Gallery <small>dynamic column grid</small></h2>
                <p class="pagedesc">Choose a style for the filter that fits to your project, or simply the one that you like </p>
            </div>
            <!-- // page head -->
            
            <div id="page-content" class="page-content">
                <div class="navbar navbar-page">
                    <div class="navbar-inner">
                        <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
                            <div class="nav-collapse collapse navbar-responsive-collapse">
                                <ul class="nav">
                                    <li><a href="component-gallery.html">Thumbnail</a></li>
                                    <li><a href="component-gallery-grid.html">Grid</a></li>
                                    <li><a href="component-gallery-01.html">Gall 1</a></li>
                                    <li class="active"><a href="component-gallery-02.html">Gall 2</a></li>
                                    <li><a href="component-gallery-03.html">Gall 3</a></li>
                                    <li><a href="component-gallery-04.html">Gall 4</a></li>
                                    <li class="divider-vertical"></li>
                                    <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Select demo page <b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="component-gallery-01.html">Gallery 01</a></li>
                                            <li class="active"><a href="component-gallery-02.html">Gallery 02</a></li>
                                            <li><a href="component-gallery-03.html">Gallery 03</a></li>
                                            <li><a href="component-gallery-04.html">Gallery 04</a></li>
                                            <li class="divider"></li>
                                            <li class="nav-header">Image Style</li>
                                            <li><a href="#">Gallery components</a></li>
                                            <li><a href="#">Gallery thumb style</a></li>
                                        </ul>
                                    </li>
                                    <li class="divider-vertical"></li>
                                </ul>
                                <!-- // nav -->
                                
                                <a id="changeFilter" class="btn" data-toggle="collapse" data-target=".gall-collapse">Filter change</a>
                                <!-- // btn -->
                                
                                <ul class="nav pull-right">
                                    <li class="divider-vertical"></li>
                                    <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">By Category <b class="caret"></b></a>
                                        <ul id="filtersNav" class="gall-filters dropdown-menu">
                                            <li data-filter="thumbnail" class="all"><a href="javascript:void(0);">Show All</a></li>
                                            <li class="divider"></li>
                                            <li data-filter="landscape"><a href="javascript:void(0);">Landscape</a></li>
                                            <li data-filter="city"><a href="javascript:void(0);">City</a></li>
                                            <li data-filter="auto"><a href="javascript:void(0);">Auto</a></li>
                                            <li data-filter="moto"><a href="javascript:void(0);">Moto</a></li>
                                            <li data-filter="fantasy"><a href="javascript:void(0);">Fantasy</a></li>
                                            <li data-filter="sport"><a href="javascript:void(0);">Sport</a></li>
                                            <li data-filter="celebrities"><a href="javascript:void(0);">Celebrities</a></li>
                                            <li data-filter="fauna"><a href="javascript:void(0);">Fauna</a></li>
                                            <li data-filter="design"><a href="javascript:void(0);">Design</a></li>
                                            <li data-filter="beach"><a href="javascript:void(0);">Beach</a></li>
                                            <li data-filter="yachts"><a href="javascript:void(0);">Yachts</a></li>
                                            <li data-filter="man"><a href="javascript:void(0);">Man</a></li>
                                            <li data-filter="woman"><a href="javascript:void(0);">Woman</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <!-- // filter -->
                                
                            </div>
                            <!-- /.nav-collapse --> 
                        </div>
                    </div>
                    <!-- /navbar-inner --> 
                </div>
                <!-- /navbar -->
                
                <section>
                    <div class="row-fluid">
                        <div class="span12 text-center">
                            <div class="collapse gall-collapse text-center">
                                <div class="well well-small well-impressed no-padding-top no-padding-bottom">
                                    <ul id="filtersToggle" class="nav nav-pills gall-filters margin-ss">
                                        <li data-filter="thumbnail" class="all"><a href="javascript:void(0);">Show All</a></li>
                                        <li data-filter="landscape"><a href="javascript:void(0);">Landscape</a></li>
                                        <li data-filter="city"><a href="javascript:void(0);">City</a></li>
                                        <li data-filter="auto"><a href="javascript:void(0);">Auto</a></li>
                                        <li data-filter="moto"><a href="javascript:void(0);">Moto</a></li>
                                        <li data-filter="fantasy"><a href="javascript:void(0);">Fantasy</a></li>
                                        <li data-filter="sport"><a href="javascript:void(0);">Sport</a></li>
                                        <li data-filter="celebrities"><a href="javascript:void(0);">Celebrities</a></li>
                                        <li data-filter="fauna"><a href="javascript:void(0);">Fauna</a></li>
                                        <li data-filter="design"><a href="javascript:void(0);">Design</a></li>
                                        <li data-filter="beach"><a href="javascript:void(0);">Beach</a></li>
                                        <li data-filter="yachts"><a href="javascript:void(0);">Yachts</a></li>
                                        <li data-filter="man"><a href="javascript:void(0);">Man</a></li>
                                        <li data-filter="woman"><a href="javascript:void(0);">Woman</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- // filter nav -->
                            
                            <div id="filterBar" class="visible-small-desktop margin-0x">
                                <ul id="filtersGroup" class="btn-group gall-filters">
                                    <li data-filter="thumbnail" class="btn btn-blue all">All</li>
                                    <li data-filter="landscape" class="btn btn-boo">Landscape</li>
                                    <li data-filter="city" class="btn btn-boo">City</li>
                                    <li data-filter="auto" class="btn btn-boo">Auto</li>
                                    <li data-filter="moto" class="btn btn-boo">Moto</li>
                                    <li data-filter="fantasy" class="btn btn-boo">Fantasy</li>
                                    <li data-filter="sport" class="btn btn-boo">Sport</li>
                                    <li data-filter="celebrities" class="btn btn-boo">Celebrities</li>
                                    <li data-filter="fauna" class="btn btn-boo">Fauna</li>
                                    <li data-filter="design" class="btn btn-boo">Design</li>
                                    <li data-filter="beach" class="btn btn-boo">Beach</li>
                                    <li data-filter="yachts" class="btn btn-boo">Yachts</li>
                                    <li data-filter="man" class="btn btn-boo">Man</li>
                                    <li data-filter="woman" class="btn btn-boo">Woman</li>
                                </ul>
                            </div>
                            <!-- //  filter button -->
                            
                        </div>
                    </div>
                    <!-- for wookmark plugin is not yet possible to set css class size preview. Will it be possible in the future -->
                    <div class="row-fluid">
                        <div id="gallery" class="thumbnails gallery-well">
                            <ul id="tiles" data-toggle="modal-gallery" data-target="#modal-gallery" data-selector=".show-item">
                                <!-- These are our grid blocks -->
                                <li class="thumbnail landscape"> 
                                	<a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_01.jpg" class="show-item"> 
                                	<img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_01.jpg"></a>
                                    <h6 class="thumb-title"><span>01</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> 
                                        	<a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> 
                                        	<a href="javascript:void(0);" class="fontello-icon-instagrem"></a> 
                                        	<a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> 
                                        </div>
                                        <div class="imgshare-right"> 
                                        	<span class="fontello-icon-comment">56</span> 
                                        	<a href="javascript:void(0);" class="fontello-icon-download">14</a> 
                                        </div>
                                    </div>
                                </li>
                                <li class="thumbnail moto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_02.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_02.jpg"></a>
                                    <h6 class="thumb-title"><span>02</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail city"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_03.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_03.jpg"></a>
                                    <h6 class="thumb-title"><span>03</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail fauna"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_04.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_04.jpg"></a>
                                    <h6 class="thumb-title"><span>04</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail auto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_05.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_05.jpg"></a>
                                    <h6 class="thumb-title"><span>05</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail landscape"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_06.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_06.jpg"></a>
                                    <h6 class="thumb-title"><span>06</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail auto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_07.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_07.jpg"></a>
                                    <h6 class="thumb-title"><span>07</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail auto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_08.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_08.jpg"></a>
                                    <h6 class="thumb-title"><span>08</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail woman celebrities"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_09.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_09.jpg"></a>
                                    <h6 class="thumb-title"><span>09</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail auto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_10.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_10.jpg"></a>
                                    <h6 class="thumb-title"><span>10</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail fauna"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_11.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_11.jpg"></a>
                                    <h6 class="thumb-title"><span>11</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail landscape beach"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_12.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_12.jpg"></a>
                                    <h6 class="thumb-title"><span>12</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail auto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_13.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_13.jpg"></a>
                                    <h6 class="thumb-title"><span>13</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail auto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_14.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_14.jpg"></a>
                                    <h6 class="thumb-title"><span>14</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail moto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_15.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_15.jpg"></a>
                                    <h6 class="thumb-title"><span>15</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail city"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_16.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_16.jpg"></a>
                                    <h6 class="thumb-title"><span>16</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail design"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_17.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_17.jpg"></a>
                                    <h6 class="thumb-title"><span>17</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail design"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_18.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_18.jpg"></a>
                                    <h6 class="thumb-title"><span>18</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_19.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_19.jpg"></a>
                                    <h6 class="thumb-title"><span>19</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail beach"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_20.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_20.jpg"></a>
                                    <h6 class="thumb-title"><span>20</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail sport celebrities man"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_21.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_21.jpg"></a>
                                    <h6 class="thumb-title"><span>21</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail beach"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_22.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_22.jpg"></a>
                                    <h6 class="thumb-title"><span>22</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail woman fantasy"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_23.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_23.jpg"></a>
                                    <h6 class="thumb-title"><span>23</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail design"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_24.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_24.jpg"></a>
                                    <h6 class="thumb-title"><span>24</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail landscape"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_25.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_25.jpg"></a>
                                    <h6 class="thumb-title"><span>25</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail landscape"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_26.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_26.jpg"></a>
                                    <h6 class="thumb-title"><span>26</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail landscape"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_27.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_27.jpg"></a>
                                    <h6 class="thumb-title"><span>27</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail city"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_28.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_28.jpg"></a>
                                    <h6 class="thumb-title"><span>28</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail woman fantasy"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_29.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_29.jpg"></a>
                                    <h6 class="thumb-title"><span>29</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail fantasy"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_30.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_30.jpg"></a>
                                    <h6 class="thumb-title"><span>30</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail sport celebrities man"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_31.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_31.jpg"></a>
                                    <h6 class="thumb-title"><span>31</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail fauna"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_32.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_32.jpg"></a>
                                    <h6 class="thumb-title"><span>32</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail auto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_33.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_33.jpg"></a>
                                    <h6 class="thumb-title"><span>33</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail yachts"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_34.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_34.jpg"></a>
                                    <h6 class="thumb-title"><span>34</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail woman celebrities"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_35.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_35.jpg"></a>
                                    <h6 class="thumb-title"><span>35</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_36.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_36.jpg"></a>
                                    <h6 class="thumb-title"><span>36</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail sport man"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_37.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_37.jpg"></a>
                                    <h6 class="thumb-title"><span>37</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail auto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_38.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_38.jpg"></a>
                                    <h6 class="thumb-title"><span>38</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail woman celebrities"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_39.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_39.jpg"></a>
                                    <h6 class="thumb-title"><span>39</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail sport man"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_40.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_40.jpg"></a>
                                    <h6 class="thumb-title"><span>40</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail celebrities man"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_41.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_41.jpg"></a>
                                    <h6 class="thumb-title"><span>41</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail woman celebrities"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_42.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_42.jpg"></a>
                                    <h6 class="thumb-title"><span>42</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail moto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_43.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_43.jpg"></a>
                                    <h6 class="thumb-title"><span>43</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail design"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_44.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_44.jpg"></a>
                                    <h6 class="thumb-title"><span>44</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail auto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_45.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_45.jpg"></a>
                                    <h6 class="thumb-title"><span>45</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail yachts"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_46.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_46.jpg"></a>
                                    <h6 class="thumb-title"><span>46</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail woman celebrities"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_47.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_47.jpg"></a>
                                    <h6 class="thumb-title"><span>47</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail celebrities man"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_48.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_48.jpg"></a>
                                    <h6 class="thumb-title"><span>48</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail celebrities man"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_49.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_49.jpg"></a>
                                    <h6 class="thumb-title"><span>49</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail beach"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_50.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_50.jpg"></a>
                                    <h6 class="thumb-title"><span>50</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail landscape"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_51.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_51.jpg"></a>
                                    <h6 class="thumb-title"><span>51</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail landscape"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_52.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_52.jpg"></a>
                                    <h6 class="thumb-title"><span>52</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail woman fantasy"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_53.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_53.jpg"></a>
                                    <h6 class="thumb-title"><span>53</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail auto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_54.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_54.jpg"></a>
                                    <h6 class="thumb-title"><span>54</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail beach"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_55.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_55.jpg"></a>
                                    <h6 class="thumb-title"><span>55</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail yachts"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_56.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_56.jpg"></a>
                                    <h6 class="thumb-title"><span>56</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail landscape"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_57.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_57.jpg"></a>
                                    <h6 class="thumb-title"><span>57</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail woman fantasy"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_58.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_58.jpg"></a>
                                    <h6 class="thumb-title"><span>58</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail auto"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_59.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_59.jpg"></a>
                                    <h6 class="thumb-title"><span>59</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail sport man"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_60.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_60.jpg"></a>
                                    <h6 class="thumb-title"><span>60</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <li class="thumbnail sport man"> <a href="${appCssPath}/assets/img/demo/gallery/gall_01/image_61.jpg" class="show-item"> <img src="${appCssPath}/assets/img/demo/gallery/gall_01/image_61.jpg"></a>
                                    <h6 class="thumb-title"><span>61</span> - Title this image</h6>
                                    <div class="imgshare">
                                        <div class="imgshare-left"> <a href="javascript:void(0);" class="fontello-icon-facebook-squared"></a> <a href="javascript:void(0);" class="fontello-icon-instagrem"></a> <a href="javascript:void(0);" class="fontello-icon-pinterest-circled-1"></a> </div>
                                        <div class="imgshare-right"> <span class="fontello-icon-comment">56</span> <a href="javascript:void(0);" class="fontello-icon-download">14</a> </div>
                                    </div>
                                </li>
                                <!-- End of grid blocks -->
                            </ul>
                            <div id="loader">
                                <div id="loaderCircle"></div>
                            </div>
                        </div>
                    </div>
                    <!-- // Example row --> 
                </section>
            </div>
            <!-- // page content --> 
            
        </div>
        <!-- // main-content --> 
        
    </div>
    <!-- // main-container  -->
    
    <footer id="footer-fix">
        <div id="footer-sidebar" class="footer-sidebar">
            <div class="navbar">
                <div class="btn-toolbar"> <a class="btn btn-glyph btn-link" href="javascript:void(0);"><i class="fontello-icon-up-open-1"></i></a> </div>
            </div>
        </div>
        <!-- // footer sidebar -->
        
        <div id="footer-content" class="footer-content">
            <div class="navbar navbar-inverse">
                <div class="navbar-inner">
                    <ul class="nav pull-left">
                        <li class="divider-vertical hidden-phone"></li>
                        <li><a id="btnToggleSidebar" class="btn-glyph fontello-icon-resize-full-2 tip hidden-phone" href="javascript:void(0);" title="show hide sidebar"></a></li>
                        <li class="divider-vertical hidden-phone"></li>
                        <li><a id="btnChangeSidebar" class="btn-glyph fontello-icon-login tip hidden-phone" href="javascript:void(0);" title="change sidebar position"></a></li>
                        <li class="divider-vertical"></li>
                        <li><a id="btnChangeSidebarColor" class="btn-glyph fontello-icon-palette tip" href="javascript:void(0);" title="change sidebar color"></a></li>
                        <li class="divider-vertical"></li>
                        <li><a class="btn-glyph fontello-icon-cw" href="javascript:void(0);"></a></li>
                        <li class="divider-vertical"></li>
                        <li><a class="fontello-icon-home-3" href="dashboard-one.html"></a></li>
                        <li class="divider-vertical"></li>
                    </ul>
                    <ul class="nav pull-right">
                        <li class="divider-vertical"></li>
                        <li><a class="btn-glyph fontello-icon-help-2 tip" href="javascript:void(0);" title="help to page"></a></li>
                        <li class="divider-vertical"></li>
                        <li><a class="btn-glyph fontello-icon-cog-4 tip" href="javascript:void(0);" title="settings app"></a></li>
                        <li class="divider-vertical"></li>
                        <li><a id="btnLogout" class="btn-glyph fontello-icon-logout-1 tip" href="javascript:void(0);" title="logout"></a></li>
                        <li class="divider-vertical"></li>
                        <li><a id="btnScrollup" class="scrollup btn-glyph fontello-icon-up-open-1" href="javascript:void(0);"><span class="hidden-phone">Scroll</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- // footer content --> 
        
    </footer>
    <!-- // footer-fix  --> 
    
</div>
<!-- // page-container  -->

<div id="loader-page" style="display: none;"><img alt="" src="${appCssPath}/assets/img/loader/loader.gif"></div>
<div class="modal-container"> <!-- You can put your modal definitions here but it is not required --> 
    
    <!-- modal-gallery is the modal dialog used for the image gallery -->
    <div id="modal-gallery" class="modal modal-gallery hide fade" tabindex="-1">
        <div class="modal-header"> <a class="close" data-dismiss="modal"><i class="fontello-icon-cancel-1"></i></a>
            <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
            <div class="modal-image"></div>
        </div>
        <div class="modal-footer"> <a class="btn btn-navi text-gold modal-prev"><i class="fontello-icon-left-open"></i> Previous</a> <a class="btn btn-inverse text-gold btn-glyph modal-play modal-slideshow tip-tc" data-slideshow="5000" title="Play slideshow"> <i class="fontello-icon-play"></i></a> <a class="btn btn-inverse text-gold btn-glyph modal-download tip-tc" target="_blank" title="Downloads this image"> <i class="fontello-icon-download"></i></a> <a class="btn btn-navi text-gold  modal-next">Next image <i class="fontello-icon-right-open"></i></a> </div>
    </div>
    <!-- // modal  --> 
    
</div>

<!-- Le javascript --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="${appCssPath}/assets/js/lib/jquery.js"></script> 
<script src="${appCssPath}/assets/js/lib/jquery-ui.js"></script>
<script src="${appCssPath}/assets/js/lib/jquery.cookie.js"></script> 
<script src="${appCssPath}/assets/js/lib/jquery.date.js"></script> 
<script src="${appCssPath}/assets/js/lib/jquery.mousewheel.js"></script> 
<script src="${appCssPath}/assets/js/lib/jquery.load-image.min.js"></script>
<script src="${appCssPath}/assets/js/lib/bootstrap/bootstrap.js"></script> 

<!-- Plugins Bootstrap -->
<script src="${appCssPath}/assets/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.min.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
<script src="${appCssPath}/assets/plugins/bootstrap-fuelux/all-fuelux.min.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="${appCssPath}/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script src="${appCssPath}/assets/plugins/bootstrap-daterangepicker/js/bootstrap-daterangepicker.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-toggle-button/js/bootstrap-toggle-button.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-fileupload/js/bootstrap-fileupload.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-rowlink/js/bootstrap-rowlink.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-progressbar/js/bootstrap-progressbar.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-select/bootstrap-select.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-multiselect/js/bootstrap-multiselect.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-bootbox/bootbox.min.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-modal/js/bootstrap-modal.js"></script> 
<script src="${appCssPath}/assets/plugins/bootstrap-wizard/js/bootstrap-wizard.min.js"></script>
<script src="${appCssPath}/assets/plugins/bootstrap-wizard-2/js/bwizard-only.min.js"></script>
<script src="${appCssPath}/assets/plugins/bootstrap-image-gallery/js/bootstrap-image-gallery.min.js"></script>
 

<!-- Plugins Custom - Only example --> 
<script src="${appCssPath}/assets/plugins/pl-extension/google-code-prettify/prettify.js"></script>

<!-- Plugins Custom - System --> 
<script src="${appCssPath}/assets/plugins/pl-system/nicescroll/jquery.nicescroll.min.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-system/xbreadcrumbs/xbreadcrumbs.js"></script> 

<!-- Plugins Custom - System info -->
<script src="${appCssPath}/assets/plugins/pl-system-info/qtip2/dist/jquery.qtip.min.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-system-info/gritter/js/jquery.gritter.min.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-system-info/notyfy/jquery.notyfy.js"></script>

<!-- Plugins Custom - Content -->
<script src="${appCssPath}/assets/plugins/pl-content/list/js/list.min.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-content/list/plugins/list.paging.min.js"></script>
<script src="${appCssPath}/assets/plugins/pl-content/jpages/js/jPages.js"></script> 

<!-- Plugins Custom - Component -->
<script src="${appCssPath}/assets/plugins/pl-component/fullcalendar/fullcalendar.min.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-component/rangeslider/jqallrangesliders.min.js"></script>

<!-- Plugins Custom - Form -->
<script src="${appCssPath}/assets/plugins/pl-form/uniform/jquery.uniform.min.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-form/select2/select2.min.js"></script>
<script src="${appCssPath}/assets/plugins/pl-form/counter/jquery.counter.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-form/elastic/jquery.elastic.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-form/inputmask/jquery.inputmask.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-form/inputmask/jquery.inputmask.extensions.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-form/validate/js/jquery.validate.min.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-form/duallistbox/jquery.duallistbox.min.js"></script>

<!-- Plugins Custom - Gallery --> 
<script src="${appCssPath}/assets/plugins/pl-gallery/nailthumb/jquery.nailthumb.1.1.min.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-gallery/nailthumb/showLoading/js/jquery.showLoading.min.js"></script>
<script src="${appCssPath}/assets/plugins/pl-gallery/wookmark/jquery.imagesloaded.js"></script>
<script src="${appCssPath}/assets/plugins/pl-gallery/wookmark/jquery.wookmark.min.js"></script>
 
<!-- Plugins Tables --> 
<script src="${appCssPath}/assets/plugins/pl-table/datatables/media/js/jquery.dataTables.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-table/datatables/plugin/jquery.dataTables.plugins.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-table/datatables/plugin/jquery.dataTables.columnFilter.js"></script> 

<!-- Plugins data visualization --> 
<script src="${appCssPath}/assets/plugins/pl-visualization/sparkline/jquery.sparkline.min.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/easy-pie-chart/jquery.easy-pie-chart.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/percentageloader/percentageloader.min.js"></script>
<script src="${appCssPath}/assets/plugins/pl-visualization/knob/knob.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/flot/jquery.flot.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/flot/jquery.flot.categories.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/flot/jquery.flot.grow.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/flot/jquery.flot.orderBars.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/flot/jquery.flot.pie.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/flot/jquery.flot.resize.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/flot/jquery.flot.selection.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/flot/jquery.flot.stack.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/flot/jquery.flot.stackpercent.js"></script> 
<script src="${appCssPath}/assets/plugins/pl-visualization/flot/jquery.flot.time.js"></script> 

<!-- main js --> 
<script src="${appCssPath}/assets/js/core.js"></script> 
<script src="${appCssPath}/assets/js/application.js"></script> 

<!-- Only This Demo Page --> 
<script type="text/javascript">
$('#loader-page').show();
		window.onload = function () {
        		$('#loader-page').fadeOut(3000);
};

$(document).ready(new function () {
        // This filter is later used as the selector for which grid items to show.
        var filter = '';
        var handler;

        // Prepare layout options.
        var options = {
                autoResize: true,
                container: $('#gallery'),
                offset: 2,
                itemWidth: 210
        };

        // This function filters the grid when a change is made.
        var refresh = function () {
                if(handler) {
                        handler.wookmarkClear();
                        handler = null;
                }
                $('#tiles li').addClass('inactive');
                handler = $(filter);
                handler.removeClass("inactive");
                handler.wookmark(options);
        }

        /**
         * This function checks all filter options to see which ones are active.
         * If they have changed, it also calls a refresh (see above).
         */
        var updateFilters = function () {
                var oldFilter = filter;
                filter = '';
                var filters = [];

                // Collect filter list.
                var lis = $('.gall-filters li');
                var i = 0,
                        length = lis.length,
                        li;
                for(; i < length; i++) {
                        li = $(lis[i]);
                        if(li.hasClass('active')) {
                                filters.push('#tiles li.' + li.attr('data-filter'));
                        }
                }

                // If no filters active, set default to show all.
                if(filters.length == 0) {
                        filters.push('#tiles li');
                }
                filter = filters.join(', ');
                if(oldFilter != filter) {
                        refresh();
                }
        };

        /**
         * When a filter is clicked, toggle it's active state and refresh.
         */
        var onClickFilter = function (event) {
                var item = $(event.currentTarget);
                $('.gall-filters li').removeClass('active');
                item.toggleClass('active');
                updateFilters();
        }

        // Capture filter click events.
        $('.gall-filters li').click(onClickFilter);
        updateFilters();
});

// Only demo change filter button
$("#changeFilter").click(function () {
        $('#filterBar').toggleClass('hidden');
});
</script>
</body>
</html>
