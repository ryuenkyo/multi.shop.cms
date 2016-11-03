<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<link href="${nginxUrl}assets/plugins/pl-gallery/nailthumb/jquery.nailthumb.1.1.css" type="text/css" rel="stylesheet" />
<style type="text/css">
    #imglist img{width:75px;height:75px;}
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
    	<c:if test="${!empty form.imageType}">
        <h4 class="title"><i class="fontello-icon-window"></i>${form.imageType.title}[${obj.name}]图片 管理 
        	<small>
				<c:if test="${form.imageType=='avatar'}">     	
					<a href="${appPath}/${form.imageType.code}/edit.do?id=${form.fkId}" class="btn btn-blue">${obj.nickname}</a>
				</c:if>
				<c:if test="${form.imageType!='avatar'}">     	
					<a href="${appPath}/${form.imageType.code}/edit.do?id=${form.fkId}" class="btn btn-blue">${obj.name}</a>
				</c:if>
				<a href="${appPath}/biz/image_file/file_add.do?fkId=${form.fkId}&imageType=${form.imageType}" class="btn btn-blue">添加图片</a>
				<a href="${appPath}/biz/image_file/relation_add.do?fkId=${form.fkId}&imageType=${form.imageType}" class="btn btn-blue">选择图片</a>
			</small>
		</h4>
		</c:if>
		<c:if test="${empty form.imageType}">
			<h4 class="title"><i class="fontello-icon-window"></i>图片 管理
        	<small>
				<a href="${appPath}/shop/brand/add_logo.do?productId=${product.id}" class="btn btn-blue">添加品牌</a>	
				<c:if test="${!empty product}">
                	<a href="${appPath}/shop/product/edit.do?id=${product.id}" class="btn btn-blue">${product.name}</a>                			                		
                </c:if>		
			</small>
			</h4>
		</c:if>
    </div>		
</div>
 <div class="padding-left20">
    	
    <ul id="imglist" class="thumbnails thumbnails-inline">
    	<c:forEach items="${imageLst}" var="obj" varStatus="status">
        	<li class="thumbnail square75 "><a class="nailthumb-container"><img src="${nginxUrl}${obj.imageFile.httpUrl}" ></a></li>
       	</c:forEach>
    </ul>
   
</div>

<table id="exampleDTA" class="table boo-table table-striped table-hover">
    <thead>
        <tr>
            <th scope="col">ID<span class="column-sorter"></span></th>
            <th scope="col">文件保存地址 <span class="column-sorter"></span></th>
            <th scope="col">文件访问地址<span class="column-sorter"></span></th>
            <th scope="col">文件类型 <span class="column-sorter"></span></th>
            <th scope="col">操作 <span class="column-sorter"></span></th>
        </tr>
    </thead>
    <tbody>
       <c:forEach items="${imageLst}" var="obj" varStatus="status">
            <tr>
                <td>${status.index+1}</td>
            	<td>${obj.imageFile.httpUrl}</td>
                <td style="width:75px;height:75px;"><a href="${nginxUrl}${obj.imageFile.httpUrl}" rel="prettyPhoto">
                	<img src="${nginxUrl}${obj.imageFile.httpUrl}"><a></td>
                 <td>${obj.imageFile.imageType.title}</td>
                <td>${obj.imageFile.imageType}/${form.fkId}
                	<c:if test="${!empty obj.imageFile.imageType}">
                		<c:if test="${!empty form.fkId}">
                		<a href="${appPath}/biz/image_file/del.do?id=${obj.id}&imageType=${obj.imageType}&fkId=${form.fkId}">删除<a>
                		</c:if>
                	</c:if>
                	<c:if test="${empty form.imageType}">
                		<a href="${appPath}/biz/image_file/relation_delete.do?id=${obj.id}">删除<a>
                	</c:if>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
         
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
