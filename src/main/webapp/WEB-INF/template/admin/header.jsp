<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
	    <div class="container-fluid">
	        <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
	        <a class="brand" href="javascript:void(0);"><img src="${templetDir}/assets/img/demo/logo-brand.png"></a>
	         <div class="search-global">
	            <input id="globalSearch" class="search search-query input-medium" type="search">
	            <a class="search-button" href="javascript:void(0);"><i class="fontello-icon-search-5"></i></a> 
	         </div>
	         <div class="nav-collapse collapse">
	            <ul class="nav user-menu visible-desktop">
	               <li><a class="btn-glyph fontello-icon-edit tip-bc" href="javascript:void(0);" title="信息"><span class="badge badge-important">8</span></a></li>
	               <li><a class="btn-glyph fontello-icon-mail-1 tip-bc" href="javascript:void(0);" title="邮件"></a></li>
	               <li><a class="btn-glyph fontello-icon-lifebuoy tip-bc" href="javascript:void(0);" title="关注"><span class="badge badge-important">4</span></a></li>
	            
	            </ul>
	            <ul class="nav">
	                <li class="active"> <a href="${appPath}/admin/">首页</a> </li>
	                <li> <a href="${appPath}/trade/main.do">商户</a> </li>
	                <li> <a href="${appPath}/customer/main.do">拥护</a> </li>
	                <li> <a href="${appPath}/admin/calendar.do"><span class="fontello-icon-calendar"></span>日程</a> </li>
	                <li> <a href="${appPath}/admin/contacts.do"><span class="fontello-icon-users"></span>通讯录</a> </li>
	                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"><span class="fontello-icon-list-1"></span>自定义 <b class="caret"></b></a>
	                    <ul class="dropdown-menu">
	                        <li><a tabindex="-1" href="component-form-demo.html">Demo Form</a></li>
	                        <li><a tabindex="-1" href="component-widgets-remember.html">Remember</a></li>
	                        <li><a tabindex="-1" href="component-widgets-users.html">User List</a></li>
	                        <li class="dropdown-submenu"><a tabindex="-1" href="javascript:void(0);">Login page</a>
	                            <ul class="dropdown-menu">
	                                <li><a tabindex="-1" href="login-01.html" target="_blanc">Type Horizontal</a></li>
	                                <li><a tabindex="-1" href="login-02.html" target="_blanc">Type Vertical</a></li>
	                            </ul>
	
	                        </li>
	                        <li class="divider"></li>
	                        <li class="nav-header">Next Update</li>
	                        <li><a tabindex="-1" href="javascript:void(0);">Contacts</a></li>
	                        <li><a tabindex="-1" href="javascript:void(0);">Email</a></li>
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
        <li><a href="${appPath}/admin">
        	<i class="fontello-icon-home f12"></i> ${sysConfig.sysName}</a> <span class="divider">/</span></li>
        <li class="dropdown"><a href="javascript:void(0);">系统管理 </a> <span class="divider">/</span>
            <ul class="dropdown-menu">
                <li><a href="javascript:void(0);">Table</a></li>
                <li><a href="javascript:void(0);">Elements</a></li>
                <li><a href="javascript:void(0);">Elements</a></li>
                <li><a href="javascript:void(0);">Elements</a></li>
            </ul>
        </li>
        <li class="active">用户管理 </li>
    </ul>
</div>
<!-- // breadcrumbs --> 
</div>