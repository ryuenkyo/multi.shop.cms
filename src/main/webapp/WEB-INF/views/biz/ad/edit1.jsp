<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/js/jquery.ajaxfileupload.js"></script>
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/plugins/tinymce/tinymce.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/plugins/tinymce/jquery.tinymce.min.js"></script>

<!-- // page head -->
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
                                    <h4>广告修改</h4>
                                </li>
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
								
                                <%--<c:if test="${!empty form.logo}">
                                 <li class="control-group">
                                    <label for="name" class="control-label">logo图片<span class="required">*</span></label>
                                    <div class="controls">	                                           
                                        <a href="${appPath}/biz/ad/edit_logo_img.do?adId=${form.id}">
                                        <img src="${nginxUrl}${form.logo}" class="thumbnail" width="96" height="96"></a>                                             
                                    </div>
                                </li>
                                </c:if>
                                <li class="control-group">
                                	<div class="fileupload fileupload-new" data-provides="fileupload">
                                        <div class="fileupload-preview thumbnail" style="width: 200px; height: 120px;">
                                        	<img src="${nginxUrl}${form.logo}" class="thumbnail" width="96" height="96">
                                        </div>
                                        <div> 
                                        	<span class="btn btn-file"> 
                                        		<span class="fileupload-new">Select image</span> 
                                        		<span class="fileupload-exists">Change</span>
                                            	<input type="file" name="fileName"/>
                                            </span> 
                                            <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a> 
                                        </div>
                                    </div>
								</li>  --%>     
                            </ul>
                        </fieldset>    
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="code" class="control-label span2">编码<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="code" type="text" value="${form.code}" name="code">
                                    </div>                                               
        
                                    <label for="name" class="control-label span2">名称<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="name"  type="text" value="${form.name}" name="name">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="code" class="control-label span2">单图<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="singleImageInput" type="hidden" name="singleImage" value="" />
                                        <div id="singleImage" class="btn-group change" data-toggle="buttons-radio" data-target="singleImageInput">
                                            <button type="button" class="btn" class-toggle="btn-green" name="singleImage" value="male">&nbsp; 是 &nbsp;</button>
                                            <button type="button" class="btn" class-toggle="btn-green" name="singleImage" value="female">否</button>
                                        </div>
                                    </div>                                               
        
                                    <label for="name" class="control-label span2">单个宣传页<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="singleArtInput" type="hidden" name="singleArt" value="" />
                                        <div id="singleArt" class="btn-group change" data-toggle="buttons-radio" data-target="singleArtInput">
                                            <button type="button" class="btn" class-toggle="btn-green" name="singleArt" value="male">&nbsp; 是 &nbsp;</button>
                                            <button type="button" class="btn" class-toggle="btn-green" name="singleArt" value="female">否</button>
                                        </div>
                                    </div>
                                </li>
                                <!-- // form item -->
                             <li class="control-group">
                                    <label for="catId" class="control-label span2">广告分类<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <select id="catId" class="selectpicker input-medium" data-style="btn-info" name="catId">
                                            <c:forEach items="${typeLst}" var="typeObj" varStatus="typeStatus">
                                            	<option value="${typeObj.id}" <c:if test="${typeObj ==form.type}">selected </c:if>>${typeObj.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <label for="status" class="control-label span2">状态<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <select id="status" class="selectpicker input-medium" data-style="btn-info" name="status">
                                            <c:forEach items="${statusLst}" var="staObj" varStatus="adStatus">
                                            	<option value="${staObj}" <c:if test="${staObj ==form.status}">selected </c:if>>${staObj.title}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                                                            
                               <!--  <li class="control-group">
                                    <label for="title" class="control-label span2">宣传页<span class="required">*</span></label>
                                    <div class="controls span4">
                                       <input id="title"  type="text" value="${form.name}" name="title">
                                       <a class="btn btn-blue" href="${appPath}/biz/Article/list.do?fkId=${form.id}&type=ad">更换<a>
                                    </div>
                                </li>
                                
                                // form item -->
                                <li class="control-group">
                                 	<textarea id="editor" name="content" class="input-block-level" style="height: 100px" placeholder="Enter text ...">
                                 		</textarea>
                                </li>
                                
                            </ul>
                        </fieldset>                                    
                        <!-- // fieldset Input -->
                        <div class="form-actions">
                            <button type="submit" class="btn btn-blue">保存</button>
                            <button class="btn cancel">取消</button>                            
                            <a class="btn btn-blue" href="${appPath}/biz/image/list.do?fkId=${form.id}&type=ad">图片管理<a>
                            <a class="btn btn-blue" href="${appPath}/biz/article/list.do?fkId=${form.id}&type=ad">宣传页管理<a>
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
		    selector: '#editor',
		    theme: 'modern',
		    height: 300,
		    　	language :"zh_cn",
		    menubar:false,
		    toolbar: [
				    'undo redo | styleselect | bold italic | link image | alignleft aligncenter alignright |image code'
				  ],
		  	plugins: "code image imagetools",
		  	imagetools_toolbar: "rotateleft rotateright | flipv fliph | editimage imageoptions"
		  
			});
			$('#fileName').ajaxfileupload({
			  action: '${appPath}/biz/upload_file/file_add.do?fkId=${form.id}&type=image&imageType=ad'
			});
    });
</script>
         