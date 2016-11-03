<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<%@ include file="/image.upload.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<link rel="stylesheet" href="${siteTempletDir}/css/goods.css" />
<form action="#"  method="POST">
<input type="hidden" name="shopId" value="${shop.id}" />
<input type="hidden" name="price" id="price" value="${product.price}" />
<div class="list">
	<div class="l_top">
		<p>修改广告<span style="color:#ccc;">
			<c:if test="${empty shop}">
    			<a href="${appPath}/site/ad/list.do">返回广告列表</a>
    		</c:if>
    		<c:if test="${!empty shop}">
    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
    			<a href="${appPath}/site/ad/list.do?shopId=${shop.id}">[${shop.shortName}]广告列表</a>
    		</c:if>	    		
		</span></p>        
	</div>
</div>
<div class="info">
	<div class="list"><span>广告标题：</span><input type="text" name="title" value="${ad.title}"/> </div>
	<div class="list"><span>广告地址：</span><input type="text" name="httpUrl" value="${ad.httpUrl}"/> </div>
    
	<div class="list border"><span>广告内容：</span>
			<input type="text" name="content" value="${ad.content}"/> </div>
	<div class="list border b_img">
    	<img id="img0" src="${nginxUrl}${ad.logo}" alt="" />
    </div>
</div>
<div class="info" style="margin-top:10px;">

	<div class="list border"><span>广告图片：</span>
	<input id="fileName" type="file" name="fileName" value="上传图片"/> </div>
</div>
<div class="button">
	<input type="submit" value="保存" />
</div>
</form>
<script type="text/javascript">
     $(document).ready(function(){
		$('#fileName').ajaxfileupload({
			  action: '${appPath}/biz/upload_file/file_add.do?fkId=${ad.id}&type=image&imageType=ad&code=logo'
			});
		$("#fileName").change(function(){
			var objUrl = getObjectURL(this.files[0]) ;
			console.log("objUrl = "+objUrl) ;
			if (objUrl) {
				$("#img0").attr("src", objUrl) ;
			}
		});
		$('div').imagefit({
		    mode: 'outside',
		    force : 'false',
		    valign : 'middle'
		});

		//建立一個可存取到該file的url
		function getObjectURL(file) {
			var url = null ; 
			if (window.createObjectURL!=undefined) { // basic
				url = window.createObjectURL(file) ;
			} else if (window.URL!=undefined) { // mozilla(firefox)
				url = window.URL.createObjectURL(file) ;
			} else if (window.webkitURL!=undefined) { // webkit or chrome
				url = window.webkitURL.createObjectURL(file) ;
			}
			return url ;
		}

    });
</script>