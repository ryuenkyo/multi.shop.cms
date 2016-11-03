<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form class="form-horizontal" method="POST" action="#" >

                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>消息修改</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="title" class="control-label">标题<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="title" type="text" value="${form.title}" name="title">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="type" class="control-label span2">类型<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input type="text" value="${type.type}">
                                    </div>

                                    <label for="remark" class="control-label span2"><span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input type="text" value="${form.remark}">
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="content" class="control-label">内容<span class="required">*</span></label>
                                    <div class="controls">
                                    	<textarea id="content" name ="content" class="input-block-level" rows="4">${form.content}</textarea>                                                	
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
           
