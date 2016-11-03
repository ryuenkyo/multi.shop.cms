<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<div class="navbar">
    <div class="navbar-inner no-bg">
        <h4 class="title"><i class="fontello-icon-window"></i>客户信用卡列表 
        	<small>        
				<a href="${appPath}/finance/credit_card/add.do?customerId=${customer.id}" class="btn btn-blue">客户信用卡新增</a>
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
            <th scope="col">ID<span class="column-sorter"></span></th>
            <th scope="col">姓名<span class="column-sorter"></span></th>
            <th scope="col">银行<span class="column-sorter"></span></th>
            <th scope="col">卡号<span class="column-sorter"></span></th>
            <th scope="col">固定额度 <span class="column-sorter"></span></th>
            <th scope="col">账单日<span class="column-sorter"></span></th>
            <th scope="col">还款日 <span class="column-sorter"></span></th>
            <th scope="col">账单 <span class="column-sorter"></span></th>
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${resLst.content}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
                <td>${obj.customer.name}</td>
                <td>${obj.bank.name}</td>
                <td>${obj.cardNum}</td>
                <td>${obj.limitMax}</td>
                <td>${obj.billday}</td>
                <td>${obj.repaymentday}</td>               
                <td><a href="${appPath}/finance/card_waste/list.do?id=${obj.id}">查看</a></td>
                <td><a href="${appPath}/finance/credit_card/edit.do?id=${obj.id}">修改</a>
                	<a href="${appPath}/finance/credit_card/del.do?id=${obj.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
        
    </tbody>
</table>
  