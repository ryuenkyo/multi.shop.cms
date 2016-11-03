<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<script src="${templetDir}assets/js/lib/jquery.js"></script> 
<script src="${templetDir}assets/js/lib/jquery-ui.js"></script>
<script src="${templetDir}assets/js/lib/jquery.cookie.js"></script> 
<script src="${templetDir}assets/js/lib/jquery.mousewheel.js"></script> 
<script src="${templetDir}assets/js/lib/jquery.load-image.min.js"></script>
<script src="${templetDir}assets/js/lib/bootstrap/bootstrap.js"></script> 
<script type="text/javascript">	
		//建立一個可存取到該file的url
		function change_main_content(showUrl) {
			var mainContent=$.ajax({url:showUrl,async:false});
               //显示Ajax返回结果
            $("#main-content").html(mainContent.responseText);
		}

</script>
<div class="sidebar-item">
	<div class="media profile">
	    <div class="media-thumb media-left thumb-bordereb"> 
	    	<a class="img-shadow" href="${appPath}/admin/user/profile.do">
	    <img class="thumb" src="<c:if test="${!empty userInfo.avatar}">${nginxUrl}${userInfo.avatar}</c:if><c:if test="${empty userInfo.avatar}">http://localhost/default.jpg</c:if>"></a> </div>
	    <div class="media-body">
	    	<p class="data">用户名:<a >${user.username}</a></p>
	    	<p class="data">状态:<a >${user.status.title}</a></p>    	    
	    </div>
	</div>
</div>
<!-- // sidebar item - profile -->

<ul id="mainSideMenu" class="nav nav-list nav-side">
<c:if test="${!empty menus}">						    
	<c:forEach items="${menus}" var="menu" varStatus="status">
	<li class="accordion-group">
		<c:if test="${!empty currMenu}">
			<c:if test="${!empty currMenu.parent}">
				<c:if test="${currMenu.parent.code==menu.code}">
			    	<div class="accordion-heading active"> 
			    </c:if>
		    	<c:if test="${currMenu.parent.code!=menu.code}">
			    	<div class="accordion-heading"> 
			    </c:if>
		    </c:if>
		    <c:if test="${empty currMenu.parent}">
		    	<div class="accordion-heading"> 
		    </c:if>	    	
	    </c:if>
	    <c:if test="${empty currMenu}">
	    	<div class="accordion-heading"> 
	    </c:if>
	    <a href="#menu${menu.code}" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> 
	    <span class="item-icon fontello-icon-monitor"></span> 
	    <i class="chevron fontello-icon-right-open-3"></i>${menu.name} </a> </div>
	    <c:if test="${!empty currMenu}">
			<c:if test="${!empty currMenu.parent}">
				<c:if test="${currMenu.parent.code==menu.code}">
			    	<ul class="accordion-content nav nav-list collapse in" id="#menu${menu.code}"> 
			    </c:if>
		    	<c:if test="${currMenu.parent.code!=menu.code}">
			    	<ul class="accordion-content nav nav-list collapse in" id="#menu${menu.code}">
			    </c:if>
		    </c:if>
		    <c:if test="${empty currMenu.parent}">
		    	<ul class="accordion-content nav nav-list collapse in" id="#menu${menu.code}">
		    </c:if>	    	
	    </c:if>
	    <c:if test="${empty currMenu}">
	    	<ul class="accordion-content nav nav-list collapse in" id="#menu${menu.code}">
	    </c:if>	    
	    	<c:forEach items="${menu.childs}" var="menuChild" varStatus="childstatus">
	    		<li <c:if test="${currMenu.code==menuChild.code}">class="active"</c:if>> 
	    			<a href="${appPath}${menuChild.menuUrl}"> 
	    			<i class="fontello-icon-right-dir"></i>
	    			${menuChild.name} </a> 
	    		</li>
	    	</c:forEach>
	    </ul>
	</li>
	</c:forEach>
</c:if>
<c:if test="${empty menus}">	
<li class="goods-group">
    <div class="goods-heading"> <a href="#goodsDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon aweso-icon-list-alt"></span><i class="chevron fontello-icon-right-open-3"></i> 商品管理 </a> </div>
    <ul class="goods-content nav nav-list collapse" id="goodsDash">
		<li> <a href="javascript:void(0)" onclick="change_main_content('${appPath}/admin/product/list.do?orders=lastModifiedDate&direction=DESC')"> <i class="fontello-icon-right-dir"></i> 商品 管理</a> </li>        
    </ul>
</li>
<li class="order-group">
    <div class="order-heading"> <a href="#orderDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon aweso-icon-list-alt"></span><i class="chevron fontello-icon-right-open-3"></i> 订单管理 </a> </div>
    <ul class="order-content nav nav-list collapse" id="orderDash">
    	<li> <a href="${appPath}/admin/order/undisposed_list.do"> <i class="fontello-icon-right-dir"></i> 已付款待处理 </a> </li>
        <li> <a href="${appPath}/admin/product/sell_list.do"> <i class="fontello-icon-right-dir"></i> 已发货订单 </a> </li>
        <li> <a href="${appPath}/admin/product/lack_list.do"> <i class="fontello-icon-right-dir"></i> 已收货订单 </a> </li>
        <li> <a href="${appPath}/admin/product/uncat_list.do"> <i class="fontello-icon-right-dir"></i> 退货/退款订单 </a> </li>
        <li> <a href="${appPath}/admin/product/list.do?orders=lastModifiedDate&direction=DESC"> <i class="fontello-icon-right-dir"></i> 所有订单 </a> </li>        
    </ul>
