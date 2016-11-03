<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
 <div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>订单管理 
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
                <th scope="col">主订单号<span class="column-sorter"></span></th>
                <th scope="col">开团时间<span class="column-sorter"></span></th>
                <th scope="col">团购状态<span class="column-sorter"></span></th>
                <th scope="col">团购人数<span class="column-sorter"></span></th>
                <th scope="col">已参团人数<span class="column-sorter"></span></th>
                <th scope="col">发起人<span class="column-sorter"></span></th>
                <th scope="col">分享标题<span class="column-sorter"></span></th>
                <th scope="col">分享链接<span class="column-sorter"></span></th>
                <th scope="col">订单列表<span class="column-sorter"></span></th>
                <th scope="col">操作<span class="column-sorter"></span></th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${obj.id}</td>
                <td>${obj.tradeNo}</td>                
                <td>${obj.beginTime}</td>
                <td>${obj.tuanStatus.title}</td>
                <td>${obj.tuanNum}</td>
                <td>${obj.currNum}</td>
                <td>${obj.masterOrder.customerName}</td>
                <td><a href="${obj.shareUrl}" alt="${obj.shareContent}">${obj.shareTitle}</a></td>
                <td><a href="${appPath}/user/tuan/build_file.do?id=${obj.id}" alt="${obj.shareUrl}">查看</a></td>
                <td><a href="${appPath}/user/order/list.do?orderId=${obj.id}">查看</a></td>	                    
                <td><a href="${appPath}/user/order/del.do?id=${obj.id}">关闭</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
   