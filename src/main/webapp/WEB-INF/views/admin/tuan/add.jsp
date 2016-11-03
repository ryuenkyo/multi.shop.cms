<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->

<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="productForm" class="form-horizontal" method="post" action="#" >

                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>商品新增</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="name " class="control-label">商品名称<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="name " type="text" value="" name="name">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="catId" class="control-label">分类 <span class="required">*</span></label>
                                    <div class="controls">
                                        <select id="catId" class="span6 selecttwo" data-class="btn-info" name="catId">
                                            <c:forEach items="${catLst}" var="cat" varStatus="catStatus">
                                            	<option value="${cat.id}">${cat.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="shopName" class="control-label">状态<span class="required">*</span></label>
                                    <div class="controls">
                                        <select id="status" class="selectpicker input-medium" data-style="btn-info" name="status">
                                            <c:forEach items="${statusLst}" var="staObj" varStatus="productStatus">
                                            	<option value="${staObj}" <c:if test="${staObj ==form.status}">selected </c:if>>${staObj.title}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                                <!-- // form item -->
                              
                                <li class="control-group">
                                    <label for="introduce" class="control-label">描述 <span class="required">*</span></label>
                                    <div class="controls">
                                    	<textarea id="introduce" class="input-block-level" name="introduce"  rows="4"></textarea>                                                	
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                
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
            <!-- // Widget --> 
      