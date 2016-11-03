<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<!-- // page head -->
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
        <div class="widget widget-simple">              
            <div class="widget-content">
                <div class="widget-body">                       

                        <div class="row-fluid">
                            <div class="span12 form-dark">
                             <fieldset>
                                    <ul class="form-list label-left list-bordered dotted">
                                        <li class="section-form">
                                            <h4>商品图片<a href="${appPath}/shop/product/edit.do?id=${form.id}" class="btn btn-blue">${form.name}</a></h4>
                                        </li>
                                    </ul>
                                </fieldset>    
                                <fieldset>
                                    <ul class="form-list label-left list-bordered dotted">
                                        <!-- // section form divider -->                                            
                                        <li class="control-group">
                                            <label for="accountPrefix" class="control-label">商品名称<span class="required">*</span></label>
                                            <div class="controls">
                                            	<img src="${form.logo}" class="thumbnail" width="96" height="96">
                                                <input id="name" type="text" value="${form.name}" name="name">
                                            </div>                                                                                               
                                        </li>
                                        <!-- // form item -->
  
                                    </ul>
                                </fieldset>                                    
                                <!-- // fieldset Input -->
                                <form id="accounForm" class="form-horizontal" action="#"  method="POST" enctype="multipart/form-data" data-upload-template-id="template-upload-2" data-download-template-id="template-download-2" >
                                <input type="hidden" name="uploadType" value="${uploadType}">
                                <div class="form-actions">
                                    <input type="file" class="btn " name="fileName">
                                    <button type="submit" class="btn btn-blue">新增</button> 
                                </div>
                                </form>
                            </div>
                        </div>
                   
                </div>
            </div>
        </div>
           
<!-- // page content --> 
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
