<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->

<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="brandForm" class="form-horizontal" action="#"  method="POST" enctype="multipart/form-data" data-upload-template-id="template-upload-2" data-download-template-id="template-download-2" >
                <div class="row-fluid">
                    <div class="span12 form-dark">                                    
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>品牌修改</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="name" class="control-label">品牌名<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="name" type="text" value="${form.name}" name="name">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="nickName" class="control-label">品派Logo<span class="required">*</span></label>
                                    <div class="controls">
                                    	<img src="${form.logo}" class="thumbnail" width="96" height="96">
                                        <input type="file" class="btn " name="fileName">
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
          