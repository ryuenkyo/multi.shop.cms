<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<select id="subCat" class="selectpicker input-medium" data-style="btn-info"> 
	<option value="">请选择</option>                                            
    <c:forEach items="${subsCat}" var="cat" varStatus="patCatStatus">
	   <option value="${cat.id}">${cat.name}</option>   
	</c:forEach>                                            
</select>
<script type="text/javascript">
    $(document).ready(function(){
    	 $("#subCat").change(function(){
    	 	$("#catId").val($(this).val());
         });
         $("#subCat").change();
         
    });
    </script>
        