<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="sidebar-item">
	<div class="media profile">
	    <div class="media-thumb media-left thumb-bordereb"> <a class="img-shadow" href="#">
	    <img class="thumb" src="${userinfo.avatar}"></a> </div>
	    <div class="media-body">
	    	<p class="data">用户名:<a >${currentUser.username}</a></p>
	    	<p class="data">状态:<a >${currentUser.status.title}</a></p>       
	    </div>
	</div>
</div>
<!-- // sidebar item - profile -->

<ul id="mainSideMenu" class="nav nav-list nav-side">
<li class="accordion-group">
    <div class="accordion-heading active"> 
    	<a href="#adminDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> 
    	<span class="item-icon fontello-icon-monitor"></span> 
    	<i class="chevron fontello-icon-right-open-3"></i> 系统管理 </a> 
    </div>
    <ul class="accordion-content nav nav-list collapse in" id="adminDash">
    	<li class="active"> <a href="${appPath}/admin/user/add.do"> <i class="fontello-icon-right-dir"></i> <span class="hidden-tablet">用户</span> 新增 </a> </li>
    	<li> <a href="${appPath}/admin/user/list.do"> <i class="fontello-icon-right-dir"></i> <span class="hidden-tablet">用户</span> 管理 </a> </li>
        <li> <a href="${appPath}/admin/role/list.do"> <i class="fontello-icon-right-dir"></i> <span class="hidden-tablet">角色 </span> 管理 </a> </li>
        <li> <a href="${appPath}/admin/menu/list.do"> <i class="fontello-icon-right-dir"></i> <span class="hidden-tablet">菜单</span> 管理 </a> </li>
        <li> <a href="${appPath}/admin/dict/list.do"> <i class="fontello-icon-right-dir"></i> <span class="hidden-tablet">字典 </span> 管理 </a> </li>
    </ul>
</li>
<!-- // item accordionMenu Dashboard -->
<li class="accordion-group">
    <div class="accordion-heading"> <a href="#shopDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon aweso-icon-list-alt"></span><i class="chevron fontello-icon-right-open-3"></i> 客户管理 </a> </div>
    <ul class="accordion-content nav nav-list collapse" id="shopDash">
    	<li> <a href="${appPath}/user/user_info/list.do"> <i class="fontello-icon-right-dir"></i>客户管理 </a> </li>  
        <li> <a href="${appPath}/user/order/today_list.do"> <i class="fontello-icon-right-dir"></i> 今日订单 </a> </li>
        <li> <a href="${appPath}/user/order/undisposed_list.do"> <i class="fontello-icon-right-dir"></i> 未处理订单 </a> </li>
        <li> <a href="${appPath}/user/order/list.do"> <i class="fontello-icon-right-dir"></i> 所有订单 </a> </li>
    </ul>
</li>
<!-- // item accordionMenu Dashboard -->
<li class="accordion-group">
    <div class="accordion-heading"> <a href="#productDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon aweso-icon-list-alt"></span><i class="chevron fontello-icon-right-open-3"></i> 商品管理 </a> </div>
    <ul class="accordion-content nav nav-list collapse" id="productDash">
    	<li> <a href="${appPath}/shop/product/add.do"> <i class="fontello-icon-right-dir"></i> 商品新增 </a> </li>
        <li> <a href="${appPath}/shop/product/sell_list.do"> <i class="fontello-icon-right-dir"></i> 上架商品管理 </a> </li>
        <li> <a href="${appPath}/shop/product/lack_list.do"> <i class="fontello-icon-right-dir"></i> 缺货商品管理 </a> </li>
        <li> <a href="${appPath}/shop/product/list.do"> <i class="fontello-icon-right-dir"></i> 所有商品管理 </a> </li>        
    </ul>
</li>
<!-- // item accordionMenu Dashboard -->
<li class="accordion-group">
    <div class="accordion-heading"> <a href="#groupPurchaseDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon aweso-icon-list-alt"></span><i class="chevron fontello-icon-right-open-3"></i> 团购管理 </a> </div>
    <ul class="accordion-content nav nav-list collapse" id="groupPurchaseDash">
       <li> <a href="${appPath}/shop/group_purchase/curr_list.do"> <i class="fontello-icon-right-dir"></i> 当前团购管理 </a> </li>
         <li> <a href="${appPath}/shop/group_purchase/succ_list.do"> <i class="fontello-icon-right-dir"></i> 成功团购管理 </a> </li>
         <li> <a href="${appPath}/shop/group_purchase/fail_list.do"> <i class="fontello-icon-right-dir"></i> 失败团购管理 </a> </li>
        <li> <a href="${appPath}/shop/group_purchase/list.do"> <i class="fontello-icon-right-dir"></i> 所有团购管理 </a> </li>
    </ul>
</li>

<!-- // item accordionMenu Forms -->
<li class="accordion-group">
    <div class="accordion-heading"> <a href="#infoDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon fontello-icon-align-justify"></span> <i class="chevron fontello-icon-right-open-3"></i> 信息维护 </a> </div>
    <ul class="accordion-content nav nav-list collapse" id="infoDash">
        <li> <a href="${appPath}/biz/cat/parent.do"> <i class="fontello-icon-right-dir"></i> 产品分类 </a> </li>
        <li> <a href="${appPath}/biz/ad/list.do"> <i class="fontello-icon-right-dir"></i> 广告维护 </a> </li>
        <li> <a href="component-rangeslider.html"> <i class="fontello-icon-right-dir"></i> 快递维护 </a> </li>
        <li> <a href="${appPath}/sys/identifying/list.do"> <i class="fontello-icon-right-dir"></i> 验证码管理 </a> </li>
        <li> <a href="${appPath}/sys/identifying/list.do"> <i class="fontello-icon-right-dir"></i> 上传文件管理</a> </li>
    </ul>
</li>
<!-- // item accordionMenu Dashboard -->
<li class="accordion-group">
    <div class="accordion-heading"> <a href="#ployDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon aweso-icon-list-alt"></span><i class="chevron fontello-icon-right-open-3"></i> 活动管理 </a> </div>
    <ul class="accordion-content nav nav-list collapse" id="ployDash">
        <li> <a href="${appPath}/biz/ploy/add.do"> <i class="fontello-icon-right-dir"></i> 活动新增 </a> </li>
        <li> <a href="${appPath}/biz/ploy/curr_list.do"> <i class="fontello-icon-right-dir"></i> 当前活动管理 </a> </li>
        <li> <a href="${appPath}/biz/ploy/list.do"> <i class="fontello-icon-right-dir"></i> 所有活动管理 </a> </li>
         <li> <a href="${appPath}/biz/ploy/list.do"> <i class="fontello-icon-right-dir"></i> 任务新增 </a> </li>
        <li> <a href="${appPath}/biz/ploy/curr_list.do"> <i class="fontello-icon-right-dir"></i> 当前任务管理 </a> </li>
        <li> <a href="${appPath}/biz/ploy/list.do"> <i class="fontello-icon-right-dir"></i> 所有任务管理 </a> </li>
    </ul>
</li>

<!-- // item accordionMenu Tables -->
<li class="accordion-group">
    <div class="accordion-heading"> <a href="#accStatistics" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon fontello-icon-chart"></span> <i class="chevron fontello-icon-right-open-3"></i> 我的 </a> </div>
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