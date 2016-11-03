<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" enctype="multipart/form-data">
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                        	 <div class="span6">
                                <h4 class="simple-header"> 图片文件 <small>上传</small> </h4>
                                <div class="well well-nice inline">
                                    <div class="fileupload fileupload-new" data-provides="fileupload">
                                        <div class="fileupload-preview thumbnail" style="width: 200px; height: 120px;"></div>
                                        <div> 
                                        	<span class="btn btn-file"> 
                                        		<span class="fileupload-new">Select image</span> 
                                        		<span class="fileupload-exists">Change</span>
                                            	<input type="file" name="fileName"/>
                                            </span> 
                                            <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a> 
                                        </div>
                                    </div>
                                    <!-- // image upload --> 
                                </div>
                              </div>
                        </fieldset>                                    
                        <!-- // fieldset Input -->
                        <div class="btn-toolbar fileupload-buttonbar">
                            <button type="submit" class="btn btn-green btn-glyph pull-left start"> 
                                <i class="fontello-icon-upload"></i> <span>Start upload</span> 
                            </button>
                            <button class="btn cancel">取消</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
            <!-- // Widget --> 
