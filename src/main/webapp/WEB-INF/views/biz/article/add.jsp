<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/plugins/tinymce/tinymce.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/plugins/tinymce/jquery.tinymce.min.js"></script>
<script src='//cdn.tinymce.com/4/tinymce.min.js'></script>
<!-- // page head -->
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
			<input type="hidden" name="id" value="${form.id}" />
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>文章新增</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="title" class="control-label span2">标题<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="title" type="text" value="" name="title">
                                    </div>         
                                    <label for="title" class="control-label span2">状态<span class="required">*</span></label>
                                    <div class="controls span4">
                                         <select id="status" class="selectpicker input-medium" data-style="btn-info" name="status">
                                         	<c:forEach items="${statusLst}" var="staObj" varStatus="adStatus">
                                            	<option value="${staObj}" <c:if test="${staObj ==form.status}">selected </c:if>>${staObj.title}</option>
                                         	</c:forEach>
                                         </select>
                                    </div>                                                  
                                </li>
                                <!-- // form item -->
                            
                                <li class="control-group">
								     <div id="toolbar" style="display: none;">
									    <a data-wysihtml5-command="bold" title="CTRL+B">bold</a> |
									    <a data-wysihtml5-command="italic" title="CTRL+I">italic</a>
									    <a data-wysihtml5-action="change_view">switch to html view</a>
									  </div>
                                	
                                 	<textarea id="editor" name="content" class="input-block-level" style="height: 100px" placeholder="Enter text ...">
                                 		${form.content}
                                 	</textarea>
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
<div id="log"></div>
            <!-- // Widget --> 
<script type="text/javascript">
    $(document).ready(function(){
     	tinymce.init({
		    selector: '#editor',
		    theme: 'modern',
		    height: 300,
		    　	language :"zh_cn",
		    menubar:false,
		    toolbar: [
				    'undo redo | styleselect | bold italic | link image'| 'alignleft aligncenter alignright'
				  ],
			content_css: 'css/content.css',
		    plugin: 'a_tinymce_plugin',
			a_plugin_option: true,
			a_configuration_option: 400,
			images_upload_url: '${appPath}/biz/upload_file/file_add.do?fkId=${form.id}&type=article',
  			images_upload_base_path: '/some/basepath',
  			images_upload_credentials: true,
  			images_upload_handler: function (blobInfo, success, failure) {
				    var xhr, formData;
				    xhr = new XMLHttpRequest();
				    xhr.withCredentials = false;
				    xhr.open('POST', 'postAcceptor.php');
				    xhr.onload = function() {
				      var json;
				
				      if (xhr.status != 200) {
				        failure('HTTP Error: ' + xhr.status);
				        return;
				      }
				      json = JSON.parse(xhr.responseText);
				
				      if (!json || typeof json.location != 'string') {
				        failure('Invalid JSON: ' + xhr.responseText);
				        return;
				      }
				      success(json.location);
				    };
				    formData = new FormData();
				    formData.append('file', blobInfo.blob(), fileName(blobInfo));
				    xhr.send(formData);
				  }
		  
});
    });
</script>
