<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
				<input type="hidden" name="id" value="${form.id }">
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>角色修改</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="code" class="control-label span2">编码<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="code" type="text" value="${form.code}" name="code">
                                    </div>                                               
    
                                    <label for="name" class="control-label span2">名称<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="name"  type="text" value="${form.name}" name="name">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="bank" class="control-label">状态<span class="required">*</span></label>
                                    <div class="controls">
                                         <select id="bankId" class="selectpicker input-medium" data-style="btn-info" name="bankId">
                                            <c:forEach items="${roleStatus}" var="dsItem" varStatus="rsStatus">
                                            	<option value="${dsItem.code}" <c:if test="${form.status==dsItem}">selected</c:if>>${dsItem.title}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                                <!-- // form item -->
                            
                                <li class="control-group">
                                    <label for="accountFirstName" class="control-label">描述 <span class="required"></span></label>
                                    <div class="controls">
                                    	<textarea id="accountFirstName" class="input-block-level" rows="4"></textarea>                                                	
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
         