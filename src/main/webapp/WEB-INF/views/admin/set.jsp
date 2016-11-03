<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- // page head -->
<div id="page-content" class="page-content">
<section>
    <div class="row-fluid margin-top20">
        <div class="span12 well well-black">
            <div class="row-fluid">                
                <!-- // column -->
                
                <div class="span12 grider">
                    <div class="row-fluid">
                        <div class="span6 grider-item">
                            <!-- // Example row -->
                            
                            <div class="row-fluid">
                                <div class="span12 grider-item">
                                    <ul class="nav nav-well">
                                        <li><a class="well well-black" href="${appPath}/admin/user/list.do">
                                        	<i class="fontello-icon-users"></i>
                                            <h4 class="statistic-values pull-right">8765</h4>
                                            	用户管理</a></li>                                        
                                        <li><a class="well well-black" href="${appPath}/admin/role/parent.do"><i class="fontello-icon-basket-2"></i>
                                            <h4 class="statistic-values pull-right">15 487</h4>
                                            	角色管理</a></li>
                                        <li><a class="well well-black" href="${appPath}/admin/menu/parent.do"><i class="fontello-icon-archive"></i>
                                            <h4 class="statistic-values pull-right">69 789</h4>
                                            	菜单管理</a></li>
                                        <li><a class="well well-black positive" href="${appPath}/admin/dict/parent.do"><i class="fontello-icon-download"></i>
                                            <h4 class="statistic-values pull-right">9</h4>
                                            	字典管理</a></li>
                                        <li><a class="well well-black positive" href="${appPath}/admin/dict/parent.do"><i class="fontello-icon-download"></i>
                                            <h4 class="statistic-values pull-right">9</h4>
                                            	验证码管理</a></li>
                                        <li><a class="well well-black positive" href="${appPath}/admin/dict/parent.do"><i class="fontello-icon-download"></i>
                                            <h4 class="statistic-values pull-right">9</h4>
                                            	备份设置</a></li>
                                    </ul>
                                    <!-- // statistic nav --> 
                                </div>
                                <!-- // column --> 
                            </div>
                            <!-- // Example row --> 
                            
                        </div>
                        <!-- // column -->
                        
                        <div class="span6 grider-item">                           
                         
                            <!-- // Example row -->
                            
                            <div class="row-fluid">
                                <div class="span12 grider-item">
                                    <div class="statistic-box well well-black well-impressed">
                                        <div class="section-left"> <i class="fontello-icon-users f-28"></i> </div>
                                        <div class="section-wrapper-right">
                                            <div class="section-right">
                                                <h3 class="statistic-values negative"> - 2,726 <i class="indicator fontello-icon-down-dir f-28"></i></h3>
                                                <span class="info-block">Total trafic 30 days</span> </div>
                                        </div>
                                    </div>
                                    <!-- // box --> 
                                </div>
                                <!-- // column --> 
                            </div>
                            <!-- // Example row -->
                            
                            <div class="row-fluid">
                                <div class="span12 grider-item">
                                    <div class="statistic-box well well-black well-impressed">
                                        <div class="section-left"> <i class="fontello-icon-users f-28"></i> </div>
                                        <div class="section-wrapper-right">
                                            <div class="section-right">
                                                <h3 class="statistic-values positive"> + 2,726 <i class="indicator fontello-icon-up-dir f-28"></i></h3>
                                                <span class="info-block">Total trafic 30 days</span> </div>
                                        </div>
                                    </div>
                                    <!-- // box --> 
                                </div>
                                <!-- // column --> 
                            </div>
                            <!-- // Example row --> 
                            
                        </div>
                        <!-- // column --> 
                        
                    </div>
                    <!-- // Example row --> 
                </div>
                <!-- // column --> 
                
            </div>
        </div>
        <!-- // column --> 
        
    </div>
    <!-- // Example row --> 
    
