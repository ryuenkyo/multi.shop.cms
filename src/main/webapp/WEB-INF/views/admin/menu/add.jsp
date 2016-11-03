<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">                       
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
          		<%--<c:if test="${!empty parent}">   
					<div class="row-fluid">
                        <div class="span12">
                            <div class="control-group no-margin-bootom">
                                <label class="control-label label-left"> <img src="${parent.icon}" class="thumbnail" width="96" height="96"> </label>
                                <div class="controls">
                                    <address>
                                    <h2>${parent.name}</h2>
                                    <strong>菜单：</strong> <strong><a href="#">${parent.menuUrl}</a></strong><br>
                                    <abbr title="Work email">状态:</abbr> <a href="mailto:#">${parent.status}</a><br>
                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>   
                --%>
               
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>菜单新增
                                    	<c:if test="${empty parent}"><a href="${appPath}/admin/menu/parent.do" class="btn btn-blue">顶层菜单<a></c:if>
                                    	<c:if test="${!empty parent}"><a href="${appPath}/admin/menu/parent.do?parentId=${parent.id}" class="btn btn-blue">${parent.name}<a></c:if>
                                    </h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="code" class="control-label span2">菜单编码<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="code" type="text" value="" name="code">
                                    </div>                                               

                                    <label for="name" class="control-label span2">菜单名称<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="name"  type="text" value="" name="name">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="name" class="control-label span2">序号<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="serNo"  type="text" value="" name="serNo">
                                    </div>

                                    <label for="status" class="control-label span2">状态<span class="required">*</span></label>
                                    <div class="controls span4">
                                       <select id="status" class="selectpicker input-medium" data-style="btn-info" name="status">
                                            <c:forEach items="${menuStatus}" var="msItem" varStatus="bankStatus">
                                            	<option value="${msItem.code}">${msItem.title}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="menuUrl" class="control-label">菜单地址 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="menuUrl" class="span11" type="text" name="menuUrl" value="">
                                    </div>
                                </li>
                               <!--  <li class="control-group">
                                    <label for="accountFirstName" class="control-label">描述 <span class="required"></span></label>
                                    <div class="controls">
                                    	<textarea id="accountFirstName" class="input-block-level" rows="4"></textarea>                                                	
                                    </div>
                                </li>
                                // form item -->
                                
                                
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
   