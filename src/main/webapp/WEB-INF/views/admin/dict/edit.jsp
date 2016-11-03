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
                                    <h4>字典修改</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="code" class="control-label span2">编码<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="code" type="text" value="${form.code}" name="code">
                                    </div>  
                                    
                                    <label for="name" class="control-label span2">名称<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="name" type="text" value="${form.name}" name="name">
                                    </div>                                             
                                </li>                                
                                <li class="control-group">
                                    <label for="value" class="control-label span2">value <span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="value" class="span11" type="text" name="value" value="${form.value}">
                                    </div>
                                    
                                    <label for="status" class="control-label span2">状态<span class="required">*</span></label>
                                    <div class="controls span4">
                                       <select id="status" class="selectpicker input-medium" data-style="btn-info" name="status">
                                            <c:forEach items="${dictStatus}" var="msItem" varStatus="bankStatus">
                                            	<option value="${msItem.code}">${msItem.title}</option>
                                            </c:forEach>
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
         