</section>
<section>
    <div class="row-fluid">
        <div class="span4">
            <div class="widget widget-simple">
                <div class="widget-header header-small"> 
                <a class="btn btn-mini btn-success pull-right" href="${appPath}/biz/upload_file/list.do">查看更多</a>
                    <h6><i class="fontello-icon-net"></i> 文件管理</h6>
                </div>
                <div class="widget-content">
                    <div class="widget-body">
                        <table class="table table-condensed table-striped">
                            <thead>
                                <tr>
                                    <th>文件名称</th>
                                    <th>上传时间</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach items="${productLsts.content}" var="product" varStatus="status">
	                                <tr>
	                                    <td><a target="_blank" href="http://www.google.com">${product.name}</a></td>
	                                    <td><span>${product.status.title}</span></td>
	                                </tr>
                                </c:forEach>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- // widget --> 
        </div>
        <!-- // column -->
        
        <div class="span4">
            <div class="widget widget-simple">
                <div class="widget-header header-small"> 
                	<a class="btn btn-mini btn-success pull-right" href="${appPath}/biz/image_file/list.do?orders=lastModifiedDate&direction=DESC">查看更多 All</a>
                    <h6><i class="fontello-icon-eye-1"></i> 图片管理</h6>
                </div>
                <div class="widget-content">
                    <div class="widget-body">
                        <table class="table table-condensed table-striped">
                            <thead>
                                <tr>
                                    <th>名称 </th>
                                    <th>上传时间/th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${orderLsts.content}" var="order" varStatus="statusOrder">
	                                <tr>
	                                    <td><a target="_blank" href="http://www.google.com">${order.title}</a></td>
	                                    <td><span>${order.orderType.title}</span></td>
	                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- // column -->
        
        <div class="span4">
            <div class="widget well well-black">
                <div class="widget-header header-small"> <a class="btn btn-mini btn-success pull-right" href="#">查看更多</a>
                    <h6><i class="fontello-icon-popup-2"></i>最近登录用户</h6>
                </div>
                <div class="widget-content">
                    <div class="widget-body">
                        <table class="table table-condensed table-striped">
                            <thead>
                                <tr>
                                    <th>Browser</th>
                                    <th>Visits</th>
                                    <th>Percent</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>Firefox</th>
                                    <td><span>2598</span></td>
                                    <td><div class="progress progress-success progress-small margin-s0">
                                            <div class="bar tip-tc" style="width:36%" title="36%"> </div>
                                        </div></td>
                                </tr>
                                <tr>
                                    <th>Chrome</th>
                                    <td><span>1546</span></td>
                                    <td><div class="progress progress-success progress-small margin-s0">
                                            <div class="bar tip-tc" style="width:21%" title="21%"> </div>
                                        </div></td>
                                </tr>
                                <tr>
                                    <th>Internet Explorer</th>
                                    <td><span>1120</span></td>
                                    <td><div class="progress progress-success progress-small margin-s0">
                                            <div class="bar tip-tc" style="width:18%" title="18%"> </div>
                                        </div></td>
                                </tr>
                                <tr>
                                    <th>Safari</th>
                                    <td><span>756</span></td>
                                    <td><div class="progress progress-success progress-small margin-s0">
                                            <div class="bar tip-tc" style="width:12%" title="12%"> </div>
                                        </div></td>
                                </tr>
                                <tr>
                                    <th>Opera</th>
                                    <td><span>412</span></td>
                                    <td><div class="progress progress-success progress-small margin-s0">
                                            <div class="bar tip-tc" style="width:10%" title="10%"> </div>
                                        </div></td>
                                </tr>
                                <tr>
                                    <th>Others</th>
                                    <td><span>165</span></td>
                                    <td><div class="progress progress-success progress-small margin-s0">
                                            <div class="bar tip-tc" style="width:3%" title="3%"> </div>
                                        </div></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- // column --> 
        
    </div>
    <!-- // Example row --> 
    
</section>
</div>
<!-- // page content --> 