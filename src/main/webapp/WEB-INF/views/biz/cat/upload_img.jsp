<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>

<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" action="${appPath}/biz/cat/upload_img.do?id=${form.id}&uploadType=${uploadType}"  method="POST" enctype="multipart/form-data" 
                    data-upload-template-id="template-upload-2" data-download-template-id="template-download-2" >
				<input type="hidden" name="id" value="${form.id }">
                <div class="row-fluid">
                    <div class="span12 form-dark">
                    <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>分类修改${uploadType}1</h4>
                                </li>
                                    <!-- // section form divider -->
                                <li class="control-group">
                                    <label for="name" class="control-label">Header图片<span class="required">*</span></label>
                                    <div class="controls">	                       
                                        <img src="${form.headerImg}" class="thumbnail" width="96" height="96">
                                        <c:if test="${uploadType =='header'}"> 
                                        	 <input type="file" name="fileName">
                                    	</c:if>                                                 
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="name" class="control-label">logo图片<span class="required">*</span></label>
                                    <div class="controls">	                                           
                                        <a href="${appPath}/biz/cat/edit_logo_img.do?id=${form.id}"><img src="${form.logo}" class="thumbnail" width="96" height="96"></a>
                                        <c:if test="${uploadType =='logo'}"> 
                                        	 	<input type="file" name="fileName">
                                    	</c:if>                                              
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="name" class="control-label">footer图片<span class="required">*</span></label>
                                    <div class="controls">
                                    		<img id="exec_target" src="${form.footerImg}" class="thumbnail" width="96" height="96">
                                    		 <c:if test="${uploadType =='footer'}"> 
                                        	 	<input type="file" name="fileName">
                                    		</c:if>      	                                                
                                    </div>
                                </li>
                            </ul>
                        </fieldset>        
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted "> 
                            
                                <li class="control-group">
                                    <label for="code" class="control-label">编码<span class="required">*</span></label>
                                    <div class="controls">
                                        <input type="text" value="${form.code}" readonly >
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="name" class="control-label">名称<span class="required">*</span></label>
                                    <div class="controls">
                                        <input type="text" value="${form.name}" readonly>
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="status" class="control-label">状态 <span class="required">*</span></label>
                                    <div class="controls">
                                    	<input type="text" value="${form.status}" readonly>
                                    </div>
                                </li>
                              
                                <!-- // form item -->
                            
                                <li class="control-group">
                                    <label for="accountFirstName" class="control-label">描述 <span class="required"></span></label>
                                    <div class="controls">
                                    	<textarea id="accountFirstName" class="input-block-level" rows="4" readonly></textarea>                                                	
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
           
