<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="" action="" >

                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>店铺新增</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="accountPrefix" class="control-label">店铺<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="accountPrefix" type="text" value="" name="accountPrefix">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="accountFirstName" class="control-label">店铺名称<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="accountFirstName"  type="text" value="" name="accountPrefix">
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="accountFirstName" class="control-label">菜单地址 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="accountFirstName" class="span11" type="text" name="accountFirstName" value="">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="accountFirstName" class="control-label">描述 <span class="required">*</span></label>
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
           
