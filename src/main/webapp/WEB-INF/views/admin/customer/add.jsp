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
                                    <h4>用户新增</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="username" class="control-label span2">用户名<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="username" type="text" value="" name="username">
                                    </div>                                               

                                    <label for="password" class="control-label span2">密码<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="password"  type="text" value="" name="password">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="nickname" class="control-label span2">昵称<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="nickname"  type="text" value="" name="nickname">
                                    </div>

                                    <label for="realName" class="control-label span2">真实姓名<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="realName"  type="text" value="" name="realName">
                                    </div>
                                </li>
                                <!-- // form item -->                               
                                <li class="control-group">
                                    <label for="remark" class="control-label">描述 <span class="required">*</span></label>
                                    <div class="controls">
                                    	<textarea id="remark" class="input-block-level" rows="4"></textarea>                                                	
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
      
