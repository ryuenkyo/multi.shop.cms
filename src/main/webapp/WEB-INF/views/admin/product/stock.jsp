<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->

<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
                <div class="row-fluid">
                    <div class="span12 form-dark">
                     <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>商品进货</h4>
                                </li>
                                 <!-- // section form divider -->                                
                            </ul>
                            <ul class="form-list label-left list-bordered dotted">
                            	<li class="control-group">
                                    <label for="name" class="control-label span2">产品图片<span class="required">*</span></label>
                                    <div class="controls span2">
                                    	<c:if test="${!empty form.logo}">
	                                        <img src="${form.logo}" class="thumbnail" width="32" height="32">
										</c:if>
										<c:if test="${empty form.logo}">无</c:if>											                                                                                      
                                    </div>
                                    <label for="brand" class="control-label span2">品牌<c:if test="${!empty form.brand}">[${form.brand}]</c:if><span class="required">*</span></label>
                                    <div class="controls span2">
                                    	<c:if test="${!empty form.brand}">
	                                        <img src="${form.brandLogo}" class="thumbnail" width="32" height="32">
										</c:if>
										<c:if test="${empty form.brand}">无</c:if>
                                    </div>   
                                    <label for="brand" class="control-label span2">产地<c:if test="${!empty form.origin}">[${form.origin}]</c:if><span class="required">*</span></label>
                                    <div class="controls span2">
                                    	<c:if test="${!empty form.origin}">
	                                        <img src="${form.originLogo}" class="thumbnail" width="32" height="32">
										</c:if>
										<c:if test="${empty form.origin}">无</c:if>
                                    </div>                                               
                                </li>
                                <!-- // section form divider -->
                               
                            </ul>
                        </fieldset>    
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <!-- // section form divider -->
                                <li class="control-group">
                                    <label for="accountPrefix" class="control-label span2">商品名称<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input disabled id="name" type="text" value="${form.name}" name="name">
                                        <a class="btn cancel" href="#">邮费:${form.postfree}元</a>
                                    </div>   
                                    <label for="accountPrefix" class="control-label span1">商品价格<span class="required">*</span></label>
                                    <div class="controls span5">
                                    	<a class="btn cancel" href="#">展示价格:${form.priceSrc/100}元</a>
                                    	<a class="btn cancel" href="#">原始价格:${form.price/100}元</a>
                                    	<a class="btn cancel" href="#">团购价格:${form.priceTuan/100}元</a>                                    	                                    	
                                    </div>                                                  
                                </li>
                                <li class="control-group">
                                     <label for="count" class="control-label span2">商品数量<span class="required">*</span></label>
                                     <div class="controls">
                                        <input id="count" type="text" value="${form.count}" name="count">
                                    </div>                                               
                                </li>                             
                                
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="parentCat" class="control-label span2">分类<span class="required">*</span></label>
                                    <div class="controls span4"><!--disabled-->
                                        <select disabled id="parentCat" class="selectpicker input-medium" data-style="btn-info">
                                        	<c:if test="${!empty form.parentCat}">
	                                            	<option value="${form.parentCat.id}">${form.parentCat.name}</option>
                                        	</c:if> 
                                        	<c:if test="${empty form.parentCat}">
                                        		<option value="">请选择</option> 
                                        	</c:if> 
                                        </select>
                                    </div>
                                    <div class="controls span4" id="subCatDiv">
                                        <select disabled id="subCat" class="selectpicker input-medium" data-style="btn-info">
                                        	<c:if test="${!empty form.category}">
	                                            	<option value="${form.category.id}">${form.category.name}</option>
                                        	</c:if> 
                                        	<c:if test="${empty form.category}">
                                        		<option value="">请选择</option> 
                                        	</c:if>                                                                                    
                                        </select>
                                    </div>
                                </li>
                                
                                
                            </ul>
                        </fieldset>                                    
                        <!-- // fieldset Input -->
                        <div class="form-actions">
                            <button type="submit" class="btn btn-blue">保存</button>
                            <button class="btn cancel">取消</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>