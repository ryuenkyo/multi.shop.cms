<%@ page contentType="text/html; charset=utf8" pageEncoding="UTF-8" language="java" errorPage=""%>
<%@ include file="/include.inc.jsp"%>
<style type="text/css">

#banner {position:relative; width:478px; height:286px; border:1px solid #666; overflow:hidden;}
#banner_list img {border:0px;}
#banner_bg {position:absolute; bottom:0;background-color:#000;height:30px;filter: Alpha(Opacity=30);opacity:0.3;z-index:1000;cursor:pointer; width:478px; }
#banner_info{position:absolute; bottom:0; left:5px;height:22px;color:#fff;z-index:1001;cursor:pointer}
#banner_text {position:absolute;width:120px;z-index:1002; right:3px; bottom:3px;}
#banner ul {position:absolute;list-style-type:none;filter: Alpha(Opacity=80);opacity:0.8; border:1px solid #fff;z-index:1002;
			margin:0; padding:0; bottom:3px; right:5px;}
#banner ul li { padding:0px 8px;float:left;display:block;color:#FFF;border:#e5eaff 1px solid;background:#6f4f67;cursor:pointer}
#banner ul li.on { background:#900}
#banner_list a{position:absolute;} <!-- 让四张图片都可以重叠在一起-->
</style>
<script type="text/javascript">
	var t = n = 0, count;
	$(document).ready(function(){	
		count=$("#banner_list a").length;
		$("#banner_list a:not(:first-child)").hide();
		$("#banner_info").html($("#banner_list a:first-child").find("img").attr('alt'));
		$("#banner_info").click(function(){window.open($("#banner_list a:first-child").attr('href'), "_blank")});
		$("#banner li").click(function() {
			var i = $(this).text() - 1;//获取Li元素内的值，即1，2，3，4
			n = i;
			if (i >= count) return;
			$("#banner_info").html($("#banner_list a").eq(i).find("img").attr('alt'));
			$("#banner_info").unbind().click(function(){window.open($("#banner_list a").eq(i).attr('href'), "_blank")})
			$("#banner_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
			document.getElementById("banner").style.background="";
			$(this).toggleClass("on");
			$(this).siblings().removeAttr("class");
		});
		t = setInterval("showAuto()", 4000);
		$("#banner").hover(function(){clearInterval(t)}, function(){t = setInterval("showAuto()", 4000);});
	})
	
	function showAuto()
	{
		n = n >=(count - 1) ? 0 : ++n;
		$("#banner li").eq(n).trigger('click');
	}
</script>
<div class="widget widget-simple">              
    <div class="widget-content">
        <div class="widget-body">
            <form id="accounForm" class="form-horizontal" method="post" action="#" >
				<input type="hidden" name="id" value="${form.id }">
                <div class="row-fluid">
                    <div class="span12 form-dark">
                    <fieldset>
                            <ul class="form-list label-left list-bordered dotted">
                                <li class="section-form">
                                    <h4>分类修改</h4>
                                </li>
                                    <!-- // section form divider -->
                                <li class="control-group">
                                    <label for="name" class="control-label">Header图片<span class="required">*</span></label>
                                    <div class="controls">	                                           
                                        <a href="${appPath}/biz/cat/edit_header_img.do?id=${form.id}">
                                        	<img src="${form.headerImg}" class="thumbnail" width="256" height="96">
                                        </a>  
                                        <a href="${appPath}/biz/cat/edit_logo_img.do?id=${form.id}">
                                        	<img src="${nginxUrl}${form.logo}" class="thumbnail" width="256" height="96">
                                        </a> 
                                        <a href="${appPath}/biz/cat/edit_footer_img.do?id=${form.id}">
                                    		<img src="${form.footerImg}" class="thumbnail" width="256" height="96">
                                    	</a>                                           
                                    </div>
                                </li>                                                            
                            </ul>
                        </fieldset>        
                        <fieldset>
                            <ul class="form-list label-left list-bordered dotted "> 
                            
                                <li class="control-group">
                                    <label for="code" class="control-label">编码<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="code" type="text" value="${form.code}" name="code">
                                    </div>                                               
                                </li>
                                <li class="control-group">
                                    <label for="name" class="control-label">名称<span class="required">*</span></label>
                                    <div class="controls">
                                        <input id="name"  type="text" value="${form.name}" name="name">
                                    </div>
                                </li>
                                 <li class="control-group">
                                    <label for="status" class="control-label">状态<span class="required">*</span></label>
                                    <div class="controls">
                                        <select id="status" class="selectpicker input-medium" data-style="btn-info" name="status">
                                            <c:forEach items="${statusLst}" var="staObj" varStatus="productStatus">
                                            	<option value="${staObj}" <c:if test="${staObj ==form.status}">selected </c:if>>${staObj.title}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                              
                                <!-- // form item -->
                            
                                <li class="control-group">
                                    <label for="value" class="control-label">描述 <span class="required"></span></label>
                                    <div class="controls">
                                    	<textarea id="value" class="input-block-level" rows="4">${form.value}</textarea>                                                	
                                    </div>
                                </li>
                                <!-- // form item -->
                                
                                
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
          