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
                                    <h4>新增地址</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="sure " class="control-label">是否默认地址 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="pretermit" name="pretermit" class="checkbox" type="checkbox">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="name" class="control-label">联系人<span class="required">*</span></label>
                                    <div class="controls">
                                        <input type="text" value="" name="name" id="name">
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="phone" class="control-label">手机号<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="phone" class="span11" type="text" name="phone" value="">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="province" class="control-label">省市<span class="required">*</span></label>
                                    <div class="controls">
                                    	<input id="province" class="span11" type="text" name="province" value="">                                    	                                                	
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="street" class="control-label">街道 <span class="required">*</span></label>
                                    <div class="controls">
                                    	<input id="street" class="span11" type="text" name="street" value="">
                                    	                                                	
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
         