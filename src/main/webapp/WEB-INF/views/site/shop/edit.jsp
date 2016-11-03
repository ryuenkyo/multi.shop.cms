<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<%@ include file="/image.upload.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<div class="list">
<form action="#"  method="POST">
<input type="hidden" name="id" value="${shop.id}" />
	<div class="l_top">
		<p><a href="${appPath}/site/shop/edit.do?id=${shop.id}">返回店铺列表</a>
			<span style="color:#ccc;">
				<a href="${appPath}/site/shop/del.do?id=${shop.id}">删除</a>
			</span>
		</p>        
	</div>
	<div class="l_bottom">
		<div class="b_img">
	    	<img src="${nginxUrl}${shop.logo}" alt="" />
	    	<input id="fileName" type="file" name="fileName"/>
	    </div>
	    <div class="b_list">	    
	    	<p>店铺名称：<span style="color:#ccc;"><input id="shortName" type="text" value="${shop.shortName}" name="shortName"></span></p>
	    	<p>创建时间：${shop.createdDate} </p>
	        <p >店铺地址：<input id="address" type="text" value="${shop.address}" name="address"></p>
	        <p>联系电话：<input id="telephone" type="text" value="${shop.telephone}" name="telephone"></p>
             <p>
            	<a href="${appPath}/site/order/list.do?shopId=${shop.id}">订单</a>
            	<a href="${appPath}/site/product/list.do?shopId=${shop.id}">店铺商品</a>
            	<a href="${appPath}/site/cat/list.do?shopId=${shop.id}">分类</a>
            	<a href="${appPath}/site/ad/list.do?shopId=${shop.id}">店铺广告</a></p> 
	    </div>
	</div>
	<div class="button">
		<input type="submit" value="保存" />
	</div>
</form>	
</div>
<script type="text/javascript">
     $(document).ready(function(){
		$('#fileName').ajaxfileupload({
			  action: '${appPath}/biz/upload_file/file_add.do?fkId=${shop.id}&type=image&imageType=shop&code=logo'
			});
    });
</script>	