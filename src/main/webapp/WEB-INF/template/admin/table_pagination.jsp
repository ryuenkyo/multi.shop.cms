<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<%@ page import="org.springframework.data.domain.Page" %> 
<%
	Page resPage=(Page)request.getAttribute("resLst");
	int pageCount=0;
	int currPage=0;
	int prefixNum = 0;
	int postfixNum = 0;
	
	if(resPage==null){
	}else{
		pageCount=resPage.getTotalPages();
		currPage=resPage.getNumber();
		prefixNum = currPage - 2;
		postfixNum = currPage + 2;
	}
	
	if (pageCount <= 5) {
		prefixNum = 0;
		postfixNum = pageCount;
	} else {
		if (prefixNum <= 0) {
			prefixNum = 0;
		}
		if (postfixNum >= (pageCount-1)) {
			postfixNum = (pageCount-1);
		} 
	}
	System.out.println("prefixNum: "+prefixNum+",postfixNum:"+postfixNum+",pageCount"+pageCount);
%>
<c:if test="${!empty resLst}">
<div class="widget-footer">
 	<div class="pagination pagination-boo pull-right">
        <ul>
        	<c:if test="${resLst.number==0}">
        		<li class="disabled">
					<a href="#">First</a>
				</li>
				<li class="disabled">
					<a href="#">Prev</a>
				</li>								
			</c:if>
			<c:if test="${resLst.number!=0}">
				<li>
					<a href="${appPath}${currMenu.menuUrl}?page=0${queryLine}">First</a>
				</li>
				<li>
					<a href="${appPath}${currMenu.menuUrl}?page=${resLst.number-1}${queryLine}">Prev</a>
				</li>								
			</c:if>    
			<c:if test="${resLst.totalPages>0}">                    
            <%	for (int i = prefixNum; i <= postfixNum; i++) {%>
            	<%if(resPage.getNumber()==i){%>
					<li class="active">
            			<a href="${appPath}${currMenu.menuUrl}?page=<%=i%>${queryLine}"><%=i+1%></a>
            		</li>
            	<%}
            	if(resPage.getNumber()!=i){
            	%>
					<li>
            			<a href="${appPath}${currMenu.menuUrl}?page=<%=i%>${queryLine}"><%=i+1%></a>
            		</li>
            	<%}%>
           <%}%>
            </c:if>
            <c:if test="${resLst.totalPages==(resLst.number+1)}">
				<li class="disabled">
					<a href="#">Next</a>
				</li>
				<li class="disabled">
					<a href="#">End</a>
				</li>								
			</c:if>
			<c:if test="${resLst.totalPages!=(resLst.number+1)}">
				<li>
					<a href="${appPath}${currMenu.menuUrl}?page=${resLst.number+1}${queryLine}">Next</a>
				</li>
				<li>
					<a href="${appPath}${currMenu.menuUrl}?page=${resLst.totalPages-1}${queryLine}">End</a>
				</li>								
			</c:if>   
        </ul>
    </div>                                    <!-- // pagination -->
</div>
</c:if>