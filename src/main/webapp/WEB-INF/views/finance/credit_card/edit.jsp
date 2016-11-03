<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
<div class="widget widget-simple">                       
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
                <div class="row-fluid">
                    <div class="span12 form-dark">
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>客户信用卡修改                                  	
                                    </h4>
                                </li>
                                <!-- // section form divider -->
                                <li class="control-group">
                                    <label for="name" class="control-label">客户姓名<span class="required">*</span></label>
                                    <div class="controls">
                                        <input type="text" value="${form.customer.name}">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="bankId" class="control-label">发卡行<span class="required">*</span></label>
                                    <div class="controls">
                                    	 <select id="bankId" class="selectpicker input-medium" data-style="btn-info" name="bankId">
                                            <c:forEach items="${banks}" var="bank" varStatus="bankStatus">
                                            	<option value="${bank.id}" <c:if test="${form.bank.id==bank.id}">selected</c:if>>${bank.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="cardNum" class="control-label">信用卡号<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="cardNum"  type="text" value="${form.cardNum}" name="cardNum">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="limitMax" class="control-label">额度 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="limitMax" type="text" name="limitMax" value="${form.limitMax}">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="initAmount" class="control-label">初始消费额度 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="initAmount" type="text" name="initAmount" value="${form.initAmount}">
                                    </div>
                                </li>
                                <!-- // form item -->
                                <li class="control-group">
                                    <label for="billday" class="control-label">账单日 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="billday" type="text" name="billday" value="${form.billday}">
                                    </div>
                                </li>
                                <li class="control-group">
                                    <label for="repaymentday" class="control-label">还款日期 <span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="repaymentday" class="span11" type="text" name="repaymentday" value="${form.repaymentday}">
                                    </div>
                                </li>
                              
                            </ul>
                        </fieldset>                                    
                        <!-- // fieldset Input -->
                        <div class="form-actions">
                            <button type="submit" class="btn btn-blue">保存</button>
                            <button class="btn cancel">取消</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type='text/javascript'>
$(document).ready(function() {
      $('#billday').datepicker({
		format: 'yyyy/mm/dd'
		});
	$('#repaymentday').datepicker({
		format: 'yyyy/mm/dd'
		});
});
</script>    