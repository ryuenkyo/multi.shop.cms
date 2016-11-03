<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<style type="text/css">
        #imglist img{width:150px;height:120px;}
        #imgshow{
	        position:absolute;
	        border:1px solid #ccc;
	        background:#333;
	        padding:5px;
	        color:#fff;
	        display:none;
	    }
</style>
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
            	<input type="hidden" id="parentCatId" name="parentCatId" value="<c:if test="${!empty form.parentCat}">${form.parentCat.id}</c:if>" />
				<input type="hidden" id="catId" name="catId" value="<c:if test="${!empty form.category}">${form.category.id}</c:if>" />
                <div class="row-fluid">
                    <div class="span12 form-dark">
                     <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>商品修改</h4>
                                </li>
                                 <!-- // section form divider -->                                
                            </ul>
                             <ul id="imglist" class="thumbnails" data-toggle="modal-gallery" data-target="#modal-gallery" data-selector="li.thumbnail">	                            
	                             <li class="span3">
		                            <div class="thumbnail text-center">
		                                <div class="equalize"> <a href="${appPath}/shop/product/edit_logo_img.do?productId=${form.id}">
		                                	<img class="radius-top3" src="<c:if test="${!empty form.logo}">${form.logo}</c:if><c:if test="${empty form.logo}">http://localhost:88/default.jpg</c:if>"></a>
		                                    <div class="caption">
		                                        <h4>产品名称：<a class="btn btn-small">更换图片</a></h4>
		                                        <hr class="margin-mm">
		                                        <p class="text-center"><lineTag:show content="${form.name}" length="10"/></p>
		                                    </div>
		                                </div>		                               
		                            </div>
		                        </li>
		                        <li class="span3">
		                            <div class="thumbnail text-center">
		                                <div class="equalize"> <a href="${appPath}/shop/product/brand.do?id=${form.id}">
		                                	<img class="radius-top3" src="<c:if test="${!empty form.brandLogo}">${form.brandLogo}</c:if><c:if test="${empty form.brandLogo}">http://localhost:88/default.jpg</c:if>"></a>
		                                    <div class="caption">
		                                        <h4>品牌：<a href="${appPath}/shop/product/brand.do?id=${form.id}" class="btn btn-small">更换品牌</a></h4>
		                                        <hr class="margin-mm">
		                                        <p class="text-center">${form.brand}</p>
		                                    </div>
		                                </div>		                                
		                            </div>
		                        </li>
		                        <li class="span3">
		                            <div class="thumbnail text-center">
		                                <div class="equalize"> <a href="#">
		                                	<img class="radius-top3" src="<c:if test="${!empty form.originLogo}">${form.originLogo}</c:if><c:if test="${empty form.originLogo}">http://localhost:88/default.jpg</c:if>"></a>
		                                    <div class="caption">
		                                        <h4>产地：<a href="${appPath}/shop/product/origin.do?id=${form.id}" class="btn btn-small">更换产地</a></h4>
		                                        <hr class="margin-mm">
		                                        <p class="text-center">${form.origin}</p>
		                                    </div>
		                                </div>		                                
		                            </div>
		                        </li>	                            
	                          </ul>	
                        </fieldset>    
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <!-- // section form divider -->                            
                                <li class="control-group">
                                    <label for="accountPrefix" class="control-label span2">商品名称<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="name" type="text" value="${form.name}" name="name">                                        
                                        <a class="btn cancel" href="${appPath}/shop/product/prices.do?id=${form.id}">多价格管理</a>
                                    </div>   
                                    <label for="accountPrefix" class="control-label span1">商品价格<span class="required">*</span></label>
                                    <div class="controls span5">
                                    	<a class="btn cancel" href="#">展示价格:${form.priceSrc/100}元</a>
                                    	<a class="btn cancel" href="#">原始价格:${form.price/100}元</a>
                                    	<a class="btn cancel" href="#">团购价格:${form.priceTuan/100}元</a>                                    	                                    	
                                    </div>                                              
                                </li>
                                <li class="control-group">
                                     <label for="count" class="control-label span2">邮费<span class="required">*</span></label>
                                     <div class="controls span6">
                                        <input id="postfree" type="text" value="${form.postfree}" name="postfree">
                                        <a class="btn cancel" href="${appPath}/shop/product/standard.do?id=${form.id}">商品规格</a>
                                        <a class="btn cancel" href="#">商品数量:${form.count}</a> 
                                        <a href="${appPath}/shop/product/stock.do?id=${form.id}" class="btn btn-small">进货</a>                                                                                           
                                    </div>                                              
                                </li>                            
                                
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="parentCat" class="control-label span2">分类<span class="required">*</span></label>
                                    <div class="controls span4"><!--disabled-->
                                        <select id="parentCat" class="selectpicker input-medium" data-style="btn-info">
                                            <c:forEach items="${catLst}" var="cat" varStatus="patCatStatus">
                                            	<option value="${cat.id}" <c:if test="${!empty form.parentCat}"><c:if test="${cat.id == form.parentCat.id}">selected</c:if></c:if>>${cat.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="controls span4" id="subCatDiv">
                                        <select id="subCat" class="selectpicker input-medium" data-style="btn-info">
                                        	<c:if test="${!empty parentCat}">
                                        		<c:forEach items="${parentCat.subs}" var="subCat" varStatus="catStatus">
	                                            	<option value="${subCat.id}" <c:if test="${!empty form.category}"><c:if test="${subCat.id == form.category.id}">selected</c:if></c:if>>${subCat.name}</option>
	                                            </c:forEach> 
                                        	</c:if> 
                                        	<c:if test="${empty parentCat}">
                                        		<option value="">请选择</option> 
                                        	</c:if>                                                                                    
                                        </select>
                                    </div>
                                        <%--<c:forEach items="${catLst}" var="patCat" varStatus="catStatus">
	                                        <select id="catId${catStatus.index}" class="catId selectpicker input-medium" data-style="btn-info" style="display: none;">
	                                        	<c:forEach items="${patCat.subs}" var="subCat" varStatus="subCatStatus">	                                            
	                                            	<option value="${subCat.id}">${subCat.name}</option>	                                            
	                                        	</c:forEach>
	                                        </select>
                                        </c:forEach>--%>
                                    
                                </li>
      
                                <%-- <li class="control-group">
                                    <label for="status" class="control-label">状态 <span class="required">*</span></label>
                                    <div class="controls">
                                        <select id="status" class="selectpicker input-medium" data-style="btn-info" name="status">
                                            <c:forEach items="${statusLst}" var="staObj" varStatus="productStatus">
                                            	<option value="${staObj}" <c:if test="${staObj ==form.status}">selected </c:if>>${staObj.title}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                                
                                <li class="control-group">
                                    <label for="content" class="control-label">描述 <span class="required">*</span></label>
                                    <div class="controls">
                                    	<textarea id="content" name="content" class="input-block-level" rows="4">${form.content}</textarea>                                                	
                                    </div>
                                </li>
                                --%>
                                <!-- // form item -->
                                
                                
                            </ul>
                        </fieldset>                                    
                        <!-- // fieldset Input -->
                        <div class="form-actions">
                            <button type="submit" class="btn btn-blue">保存</button>
                            <button class="btn cancel">取消</button>
                            <c:if test="${form.count > 0}">
                            	<a class="btn btn-blue" href="${appPath}/shop/product/onsell.do?id=${form.id}">上架<a>
                            </c:if>
                            <a class="btn btn-blue" href="${appPath}/biz/ad/banner_goods.do?productId=${form.id}">设为广告轮播图片<a>
                            <a class="btn btn-blue" href="${appPath}/biz/ad/top_product_ad.do?productId=${form.id}">设为广告图<a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
var ShowImage = function () {
            xOffset = 10;
            yOffset = 30;
            $("#imglist").find("img").hover(function (e) {
                $("<img id='imgshow' src='" + this.src + "' />").appendTo("body");
                $("#imgshow")
                    .css("top", (e.pageY - xOffset) + "px")
                	.css("left", (e.pageX + yOffset) + "px")
			        .fadeIn("fast");
            }, function () {
                $("#imgshow").remove();
            });

            $("#imglist").find("img").mousemove(function (e) {
                $("#imgshow")
                   .css("top", (e.pageY - xOffset) + "px")
		           .css("left", (e.pageX + yOffset) + "px")
            });
        };
    $(document).ready(function(){
    	$("#parentCat").change(function(){
                $("#parentCat option").each(function(i,o){
                    if($(this).attr("selected"))
                    {
                    	$("#parentCatId").val($(this).val());                       
                        $.ajax({
				            url: "${appPath}/getsubs_cat.do?parentId="+$(this).val(),
				            type: "get",
				            cache: false,
				            success: function(rejson){
				            	$("#subCatDiv").html(rejson);
				            },
				            error: function(XMLHttpRequest, textStatus){
				                alert(textStatus);
				                return
				            }
				        });
                    }
                });
         });

         $("#parentCat").change();
         ShowImage();
    });
    
    </script>
    <%--http://www.cnblogs.com/58top/archive/2012/12/10/2811779.html           
<script type="text/javascript">
         $(document).ready(function(){
             $("#parentCatId").change(function(){
                $("#parentCatId option").each(function(i,o){
                    if($(this).attr("selected"))
                    {
                    	$("#postfree").val(i);
                        $(".catId").hide();
                        $("#catId"+i).show();
                    }
                });
            });
            $("#parentCatId").change();
        });
</script>--%>