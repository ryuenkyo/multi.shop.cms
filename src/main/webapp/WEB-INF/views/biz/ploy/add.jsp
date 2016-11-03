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
                                    <h4>活动新增</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="code" class="control-label">活动编码<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="code" type="text" value="" name="code">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="name" class="control-label">活动名称<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="name"  type="text" value="" name="name">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="endTime" class="control-label">开始时间<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="endTime" type="text" value="" name="startTime">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="endTime" class="control-label">结束时间<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="endTime"  type="text" value="" name="endTime">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="pubTime" class="control-label">发布时间<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="pubTime" type="text" value="" name="pubTime">
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
         
