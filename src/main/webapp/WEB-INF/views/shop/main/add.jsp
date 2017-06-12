<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
        	<input type="hidden" name="id" value="${form.id}" />
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>店铺新增</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="name" class="control-label">店铺名称<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="name" type="text" value="${form.name}" name="name">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="shortName" class="control-label">店铺名称[简称]<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="shortName"  type="text" value="${form.shortName}" name="shortName">
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="telephone" class="control-label">联系电话 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="telephone" class="span11" type="text" name="telephone" value="${form.telephone}">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="content" class="control-label">描述 <span class="required">*</span></label>
                                    <div class="controls">
                                    	<textarea id="content" name="content" class="input-block-level" rows="4">${form.content}</textarea>                                                	
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
           
