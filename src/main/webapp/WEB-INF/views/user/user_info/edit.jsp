<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/js/jquery.ajaxfileupload.js"></script>
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
				<input type="hidden" name="id" value="${form.id }">
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>用户信息修改</h4>
                                </li>
                                <li class="control-group">
                                	<div class="fileupload fileupload-new" data-provides="fileupload">
                                        <div class="fileupload-preview thumbnail" style="width: 200px; height: 120px;">
                                        	<img src="<c:if test="${!empty form.avatar}">${nginxUrl}${form.avatar}</c:if><c:if test="${empty form.avatar}"></c:if>" class="thumbnail">
                                        </div>
                                        <div> 
                                        	<span class="btn btn-file"> 
                                        		<span class="fileupload-new">选择图片</span> 
                                        		<span class="fileupload-exists">更换</span>
                                            	<input id="fileName" type="file" name="fileName"/>
                                            </span> 
                                            <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a> 
                                        </div>
                                    </div>
								</li>    
                               <%-- <li class="span3">
		                            <div class="thumbnail text-center">
		                                <div class="equalize"> <a href="${appPath}/user/user_info/edit_avatar.do?id=${form.id}">
		                                	<img class="radius-top3" src="<c:if test="${!empty form.avatar}">${nginxUrl}${form.avatar}</c:if><c:if test="${empty form.avatar}">http://localhost/default.jpg</c:if>"></a>
		                                    <div class="caption">
		                                        <h4>用户头像：<a href="${appPath}/biz/upload_file/list.do?fkId=${form.id}&type=image&imageType=avatar" class="btn btn-small">修改头像</a></h4>
		                                        <hr class="margin-mm">
		                                        <p class="text-center"></p>
		                                    </div>
		                                </div>		                                
		                            </div>
		                        </li>
		                       
                                <!-- // section form divider -->
                                <li class="control-group">
                                    <label for="name" class="control-label">用户头像<span class="required">*</span></label>
                                    <div class="controls">	                                           
                                        <a href="${appPath}/admin/user/edit_avatar.do?id=${form.id}">
                                        	<img src="${nginxUrl}${form.avatar}" class="thumbnail" width="96" height="96">
                                        </a>                                             
                                    </div>
                                </li> --%>
                                <li class="control-group">
                                    <label for="nickname" class="control-label span2">昵称<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="nickname" type="text" value="${form.nickname}" name="nickname">
                                    </div>                                               
                                    <label for="realname" class="control-label span2">真实名称<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="realname"  type="text" value="${form.realname}" name="realName">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="genderCode" class="control-label span2">性别 <span class="required">*</span></label>
                                    <div class="controls span4">
                                    	 <select id="genderCode" class="input-medium" data-style="btn-info" name="genderCode">
                                            <option value="unknown">未知</option>
                                            <option value="male">男</option>
                                            <option value="female">女</option>
                                        </select>
                                    </div>
                                    <label for="birthday" class="control-label span2">生日 <span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="birthday" type="text" name="birthday" value="">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="email" class="control-label">email<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="email"  type="text" value="${form.email}" name="email">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="pageSize" class="control-label">每页记录数 <span class="required">*</span></label>
                                    <div class="controls">
                                    	 <select id="pageSize" class="input-medium" data-style="btn-info" name="pageSize">
                                            <option value="10">10条</option>
                                            <option value="20">20条</option>
                                        </select>
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
<script type='text/javascript'>
$(document).ready(function() {
		$('#fileName').ajaxfileupload({
			  action: '${appPath}/biz/upload_file/file_add.do?fkId=${form.id}&type=image&imageType=avatar'
		});	
      <%--$('#birthday').datepicker({
		format: 'yyyy/mm/dd'
		});
		--%>
});
</script> 