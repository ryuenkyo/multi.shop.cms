<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<%@ include file="/image.upload.jsp"%>
<link rel="stylesheet" href="${siteTempletDir}/css/list.css" />
<link rel="stylesheet" href="${siteTempletDir}/css/goods.css" />
<form action="#"  method="POST">
<input type="hidden" name="shopId" value="${shop.id}" />
<div class="list">
	<div class="l_top">
		<p>修改分类<span style="color:#ccc;">
			<c:if test="${empty shop}">
    			<a href="${appPath}/site/cat/list.do">返回分类列表</a>
    		</c:if>
    		<c:if test="${!empty shop}">
    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
    			<a href="${appPath}/site/cat/list.do?shopId=${shop.id}">[${shop.shortName}]分类列表</a>
    		</c:if>	    		
		</span></p>        
	</div>
</div>
<div class="info">
	<div class="list"><span>分类名称：</span><input type="text" name="name" value="${category.name}"/> </div>
   
	<div class="list border b_img">
    	<img id="img0" src="${nginxUrl}${category.logo}" alt="" />
    </div>
</div>
<div class="info" style="margin-top:10px;">

	<div class="list border"><span>分类图片：</span>
	<input id="fileName" type="file" name="fileName" value="上传图片"/> </div>
</div>
<div class="button">
	<input type="submit" value="保存" />
</div>
</form>
<script type="text/javascript">
     $(document).ready(function(){
		$('#fileName').ajaxfileupload({
			  action: '${appPath}/biz/upload_file/file_add.do?fkId=${category.id}&type=image&imageType=category&code=logo'
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