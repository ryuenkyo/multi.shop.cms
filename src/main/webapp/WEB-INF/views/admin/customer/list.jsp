<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>用户管理 
        	<small>        	
				<a href="${appPath}/admin/user/add.do" class="btn btn-blue">添加用户</a>			
			</small>
		</h4>
    </div>		
</div>
<!-- // navbar -->
<div class="section-content item">
    <p></p>
</div>
  <table id="exampleDTA" class="table boo-table table-striped table-hover">
        <thead>
            <tr>
                <th scope="col">ID <span class="column-sorter"></span></th>
                <th scope="col">用户名 <span class="column-sorter"></span></th>
                <th scope="col">昵称 <span class="column-sorter"></span></th>
                <th scope="col">真实姓名 <span class="column-sorter"></span></th>
                <th scope="col">状态<span class="column-sorter"></span></th>
                <th scope="col">是否在线<span class="column-sorter"></span></th>
                <th scope="col">注册时间<span class="column-sorter"></span></th>
                <th scope="col">最近登录时间<span class="column-sorter"></span></th>
                <th scope="col">个人信息<span class="column-sorter"></span></th>
                <th scope="col">操作 <span class="column-sorter"></span></th>
            </tr>
        </thead>
        <tbody>
         	<c:forEach items="${resLst.content}" var="obj" varStatus="status">
                <tr>
                    <td>${status.index+1}</td>
                	<td>${obj.username}</td>
                	<td>${obj.nickname}</td>
                	<td>${obj.realName}</td>
                    <td>${obj.status.title}</td>
                    <td>${obj.onlineFlag?'是':'否'}</td>
                    <td>${obj.createdDate}</td>
                    <td>${obj.lastLoginTime}</td>
                    <td><a href="${appPath}/user/user_info/by_userid.do?userId=${obj.id}">查看<a></td>
                    <td><a href="${appPath}/admin/user/edit.do?id=${obj.id}">修改<a></td>
                </tr>
            </c:forEach>	
           
        </tbody>
    </table>
    <!-- // DATATABLE - DTA -->

       