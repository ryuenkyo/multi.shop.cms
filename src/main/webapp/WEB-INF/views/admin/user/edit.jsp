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
                                    <h4>用户修改</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                <li class="control-group">
                                    <label for="username" class="control-label span2">用户名<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="username" type="text" value="${form.username}" name="username">
                                    </div>                                               

                                    <label for="password" class="control-label span2">密码<span class="required">*</span></label>
                                    <div class="controls span4">
                                        <input id="password"  type="text" value="****" name="password">
                                    </div>
                                </li>                                
                                <!-- // form item -->
                               <li class="control-group">
                                 <label for="status" class="control-label span2">状态<span class="required">*</span></label>
                                    <div class="controls span4">
                                       <select id="status" class="selectpicker input-medium" data-style="btn-info" name="status">
                                            <c:forEach items="${userStatus}" var="dsItem" varStatus="dsStatus">
                                            	<option value="${dsItem.code}" <c:if test="${form.status==dsItem}">selected</c:if>>${dsItem.title}</option>
                                            </c:forEach>
                                        </select>
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
      
