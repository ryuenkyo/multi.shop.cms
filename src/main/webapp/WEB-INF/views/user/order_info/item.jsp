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
                <th scope="col">收货人<span class="column-sorter"></span></th>
                <th scope="col">支付类型<span class="column-sorter"></span></th>
                <th scope="col">支付状态<span class="column-sorter"></span></th>
                <th scope="col">购买数量<span class="column-sorter"></span></th>
                <th scope="col">金额<span class="column-sorter"></span></th>
                <th scope="col">操作<span class="column-sorter"></span></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${form.id}</td>
                <td>${form.tradeNo}</td>                
                <td>${form.customerName}</td>
                <td>${form.status.title}</td>
                <td>${form.payTypeTitle}</td>
                <td>${form.payTitle}</td>
                <td>${form.num}</td>
                <td><a href="${appPath}/user/order/list.do?orderId=${form.orderId}">查看</a></td>	                    
                <td><a href="${appPath}/user/order/edit.do?id=${form.id}">修改</a>
                	<a href="${appPath}/user/order/del.do?id=${form.id}">删除</a>
                </td>
            </tr>
        </tbody>
    </table>
   