<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">                       
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
          		<c:if test="${!empty parent}">   
					<div class="row-fluid">
                        <div class="span12">
                            <div class="control-group no-margin-bootom">
                                <label class="control-label label-left"> <img src="assets/img/demo/demo-avatar9604.jpg" class="thumbnail" width="96" height="96"> </label>
                                <div class="controls">
                                    <address>
                                    <h2>${parent.name}</h2>
                                    <strong>地址：</strong> at <strong><a href="#">${parent.menuUrl}</a></strong><br>
                                    <abbr title="Work email">编码:</abbr> <a href="mailto:#">${parent.code}</a><br>
                                    <abbr title="Work Phone">phone:</abbr> (123) 456-7890
                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>    
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>菜单修改</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="code" class="control-label">菜单编码<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="code" type="text" value="${form.code}" name="code">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="name" class="control-label">菜单名称<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="name"  type="text" value="${form.name}" name="name">
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                <li class="control-group">
                                    <label for="menuUrl" class="control-label">菜单地址 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="menuUrl" class="span11" type="text" name="menuUrl" value="${form.menuUrl}">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="name" class="control-label">序号<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="serNo"  type="text" value="${form.serNo}" name="serNo">
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
         
