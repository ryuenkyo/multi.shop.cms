<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form class="form-horizontal" method="POST" action="#" >

                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>权限修改</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="code" class="control-label span2">编码<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input type="text" value="${form.code}">
                                    </div>                                               

                                    <label for="name" class="control-label span2">名称<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="name"  type="text" value="${form.name}" name="name">
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
      
