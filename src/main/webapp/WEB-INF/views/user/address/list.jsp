<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>地址管理 
        	<small>
        		<a href="${appPath}/user/user_info/by_userid.do?userId=${user.id}" class="btn btn-blue">${user.username}</a>        	
        		<a href="${appPath}/user/address/add.do?userId=${user.id}" class="btn btn-blue">地址新增</a>
			</small>
		</h4>
    </div>		
</div>
<!-- // navbar -->
<div class="section-content item">
    <p></p>
</div>
<c:if test="${!empty user}">   
    <table id="exampleDTA" class="table boo-table table-striped table-hover">
        <thead>
            <tr>
                <th scope="col"><a href="${appPath}/user/user_info/by_userid.do?userId=${obj.id}">用户名 </a><span class="column-sorter"></span></th>
                <th scope="col">昵称<span class="column-sorter"></span></th>
                <th scope="col">默认联系人<span class="column-sorter"></span></th>
                <th scope="col">默认联系人手机号<span class="column-sorter"></span></th>
                <th scope="col">默认收货地址<span class="column-sorter"></span></th>
            </tr>
        </thead>
        <tbody>
            <tr>
             	<td>${user.username}</td>
                <td>${userInfo.nickname}</td>
                <td>${userInfo.recipient}</td>
                <td>${userInfo.phone}</td>
                <td>${userInfo.address}</td>
            </tr>
        </tbody>
    </table>
            <!-- // DATATABLE - DTA -->
            
        <!-- // Column -->
</c:if>  
<table id="exampleDTA" class="table boo-table table-striped table-hover">
    <thead>
        <tr>
        	<th scope="col">所属用户<span class="column-sorter"></span></th>
            <th scope="col">是否默认地址 <span class="column-sorter"></span></th>                        
            <th scope="col">联系人<span class="column-sorter"></span></th>
            <th scope="col">手机号<span class="column-sorter"></span></th>
            <th scope="col">收货地址<span class="column-sorter"></span></th>
            <th scope="col">操作<span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${resLst.content}" var="obj" varStatus="status">
        <tr>
        	<td>${obj.userId}</td>
         	<td class="<c:if test="${obj.sure}">btn-green</c:if>">${obj.sure?'是':'否'}</td>                     	
            <td>${obj.name}</td>
            <td>${obj.phone}</td>
            <td >${obj.address}</td>
            <td><a href="${appPath}/user/address/edit.do?id=${obj.id}">修改<a>
            	<a href="${appPath}/user/address/del.do?id=${obj.id}">删除<a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
            <!-- // DATATABLE - DTA -->
            