<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="userForm" class="form-horizontal" method="post" action="#" >

                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>用户新增</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="username" class="control-label span2">用户名<span class="required">*</span>
                                    	</label>
                                    <div class="controls span4">
                                        <input id="username" type="text" value="${form.username}" name="username">
                                        <form:errors path="result.username" cssClass="error" />
                                    </div>                                               

                                    <label for="password" class="control-label span2">密码<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="password"  type="text" value="" name="password">
                                        <form:errors path="result.password" cssClass="error" />
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="nickname" class="control-label span2">昵称</label>
                                    <div class="controls span4">
                                        <input id="nickname"  type="text" value="" name="nickname">
                                    </div>

                                    <label for="realname" class="control-label span2">真实姓名</label>
                                    <div class="controls span4">
                                        <input id="realname"  type="text" value="${form.realname}" name="realname">
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
<script type="text/javascript">
    $(document).ready(function(){
    	$(function (userForm) {
			userForm('#userForm').validate({
			ignore: "",
			rules: {
					username: {
							required: true,
							minlength: 4,
							maxlength: 20
					},
					password: {
							required: true,
							minlength: 4,
							maxlength: 20
					}					
			},
			messages: {
					username: {
							required: "Please enter a username",
							minlength: "username must be at least 4 characters",
							maxlength: "username must be no more than 20 characters"
					},
					password: {
							required: "Please enter a password",
							minlength: "password must be at least 4 characters",
							maxlength: "password must be no more than 20 characters"
					}
			},
			
			highlight: function (label) {
					$(label).closest('.control-group').addClass('error');
			},
			success: function (label) {
					$(label).text('OK!').addClass('valid')
							.closest('.control-group').addClass('success');
			},
			errorPlacement: function (error, label) {
					$(label).closest('.controls').append(error);
			}
			})
		});
    
    });
</script>