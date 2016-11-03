<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->

<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
    <div class="row-fluid">
        <div class="span8 grider">
            <div class="widget widget-simple">              
                <div class="widget-content">
                    <div class="widget-body">
                        <form id="accounForm" class="form-horizontal" method="post" action="#" >

                            <div class="row-fluid">
                                <div class="span12 form-dark">
                                    <fieldset>
                                        <ul class="form-list label-left list-bordered dotted">
                                            <li class="section-form">
                                                <h4>修改地址</h4>
                                            </li>
                                            <!-- // section form divider -->
                                            
                                            <li class="control-group">
                                                <label for="pretermit" class="control-label">是否默认地址 <span class="required">*</span></label>
                                                <div class="controls"> 
                                                    <input id="pretermit" name="pretermit" <c:if test="${form.sure}">checked="checked"</c:if> type="checkbox">
                                                </div>                                               
                                            </li>
                                            <li class="control-group">
	                                            <label for="name" class="control-label">联系人<span class="required">*</span></label>
	                                            <div class="controls">
	                                                <input type="text" value="${form.name}" name="name" id="name">
	                                            </div>
	                                        </li>
                                            <!-- // form item -->                                            
                                            <li class="control-group">
                                                <label for="phone" class="control-label">手机号<span class="required">*</span></label>
                                                <div class="controls">
                                                    <input id="phone" class="span11" type="text" name="phone" value="${form.phone}">
                                                </div>
                                            </li>
                                            <li class="control-group">
	                                            <label for="province" class="control-label">省市 <span class="required">*</span></label>
	                                            <div class="controls">
	                                            	<input id="province" class="span11" type="text" name="province" value="${form.province}">                                              	
	                                            </div>
	                                        </li>
	                                        <li class="control-group">
	                                            <label for="street" class="control-label">地址 <span class="required">*</span></label>
	                                            <div class="controls">
	                                            	<input id="street" class="span11" type="text" name="street" value="${form.street}">                                              	
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
            
        </div>
        <!-- // Column -->
        
        <!-- // Column -->
        
        </div>
        <!-- // Column --> 
        
    </div>
    <!-- // Example row --> 
</div>
<!-- // Example TAB 2 -->

<!-- // Example TAB 3 --> 

</div>
<!-- // page content --> 
