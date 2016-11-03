<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">                       
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
          		<%--<c:if test="${!empty parent}">   
					<div class="row-fluid">
                        <div class="span12">
                            <div class="control-group no-margin-bootom">
                                <label class="control-label label-left"> <img src="${parent.icon}" class="thumbnail" width="96" height="96"> </label>
                                <div class="controls">
                                    <address>
                                    <h2>${parent.name}</h2>
                                    <strong>菜单：</strong> <strong><a href="#">${parent.menuUrl}</a></strong><br>
                                    <abbr title="Work email">状态:</abbr> <a href="mailto:#">${parent.status}</a><br>
                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>   
                --%>
               
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>客户新增                                    	
                                    </h4>
                                </li>
                                <!-- // section form divider -->
                                <li class="control-group">
                                    <label for="name" class="control-label">客户名称<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="name"  type="text" value="" name="name">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="mobile" class="control-label">手机号<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="mobile"  type="text" value="" name="mobile">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="gender" class="control-label">性别 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="gender" type="text" name="gender" value="">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="birthday" class="control-label">生日 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="birthday" type="text" name="birthday" value="">
                                    </div>
                                </li>
                                <!-- // form item -->
                                <li class="control-group">
                                    <label for="identityCard" class="control-label">身份证号 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="identityCard" type="text" name="identityCard" value="">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="address" class="control-label">联系地址 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="address" class="span11" type="text" name="address" value="">
                                    </div>
                                </li>
                               <li class="control-group">
                                    <label for="remarks" class="control-label">描述 <span class="required"></span></label>
                                    <div class="controls">
                                    	<textarea id="remarks" class="input-block-level" rows="4"></textarea>                                                	
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
   