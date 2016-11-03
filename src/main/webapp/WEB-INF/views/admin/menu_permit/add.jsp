<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>菜单权限管理 
		</h4>
    </div>		
</div>
<!-- // navbar -->
<div class="section-content item">
    <p></p>
</div>
  <table id="exampleDTA" class="table boo-table table-striped table-hover">
        <c:if test="${!empty permits}">
        <thead>
            <tr>
                <th scope="col">ID <span class="column-sorter"></span></th>
                <th scope="col">权限编码 <span class="column-sorter"></span></th>
                <th scope="col">名称<span class="column-sorter"></span></th>
                <th scope="col">权限菜单 <span class="column-sorter"></span></th>
                <th scope="col">操作 <span class="column-sorter"></span></th>
            </tr>
        </thead>
        <tbody>
         	<c:forEach items="${resLst.content}" var="obj" varStatus="status">
                <tr>
                    <td>${status.index+1}</td>
                	<td>${form.code}</td>
                	<td>${form.name}</td>                
                    <td><a href="${appPath}/admin/user_role/list.do?userId=${form.id}">查看<a></td>
                    <td><a href="${appPath}/admin/permit/edit.do?id=${form.id}">修改<a></td>
                </tr>
            </c:forEach>	
        </c:if>
        </tbody>
    </table>
    <!-- // DATATABLE - DTA -->

       