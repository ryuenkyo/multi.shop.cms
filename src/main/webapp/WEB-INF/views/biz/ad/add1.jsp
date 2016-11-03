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
                                    <h4>广告新增</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="code" class="control-label">广告编码<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="code" type="text" value="${form.code}" name="code">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="title" class="control-label">广告标题<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="title"  type="text" value="${form.title}" name="title">
                                    </div>
                                </li>  
                               
                                <li class="control-group">
                                    <label for="typeId" class="control-label">分类<span class="required">*</span></label>
                                    <div class="controls">
                                        <select id="catId" class="selectpicker input-medium" data-style="btn-info" name="typeId">
                                            <c:forEach items="${typeLst}" var="typeObj" varStatus="adType">
                                            	<option value="${typeOb.id}" <c:if test="${typeObj.id ==form.type.id}">selected </c:if>>${typeObj.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>                                   
                               <li class="control-group">
                                    <label for="status" class="control-label">状态<span class="required">*</span></label>
                                    <div class="controls">
                                        <select id="status" class="selectpicker input-medium" data-style="btn-info" name="status">
                                         	<c:forEach items="${statusLst}" var="staObj" varStatus="adStatus">
                                            	<option value="${staObj}" <c:if test="${staObj ==form.status}">selected </c:if>>${staObj.title}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                                <!-- // form item 
                            
                                <li class="control-group">
                                    <label for="accountFirstName" class="control-label">描述 <span class="required"></span></label>
                                    <div class="controls">
                                    	<textarea id="accountFirstName" class="input-block-level" rows="4"></textarea>                                                	
                                    </div>
                                </li>-->
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
 