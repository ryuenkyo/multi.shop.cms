<%@ page contentType="text/html; charset=utf-8" language="java" errorPage=""%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<div class="widget widget-simple widget-table">
	<tiles:insertAttribute name="table-body" />
	<tiles:insertAttribute name="table-pagination" />
</div>