<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">                       
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>银行新增                                    	
                                    </h4>
                                </li>
                                <!-- // section form divider -->
                                <li class="control-group">
                                    <label for="name" class="control-label">名称<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="name"  type="text" value="" name="name">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="serverPhone" class="control-label">服务电话<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="serverPhone"  type="text" value="" name="serverPhone">
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
   