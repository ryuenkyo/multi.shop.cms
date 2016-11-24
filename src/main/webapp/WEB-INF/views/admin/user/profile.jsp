<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="widget widget-simple">
    <div class="widget-header">
        <h4><i class="fontello-icon-user"></i> 帐号信息 <small></small></h4>
    </div>
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="" action="" >
                <div class="row-fluid">
                    <div class="span12">
                        <div class="control-group no-margin-bootom">
                            <label class="control-label label-left"> 
                            	<img src="<c:if test="${!empty userInfo.avatar}">${nginxUrl}${userInfo.avatar}</c:if><c:if test="${empty userInfo.avatar}">http://localhost/default.jpg</c:if>" class="thumbnail" width="96" height="96"> </label>
                            <div class="controls">
                                <address>
	                                <h2>${user.username}</h2>
	                                <strong>用户类型</strong>：${user.userType.title}<br>
	                                <abbr title="状态"><strong>状态</strong>:</abbr> ${user.status.title}<br
                                </address>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>                           
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>用户信息
                                    	<a href="${appPath}/user/user_info/edit.do?id=${user.id}" class="btn fontello-icon-edit" type="button">修改</a>
                                    </h4>
                                </li>
                                <!-- // section form divider -->                                
                                <li class="control-group">
                                    <label for="realname" class="control-label span1">
                                    	真实姓名                                    	
                                    </label>
                                    <div class="controls span3">
                                     	<input  type="text" value="${userInfo.realname}">                                    	                                        
                                    </div>                               
                                    <label for="nickname" class="control-label span1">昵称<span class="required">*</span></label>
                                    <div class="controls span3">
                                    	<input  type="text" value="${userInfo.nickname}">
                                    </div>
                                    <label for="gender" class="control-label span1">性别<span class="required">*</span></label>
                                    <div class="controls span3">
                                        <input  type="text" value="${userInfo.gender.title}">
                                    </div>
                                  </li>
                                  <li class="control-group">
                                  	<label for="gender" class="control-label span1">注册时间<span class="required">*</span></label>
                                    <div class="controls span3">
                                    	<input type="text" size="2" value="${userInfo.registerTime}">
                                    </div>                              
                                    <label for="realName" class="control-label span1">
                                    	记录/页                                    	
                                    </label>
                                    <div class="controls span3">
                                    	<input type="text" size="2" value="${userInfo.pageSize}条">                                      
                                    </div>                               
                                    <label for="nickName" class="control-label span1">消息数<span class="required">*</span></label>
                                    <div class="controls span3">
                                    	 <input type="text" size="2" value="${userInfo.msgNum}条">
                                    </div>
                                   
                                </li>
                                <!-- // form item -->                             
                                
                               
                                <!-- // form item -->
                                
                                <li class="section-form">
                                    <h4>个人中心
                                    	<a href="${appPath}/user/user_info/edit.do?id=${user.id}" class="btn fontello-icon-edit" type="button">查看</a>
                                    </h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    
                                </li>
                                <!-- // form item -->
                                
                            </ul>
                        </fieldset>                       
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
                         