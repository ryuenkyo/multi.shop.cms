<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
    <style type="text/css">
        #imglist img{width:48px;height:48px;}
        #imgshow{
	        position:absolute;
	        border:1px solid #ccc;
	        background:#333;
	        padding:5px;
	        color:#fff;
	        display:none;
	    }
    </style>
<div class="navbar">
    <div class="navbar-inner no-bg">
    <c:if test="${!empty obj.type}">
        <h4 class="title"><i class="fontello-icon-window"></i>${obj.name} 管理 
        	<small>   
        		<c:if test="${form.type=='avatar'}">     	
					<a href="${appPath}/biz/upload_file/file_add.do?fkId=${form.fkId}&type=${form.type}" class="btn btn-blue">${obj.nickname}</a>
				</c:if>
				<c:if test="${form.type!='avatar'}">     	
					<a href="${appPath}/biz/upload_file/file_add.do?fkId=${form.fkId}&type=${form.type}" class="btn btn-blue">${obj.name}</a>
				</c:if>
				<a href="${appPath}/biz/upload_file/file_add.do?fkId=${form.fkId}&type=${form.type}" class="btn btn-blue">添加logo</a>	
			</small>
		</h4>
	</c:if>
    </div>		
</div>
<div id="page-content" class="page-content tab-content overflow-y">
<div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
<section>
<div class="row-fluid margin-bottom16">
    <div class="span12">
        <div class="widget widget-simple widget-table">
            <table id="exampleDTA" class="table boo-table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">ID <span class="column-sorter"></span></th>
                        <th scope="col">文件保存地址 <span class="column-sorter"></span></th>
                        <th scope="col">文件访问地址<span class="column-sorter"></span></th>
                        <th scope="col">文件类型 <span class="column-sorter"></span></th>
                        <th scope="col">操作 <span class="column-sorter"></span></th>
                    </tr>
                </thead>
                <tbody id="imglist">
                   <c:forEach items="${resLst.content}" var="obj" varStatus="status">
	                    <tr>
	                        <td>${status.index+1}</td>
                        	<td>${obj.savePath}</td>
	                        <td><a href="${nginxUrl}${obj.httpUrl}" rel="prettyPhoto">
	                        	<img src="${nginxUrl}${obj.httpUrl}"><a></td>
	                         <td>${obj.type.title}</td>
	                        <td>
	                        	<a href="${appPath}/biz/upload_file/del.do?id=${obj.id}&fkId=${obj.fkId}&type=${obj.type}">删除<a>
	                        </td>
	                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <!-- // DATATABLE - DTA -->
            
        </div>
        <!-- // Column -->
         
    </div>
    <!-- // Column -->
    
</div>
<!-- // Example row --> 

</section>
</div>
</div>
<script type="text/javascript">
        var ShowImage = function () {
            xOffset = 10;
            yOffset = 30;
            $("#imglist").find("img").hover(function (e) {
                $("<img id='imgshow' src='" + this.src + "' />").appendTo("body");
                $("#imgshow")
                    .css("top", (e.pageY - xOffset) + "px")
                	.css("left", (e.pageX + yOffset) + "px")
			        .fadeIn("fast");
            }, function () {
                $("#imgshow").remove();
            });

            $("#imglist").find("img").mousemove(function (e) {
                $("#imgshow")
                   .css("top", (e.pageY - xOffset) + "px")
		           .css("left", (e.pageX + yOffset) + "px")
            });
        };

        $(document).ready(function () {
            ShowImage();
        });
    </script>