</li>
<li class="customer-group">
    <div class="customer-heading"> 
    	<a href="#customerDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> 
    <span class="item-icon aweso-icon-list-alt"></span>
    <i class="chevron fontello-icon-right-open-3"></i> 客户关系管理 </a> </div>
    <ul class="customer-content nav nav-list collapse" id="customerDash">
    	<li> <a href="${appPath}/admin/customer/list.do?regType=normal"> <i class="fontello-icon-right-dir"></i>客户管理 </a> </li>  
        <li> <a href="${appPath}/admin/customer/list.do?regType=weixin"> <i class="fontello-icon-right-dir"></i>客户管理[微信] </a> </li>
        <li> <a href="${appPath}/admin/order/today_list.do"> <i class="fontello-icon-right-dir"></i> 今日订单 </a> </li>
        <li> <a href="${appPath}/admin/order/undisposed_list.do"> <i class="fontello-icon-right-dir"></i> 未处理订单 </a> </li>
        <li> <a href="${appPath}/admin/order/list.do"> <i class="fontello-icon-right-dir"></i> 所有订单 </a> </li>
        <li> <a href="${appPath}/admin/customer/list.do"> <i class="fontello-icon-right-dir"></i> 所有客户</a> </li>
    </ul>
</li>
<li class="ploy-group">
    <div class="ploy-heading"> 
    	<a href="#ployDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> 
    <span class="item-icon aweso-icon-list-alt"></span>
    <i class="chevron fontello-icon-right-open-3"></i> 促销管理 </a> </div>
    <ul class="ploy-content nav nav-list collapse" id="ployDash">
    	<li> <a href="${appPath}/biz/ad/list.do"> <i class="fontello-icon-right-dir"></i>广告管理 </a> </li>  
        <li> <a href="${appPath}/biz/article/list.do"> <i class="fontello-icon-right-dir"></i>活动管理</a> </li>
    </ul>
</li>
<li class="store-group">
    <div class="store-heading"> 
    	<a href="#storeDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> 
    <span class="item-icon aweso-icon-list-alt"></span>
    <i class="chevron fontello-icon-right-open-3"></i> 库存管理 </a> </div>
    <ul class="store-content nav nav-list collapse" id="storeDash">
    	<li> <a href="${appPath}/admin/customer/list.do?regType=normal"> <i class="fontello-icon-right-dir"></i>客户管理 </a> </li>  
        <li> <a href="${appPath}/admin/customer/list.do?regType=weixin"> <i class="fontello-icon-right-dir"></i>客户管理[微信] </a> </li>
        <li> <a href="${appPath}/admin/order/today_list.do"> <i class="fontello-icon-right-dir"></i> 今日订单 </a> </li>
        <li> <a href="${appPath}/admin/order/undisposed_list.do"> <i class="fontello-icon-right-dir"></i> 未处理订单 </a> </li>
        <li> <a href="${appPath}/admin/order/list.do"> <i class="fontello-icon-right-dir"></i> 所有订单 </a> </li>
        <li> <a href="${appPath}/admin/customer/list.do"> <i class="fontello-icon-right-dir"></i> 所有客户</a> </li>
    </ul>
</li>

<!-- // item accordionMenu Forms -->
<li class="info-group">
    <div class="info-heading"> <a href="#infoDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon fontello-icon-align-justify"></span> <i class="chevron fontello-icon-right-open-3"></i> 信息维护 </a> </div>
    <ul class="info-content nav nav-list collapse" id="infoDash">
        <li> <a href="${appPath}/biz/cat/parent.do"> <i class="fontello-icon-right-dir"></i> 产品分类 </a> </li>
        <li> <a href="${appPath}/biz/ad/list.do"> <i class="fontello-icon-right-dir"></i> 广告维护 </a> </li>
        <li> <a href="${appPath}/shop/brand/list.do"> <i class="fontello-icon-right-dir"></i> 品牌维护 </a> </li>
        <li> <a href="component-rangeslider.html"> <i class="fontello-icon-right-dir"></i> 快递维护 </a> </li>
        <li> <a href="${appPath}/sys/identifying/list.do"> <i class="fontello-icon-right-dir"></i> 验证码管理 </a> </li>
        <li> <a href="${appPath}/sys/identifying/list.do"> <i class="fontello-icon-right-dir"></i> 上传文件管理</a> </li>
    </ul>
</li>
<!-- // item accordionMenu Dashboard -->

</c:if>
<!-- // item accordionMenu Calendar -->
</ul>
<!-- // sidebar menu -->

<div class="sidebar-item"></div>
<!-- // sidebar item --> 

