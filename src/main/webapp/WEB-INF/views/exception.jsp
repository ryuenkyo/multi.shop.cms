<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>异常处理页面</title>
</head>
<body>
<%response.setStatus(200);%>
<% Exception ex = (Exception) request.getAttribute("ex");
if(ex!=null){%>
<H2>Exception:<%=ex.getMessage()%>
</H2>
<H2>Exception:<%=ex.getStackTrace()%>
</H2>
<%}%>
</body>
</html>