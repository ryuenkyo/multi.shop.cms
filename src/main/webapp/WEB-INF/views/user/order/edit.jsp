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
                        <form id="accounForm" class="form-horizontal" method="" action="" >

                            <div class="row-fluid">
                                <div class="span12 form-dark">
                                    <fieldset>
                                        <ul class="form-list label-left list-bordered dotted">
                                            <li class="section-form">
                                                <h4>订单修改</h4>
                                            </li>
                                            <!-- // section form divider -->
                                            
                                            <li class="control-group">
                                                <label for="tradeNo " class="control-label">订单号<span class="required">*</span></label>
                                                <div class="controls">
                                                    <input id="tradeNo " type="text" value="${form.tradeNo}" name="tradeNo">
                                                </div>                                               
                                            </li>
                                            <li class="control-group">
	                                            <label for="title" class="control-label">标题<span class="required">*</span></label>
	                                            <div class="controls">
	                                                <input type="text" value="${form.title}" name="title" id="title">
	                                            </div>
	                                        </li>
                                            <!-- // form item -->
                                            
                                            <li class="control-group">
                                                <label for="status" class="control-label">订单状态<span class="required">*</span></label>
                                                <div class="controls">
                                                    <input id="status" class="span11" type="text" name="status" value="${form.status}">
                                                </div>
                                            </li>
                                            <li class="control-group">
	                                            <label for="remark" class="control-label">订单描述 <span class="required">*</span></label>
	                                            <div class="controls">
	                                            	<textarea id="remark" name="remark" class="input-block-level" rows="4" value="${form.remark}"></textarea>                                                	
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
