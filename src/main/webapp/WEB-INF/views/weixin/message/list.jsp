<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>微信消息管理 
        	<small> 

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
                <th scope="col">wxConfigId<span class="column-sorter"></span></th>
                <th scope="col">signature<span class="column-sorter"></span></th>
                <th scope="col">timestamp<span class="column-sorter"></span></th>
                <th scope="col">body<span class="column-sorter"></span></th>
                <th scope="col">操作<span class="column-sorter"></span></th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${obj.id}</td>
                <td>${obj.wxConfig.id}</td>               
                <td>${obj.signature}</td>
                <td>${obj.timestamp}</td>
                <td><a href="${appPath}/weixin/message/item.do?id=${obj.id}">查看</a></td>	                    
                <td><a href="${appPath}/weixin/message/edit.do?id=${obj.id}">修改</a>
                	<a href="${appPath}/weixin/message/del.do?id=${obj.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
   