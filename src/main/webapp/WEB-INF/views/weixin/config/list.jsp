<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>微信配置管理 
        	<small> 
        		<c:if test="${!empty user}">        	
        			<a href="${appPath}/weixin/config/add.do?userId=${user.id}" class="btn btn-blue">微信配置新增</a>
        		</c:if>
        		<c:if test="${empty user}">        	
        			<a href="${appPath}/weixin/config/add.do" class="btn btn-blue">微信配置新增</a>
        		</c:if> 
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
                <th scope="col">appId<span class="column-sorter"></span></th>
                <th scope="col">wxToken<span class="column-sorter"></span></th>
                <th scope="col">状态<span class="column-sorter"></span></th>
                <th scope="col">用户<span class="column-sorter"></span></th>
                <th scope="col">操作<span class="column-sorter"></span></th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${obj.id}</td>
                <td>${obj.appId}</td>               
                <td><lineTag:show content="${obj.wxToken}" length="20"/></td>
                <td>${obj.status.title}</td>
                <td><a href="${appPath}/user/user_info/by_userid.do?userId=${obj.user.id}">查看</a></td>	                    
                <td><a href="${appPath}/weixin/config/edit.do?id=${obj.id}">修改</a>
                	<a href="${appPath}/weixin/config/del.do?id=${obj.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
   