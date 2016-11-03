<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>用户信息 
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
                        <th scope="col">昵称 <span class="column-sorter"></span></th>
                        <th scope="col">真实姓名<span class="column-sorter"></span></th>
                        <th scope="col">性别 <span class="column-sorter"></span></th>
                        <th scope="col">生日 <span class="column-sorter"></span></th>
                        <th scope="col">每页显示记录 <span class="column-sorter"></span></th>
                        <th scope="col">未读消息 <span class="column-sorter"></span></th>                        
                        <th scope="col">通讯录<span class="column-sorter"></span></th>
                        <th scope="col">用户地址 <span class="column-sorter"></span></th>
                        <th scope="col">微信公众号<span class="column-sorter"></span></th>
                        <th scope="col">操作 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach items="${resLst.content}" var="obj" varStatus="status">
	                    <tr>
	                        <td>${status.index+1}</td>
                        	<td>${obj.nickname}</td>
	                        <td>${obj.realname}</td>
	                        <td>${obj.gender.title}</td>
	                        <td>${obj.birthday}</td>
	                        <td>[${obj.pageSize}]条</td>
	                        <td>[${obj.msgNum}]条</td>
	                        <td><a href="${appPath}/finance/customer/list.do?userId=${obj.user.id}">查看</a></td>
	                        <td><a href="${appPath}/user/address/list.do?userId=${obj.user.id}" alt="${obj.address}">地址</a></td>
	                        <td><a href="${appPath}/weixin/config/list.do?userId=${user.id}">查看</a></td>
	                        
	                        <td>
	                        	<a href="${appPath}/user/user_info/edit.do?userId=${obj.user.id}&id=${obj.id}">修改<a>
	                        </td>
	                    </tr>
                    </c:forEach>
                </tbody>
            </table>
<div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>个人中心 
        	<small>        	
        		
			</small>
		</h4>
    </div>		
</div>
<!-- // navbar -->        
<table id="exampleDTA" class="table boo-table table-striped table-hover">
    <thead>
        <tr>
        	<th scope="col">我的文章<span class="column-sorter"></span></th>
        	<th scope="col">我的微信群<span class="column-sorter"></span></th>
        	<th scope="col">收藏的文章<span class="column-sorter"></span></th>
            <th scope="col">收藏的商品<span class="column-sorter"></span></th>
            <th scope="col">收藏的团购商品<span class="column-sorter"></span></th>
            <th scope="col">我的订单<span class="column-sorter"></span></th>           
        </tr>
    </thead>
    <tbody>
        <tr>
        	<td><a href="${appPath}/biz/article/list.do?userId=${user.id}">查看</a></td>  
        	<td><a href="${appPath}/weixin/config/list.do?userId=${user.id}">查看</a></td>                   	
            <td><a href="${appPath}/shop/my_product/list.do?userId=${user.id}">查看</a></td>
            <td><a href="${appPath}/shop/my_product/list.do?userId=${user.id}&tuan=true">查看</a></td>
            <td><a href="${appPath}/user/order/list.do?userId=${user.id}">查看</a></td>            
        </tr>
    </tbody>
</table>
<div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>
        	<small>        	
        		
			</small>
		</h4>
    </div>		
</div>
<!-- // navbar -->        
<table id="exampleDTA" class="table boo-table table-striped table-hover">
    <thead>
        <tr>
        	<th scope="col">我的商品<span class="column-sorter"></span></th>
        	<th scope="col">我的店铺<span class="column-sorter"></span></th>
        	<th scope="col">我的代理<span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
        <tr>
        	<td><a href="${appPath}/shop/product/list.do?userId=${user.id}">查看</a></td>                     	
            <td><a href="${appPath}/shop/shop/list.do?userId=${user.id}">查看</a></td>
            <td><a href="${appPath}/shop/my_product/list.do?userId=${user.id}&tuan=true">查看</a></td>
            
        </tr>
    </tbody>
</table>