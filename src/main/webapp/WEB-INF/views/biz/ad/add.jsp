<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/js/jquery.ajaxfileupload.js"></script>
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/plugins/tinymce/tinymce.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${templetDir}assets/plugins/tinymce/jquery.tinymce.min.js"></script>

<section>
    <div class="row-fluid">
    <form class="form-horizontal form-condensed label-left no-margin-bootom" method="post" action="#">
    	<input type="hidden" name="id" value="${form.id}" />
        <div class="span12 well well-nice">
            <div class="row-fluid">
                <div class="span6 grider-item">
                    <h4 class="simple-header"><i class="fontello-icon-eye-1"></i> 广告新增</h4>
                    <div id="previewImage" class="preview-image"> 
                    	<img src="${nginxUrl}${form.logo}"> 
                    </div>
                    <div> 
                    	<span class="btn btn-file"> 
                    		<span class="fileupload-new">选择图片</span> 
                    		<span class="fileupload-exists">更换</span>
                        	<input id="fileName" type="file" name="fileName"/>
                        </span> 
                        <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a> 
                    </div>
                    <!--<table class="table table-light table-condensed">
                        <tr>
                            <th>编码</th>
                            <td>${form.code}</td>
                        </tr>
                        <tr>
                            <th>名称</th>
                            <td>${form.title}</td>
                        </tr>
                        <tr>
                            <th>分类</th>
                            <td>${form.type.name}</td>
                        </tr>
                        <tr>
                            <th>Dimensions</th>
                            <td>1200 x 980</td>
                        </tr>
                    </table>-->
                </div>
                <div class="span6 grider-item">                    
                        <h4 class="simple-header"><a class="btn btn-yellow pull-right">图片管理</a><i class="fontello-icon-edit"></i> 快速修改</h4>
                        <fieldset class="form-dark ">
                            <ul class="form-list">
                                <li class="control-group">
                                    <label for="code" class="control-label">编码</label>
                                    <div class="controls">
                                        <input id="code" class="input-block-level" type="text" name="code" value="${form.code}">
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="title" class="control-label">标题</label>
                                    <div class="controls">
                                        <input id="title" class="input-block-level" type="text" name="title" value="${form.title}">
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="fileDescript" class="control-label">简介</label>
                                    <div class="controls">
                                        <textarea name="remark" class="input-block-level auto" rows="3" placeholder="Enter text ...">
                                        	${form.remark}	
                                        </textarea>
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="catId" class="control-label">广告分类</label>
                                    <div class="controls">
                                        <select id="catId" class="selectpicker input-medium" data-style="btn-info" name="catId">
                                            <c:forEach items="${typeLst}" var="typeObj" varStatus="typeStatus">
                                            	<option value="${typeObj.id}" <c:if test="${typeObj ==form.type}">selected </c:if>>${typeObj.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="status" class="control-label">状态</label>
                                    <div class="controls">
                                        <select id="status" class="selectpicker input-medium" data-style="btn-info" name="status">
                                            <c:forEach items="${statusLst}" var="staObj" varStatus="adStatus">
                                            	<option value="${staObj}" <c:if test="${staObj ==form.status}">selected </c:if>>${staObj.title}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                            </ul>
                        </fieldset>
                        <!-- // fieldset Input -->
                      
                    
                </div>
            </div>   
            <div></div>
            <div class="row-fluid">
            	<div class="control-group">
            		<h4 class="simple-header"><i class="fontello-icon-eye-1"></i>内容</h4>	              	
	            </div>   
                <div>
                    <textarea id="editor" name="content" class="input-block-level auto" rows="3" placeholder="Enter text ...">
                    	${form.content}	
                    </textarea>
                </div>       
                <div class="form-actions no-margin-bootom">
                    <button type="submit" class="btn btn-green">Save data</button>
                    <button class="btn cancel">Cancel</button>
                </div>
            </div>
        </div>
       
        </form>
    </div>
    <!-- // Example row --> 
    
</section>

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
		  action: '${appPath}/biz/upload_file/upload.do?fkId=${form.id}&type=image&imageType=ad'
		});
    });
</script>