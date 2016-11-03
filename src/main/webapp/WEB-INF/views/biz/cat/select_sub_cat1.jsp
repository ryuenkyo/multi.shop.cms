<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<select id="subCat" class="selectpicker input-medium" data-style="btn-info" style="display: none;">                                            
    <c:forEach items="${subsCat}" var="cat" varStatus="patCatStatus">
	   <option value="${cat.id}">${cat.name}</option>   
	</c:forEach>                                            
</select>
<div class="btn-group bootstrap-select input-medium">
	<button data-toggle="dropdown" class="btn dropdown-toggle clearfix btn-info" id="subCat">
		<span class="filter-option pull-left">${selectCat.name}</span>&nbsp;
		<span class="caret"></span>
	</button>
	<div role="menu" class="dropdown-menu">
		<ul style="max-height: 78px; overflow-y: scroll;">
			<c:forEach items="${subsCat}" var="cat" varStatus="subCatStatus">
				<li rel="${cat.id}"><a href="#" tabindex="-1">${cat.name}</a></li>
			</c:forEach>
		</ul>
	</div>
</div>
<%--
<c:forEach items="${subsCat}" var="cat" varStatus="patCatStatus">
   <option value="${cat.id}">${cat.name}</option>   
</c:forEach>
--%>
<script type="text/javascript">
    $(document).ready(function(){
    	 $("#subCat").change(function(){
    	 	$("#catId").val($(this).val());
         });
         $("#subCat").change();         
    });
    </script>
