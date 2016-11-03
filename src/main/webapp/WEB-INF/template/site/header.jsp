<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="banner1">
        <div id='mySwipe' style='margin: 0 auto' class='swipe'>
            <div class='swipe-wrap'>
      <c:if test="${!empty ads}">
		 <c:forEach items="${ads}" var="obj" varStatus="status">
                <div>  
                    <a href="${obj.httpUrl}">
                    	<img src="${nginxUrl}${obj.logo}" width="100%" />
                    </a>  
                </div>
               </c:forEach>
    	</c:if>
            </div>
        </div>
</div>