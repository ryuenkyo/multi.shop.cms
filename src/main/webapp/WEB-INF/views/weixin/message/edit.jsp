<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="orderForm" class="form-horizontal" method="post" action="#" >
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>微信消息修改</h4>
                                </li>
                                <li class="control-group">
                                    <label for="signature " class="control-label">signature<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="signature" type="text" value="${form.signature}" name="signature">
                                    </div>                                               
                                </li>
                                <!-- // section form divider -->
                                <li class="control-group">
                                    <label for="timestamp " class="control-label">timestamp<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="timestamp" type="text" value="${form.timestamp}" name="timestamp">
                                        	<img src="${form.signature}" class="thumbnail" width="96" height="96">
                                    </div>                                               
                                </li>
                                
                                <li class="control-group">
                                    <label for="xmlContent" class="control-label">xmlContent<span class="required">*</span></label>
                                    <div class="controls">
                                    	<textarea id="xmlContent" class="input-block-level" rows="4">${form.xmlContent}</textarea>                                                	
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
            <!-- // Widget --> 
        