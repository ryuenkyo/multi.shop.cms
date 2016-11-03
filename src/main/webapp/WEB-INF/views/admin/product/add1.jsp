<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->

<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="productForm" class="form-horizontal" method="post" action="#" >
				<%--<input type="hidden" name="id" value="${form.id}" />--%>
				<input type="hidden" id="parentCatId" name="parentCatId" value="" />
				<input type="hidden" id="catId" name="catId" value="" />
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>商品新增</h4>
                                </li>
                                <!-- // section form divider -->
                                
                                
                                <li class="control-group">
                                    <label for="name" class="control-label">商品名称<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="name " type="text" value="" name="name">
                                    </div>                                               
                                </li>
                              
                                <li class="control-group">
                                    <label for="parentCat" class="control-label span2">父分类 <span class="required">*</span></label>
                                    <div class="controls span4">
                                        <select id="parentCat" class="selectpicker input-medium" data-style="btn-info">                                        
                                            <c:forEach items="${catLst}" var="cat" varStatus="patCatStatus">
                                            	<%--<option value="${cat.id}" <c:if test="${!empty form.category}"><c:if test="${cat.id == form.category.id}">selected</c:if></c:if>>${cat.name}</option>--%>
                                            	<option value="${cat.id}">${cat.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    
                                    <label for="subCat" class="control-label span2">子分类 <span class="required">*</span></label>
                                    <div class="controls span4" id="subCatDiv">
                                        <select id="subCat" class="selectpicker input-medium" data-style="btn-info">                                            
                                            <option value="">请选择</option>                                            
                                        </select>
                                    </div>
                                </li>
                                <li class="control-group">
                                 	<label for="postfree" class="control-label span2">单价<span class="required">*</span></label>
                                     <div class="controls span4">
                                        <input id="price" type="text" value="0" name="price">
                                     </div>    
                                     <label for="postfree" class="control-label span2">包邮<span class="required">*</span></label>
                                     <div class="controls span4">
                                        <input id="postfree" type="text" value="0" name="postfree">
                                     </div>                                   
                                </li>                                
                                <!-- // form item -->
                                 <li class="control-group">
                                    <label for="introduce" class="control-label">产品描述 <span class="required">*</span></label>
                                    <div class="controls" id="show">
                                    	<textarea id="introduce" class="input-block-level" name="introduce"  rows="4"></textarea>                                                	
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
      
<!-- // page content --> 
<script type="text/javascript">
    $(document).ready(function(){
    	$("#parentCat").change(function(){
                $("#parentCat option").each(function(i,o){
                    if($(this).attr("selected"))
                    {
                    	$("#parentCatId").val($(this).val());                       
                        $.ajax({
				            url: "${appPath}/getsubs_cat.do?parentId="+$(this).val(),
				            type: "get",
				            cache: false,
				            success: function(rejson){
				            	$("#subCatDiv").html(rejson);
				            },
				            error: function(XMLHttpRequest, textStatus){
				                alert(textStatus);
				                return
				            }
				        });
                    }
                });
         });

         $("#parentCat").change();
         
    });
    </script>