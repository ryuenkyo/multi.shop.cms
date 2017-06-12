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
                                    <h4>微信新增</h4>
                                </li>
                                 <li class="control-group">
                                    <label for="name " class="control-label">名称<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="name" type="text" value="${form.name}" name="name">
                                    </div>                                               
                                </li>
                                <!-- // section form divider -->
                                <li class="control-group">
                                    <label for="logo " class="control-label">头像<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="logo" type="text" value="${form.logo}" name="logo">
                                    </div>                                               
                                </li>
                                 <li class="control-group">
                                    <label for="popularize " class="control-label">二维码<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="popularize" type="text" value="${form.popularize}" name="popularize">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="appId" class="control-label">AppId<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="appId" type="text" value="${form.appId}" name="appId">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="appSecret" class="control-label">AppSecret <span class="required">*</span></label>
                                    <div class="controls">
                                    	<input id="appSecret" type="text" value="${form.appSecret}" name="appSecret">                                                	
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="wxToken" class="control-label">Token(令牌)<span class="required">*</span></label>
                                    <div class="controls">
                                        <input type="text" value="${form.wxToken}" name="wxToken" id="wxToken">
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="asekey" class="control-label">EncodingAESKey<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="asekey" class="span11" type="text" name="asekey" value="${form.asekey}">
                                    </div>
                                </li>
                                <!-- // form item -->
                                <li class="control-group">
                                   <label for="redirectUri" class="control-label">redirectUri<span class="required">*</span></label>
                                   <div class="controls">
                                       <input id="redirectUri" class="span11" type="text" name="redirectUri" value="${form.redirectUri}">
                                   </div>
                               </li>
                                <!-- // form item -->
                                 <li class="control-group">
                                    <label for="loginEmail" class="control-label">登录账号<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="loginEmail" class="span11" type="text" name="loginEmail" value="${form.loginEmail}">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="principal" class="control-label">主体信息<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="principal" class="span11" type="text" name="principal" value="${form.principal}">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="address" class="control-label">地址<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="address" class="span11" type="text" name="address" value="${form.address}">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="servicePhone" class="control-label">客服电话<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="servicePhone" class="span11" type="text" name="servicePhone" value="${form.servicePhone}">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="remark" class="control-label">介绍 <span class="required">*</span></label>
                                    <div class="controls">
                                    	<textarea id="remark" class="input-block-level" rows="4">${form.remark}</textarea>                                                	
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
        