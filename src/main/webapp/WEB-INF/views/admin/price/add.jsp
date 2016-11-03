<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->

<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="brandForm" class="form-horizontal" action="#"  method="POST" data-upload-template-id="template-upload-2" data-download-template-id="template-download-2" >
            	<input type="hidden" name="price" id="price" value="1" />
                <div class="row-fluid">
                    <div class="span12 form-dark">                                    
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>价格新增
                                    	<c:if test="${!empty product}">
						    				<small>
					                			<a href="${appPath}/shop/product/edit.do?id=${product.id}" class="btn btn-blue">${product.name}</a>                			                		
					                		</small>
						    			</c:if>
                                    </h4>
                                </li>
                                <!-- // section form divider -->
                                 <li class="control-group">
                                    <label for="type" class="control-label">价格类型<span class="required">*</span></label>
                                    <div class="controls">
                                    	<c:forEach items="${typeLst}" var="priceType" varStatus="typeStatus">
                                            <input type="radio" name="type" value="${priceType}" class="styled" />${priceType.title}
                                        </c:forEach>	      
                                    </div>
                                </li>	
                                <li class="control-group" id="buy_title">
                                    <label for="title" class="control-label">标题<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="title" type="text" value="" name="title">
                                    </div>                                               
                                </li>
                                <li class="control-group" id="buy_num">
                                    <label for="num" class="control-label">购买数量<span class="required">*</span></label>
                                    <div class="controls">
                                       <input id="num" type="text" value="0" name="num">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="price_show" class="control-label">价格<span class="required">*</span></label>
                                    <div class="controls">
                                    	<input id="price_show" type="text" value="0" name="price_show">元
                                    </div>
                                </li>	
                                
                                 <li class="control-group" id="buy_tuan_num">
                                    <label for="tuanNum" class="control-label">团购人数<span class="required">*</span></label>
                                    <div class="controls">                                    	
                                    	<input id="tuanNum" type="text" value="0" name="tuanNum">
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
	    $("#price_show").on('input',function(e){ 
	   		$("#price").val($(this).val()*100); 
		});    
    	$("#buy_tuan_num").hide();
    	$(":radio").click(function(){
    		if($(this).attr('checked')=='checked'){
	    		if($(this).val()=='showing'){
    				$("#buy_title").hide();
    				$("#title").val("展示价格");
    				$("#buy_num").show();
    				$("#buy_tuan_num").hide();
    				$("#num").val(1);
    				$("#price_show").val(10);
    				$("#price").val($(#price_show).val()*100); 
	    		}
    			if($(this).val()=='original'){
    				$("#buy_title").hide();
    				$("#title").val("原始价格");
    				$("#buy_num").show();
    				$("#buy_tuan_num").hide();
    				$("#num").val(1);
    				$("#price_show").val(10);
    				$("#price").val($(#price_show).val()*100);
    			}
    			if($(this).val()=='discount'){
    				$("#buy_title").show();
    				$("#title").val("折扣价格");
    				$("#buy_num").show();
    				$("#buy_tuan_num").hide();
    				$("#num").val(2);
    				$("#price_show").val(10);
    				$("#price").val($(#price_show).val()*100);
    			}
    			if($(this).val()=='tuan'){    
    				$("#buy_title").show();
    				$("#title").val("团购价格");				
    				$("#buy_num").show();
    				$("#buy_tuan_num").show();
    				$("#num").val(1);
    				$("#price_show").val(10);
    				$("#price").val($(#price_show).val()*100);
    				$("#tuanNum").val(2);
    			}
    		}
    	  });
    	});
</script>