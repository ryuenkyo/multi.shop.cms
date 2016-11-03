<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<html>
<head>
<meta charset="gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0'/> 
<title><tiles:getAsString name="title" /></title>
<link rel="stylesheet" href="${siteTempletDir}/css/index.css">

</head>

<body>
<!--banner begin-->
	<tiles:insertAttribute name="header" /> 

<!--banner end-->
	<tiles:insertAttribute name="main-content" />  
<div class="margin_bottom"></div>
	<tiles:insertAttribute name="footer" />  
</body>
</html>
