<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<%--<script src='//cdn.tinymce.com/4/tinymce.min.js'></script>--%>
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/js/jquery.ajaxfileupload.js"></script>
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/plugins/tinymce/tinymce.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/plugins/tinymce/jquery.tinymce.min.js"></script>
<div class="widget widget-simple">              
    <div class="widget-content"> 
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>文章修改</h4>
                                </li>
                                <!-- // section form divider -->
                                 <!-- // form item -->
                            	<li class="control-group">
                                	<div class="fileupload fileupload-new" data-provides="fileupload">
                                        <div class="fileupload-preview thumbnail" style="width: 200px; height: 120px;">
                                        	<img src="${nginxUrl}${form.logo}" class="thumbnail">
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
                                <li class="control-group">
                                    <label for="title" class="control-label span2">标题<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="title" type="text" value="${form.title}" name="title">
                                    </div>         
                                    <label for="title" class="control-label span2">分类<span class="required">*</span></label>
                                    <div class="controls span4">
                                         <select id="status" class="selectpicker input-medium" data-style="btn-info" name="status">
                                         	<c:forEach items="${statusLst}" var="staObj" varStatus="adStatus">
                                            	<option value="${staObj}" <c:if test="${staObj ==form.status}">selected </c:if>>${staObj.title}</option>
                                         	</c:forEach>
                                         </select>
                                    </div>                                               
                                </li>
                               
                                <li class="control-group">
                                 	<textarea id="editor" name="content" class="input-block-level" style="height: 100px" placeholder="Enter text ...">
                                 		${form.content}</textarea>
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
<script type="text/javascript">
     $(document).ready(function(){
     	tinymce.init({
		    selector: '#editor'
		  });
		  
		$('#fileName').ajaxfileupload({
			  action: '${appPath}/biz/upload_file/file_add.do?fkId=${form.id}&type=image&imageType=article'
			});
    });
</script>    
