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
		<p>修改商品<span style="color:#ccc;">
			<c:if test="${empty shop}">
    			<a href="${appPath}/site/product/list.do">返回商品列表</a>
    		</c:if>
    		<c:if test="${!empty shop}">
    			<a href="${appPath}/site/shop/edit.do?id=${shop.id}">[${shop.shortName}]</a>|
    			<a href="${appPath}/site/product/list.do?shopId=${shop.id}">[${shop.shortName}]商品列表</a>
    		</c:if>	    		
		</span></p>        
	</div>
</div>
<div class="info">
	<div class="list"><span>商品名称：</span><input type="text" name="name" value="${product.name}"/> </div>
	<div class="list"><span>商品分类：</span>
		<select id="parentCat" name="parentCatId">                                        
            <c:forEach items="${catLst}" var="cat" varStatus="patCatStatus">                                            	
            	<option value="${cat.id}" <c:if test="${!empty form.parentCat}"><c:if test="${cat.id == form.parentCat.id}">selected</c:if></c:if>>${cat.name}</option>
            </c:forEach>
        </select>
    </div>
	<div class="list"><span>商品库存：</span><input type="text" name="count" value="${product.count}"/> </div>	
	<div class="list"><span>商品价格：</span><input type="text" id="priceShow" name="priceShow" value="${product.price/100}"/> </div>
    
	<div class="list border"><span>商品备注：</span><input type="text" name="remark" value="${product.remark}"/> </div>
	<div class="list border b_img">
    	<img id="img0" src="${nginxUrl}${product.logo}" alt="" />
    </div>
</div>
<div class="info" style="margin-top:10px;">

	<div class="list border"><span>商品图片：</span>
	<input id="fileName" type="file" name="fileName" value="上传图片"/> </div>
</div>
<div class="button">
	<input type="submit" value="保存" />
</div>
</form>
<script type="text/javascript">
     $(document).ready(function(){
		$('#fileName').ajaxfileupload({
			  action: '${appPath}/biz/upload_file/file_add.do?fkId=${product.id}&type=image&imageType=product&code=logo'
			});
		$("#fileName").change(function(){
			var objUrl = getObjectURL(this.files[0]) ;
			console.log("objUrl = "+objUrl) ;
			if (objUrl) {
				$("#img0").attr("src", objUrl) ;
			}
		}) ;
		$('div').imagefit({
		    mode: 'outside',
		    force : 'false',
		    valign : 'middle'
		});
		$("#priceShow").on('input',function(e){ 
			   		$("#price").val($(this).val()*100); 
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