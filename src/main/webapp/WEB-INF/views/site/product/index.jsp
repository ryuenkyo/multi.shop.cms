<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<%@ include file="/image.upload.jsp"%>
<script type="text/javascript" src="${siteTempletDir}/js/jqthumb.min.js"></script>
<script type="text/javascript" src="${siteTempletDir}/js/jquery.imagefit/jquery.imagefit.min.js"></script>
<c:if test="${!empty products}">
	<c:forEach items="${products}" var="obj" varStatus="status">
	<div class="goods_box">
	    	<div class="g_l">
	    		<img src="${nginxUrl}${obj.logo}">
	        </div>
	        <div class="g_r">
	        	<p>名称：${obj.name}</p>
	            <p>单价：${obj.price}元<span style="float:right;">数量：1023件</span></p>
	            <p><input type="button" value="修改" /><input type="button" value="删除" /><span>售出：120件</span></p>
	        </div>
	    </div>
	</c:forEach>
</c:if>
<script type="text/javascript">
     $(document).ready(function(){
		$('div').imagefit({
		    mode: 'outside',
		    force : 'false',
		    valign : 'middle'
		});
	  $('img').jqthumb({
	            classname  : 'jqthumb',          // class name. DEFUALT IS jqthumb
	            width      : '100%',             // new image width after cropping. DEFAULT IS 100px.
	            height     : '100%',             // new image height after cropping. DEFAULT IS 100px.
	            position   : {
	                x : '50%',                   // x position of the image. DEFAULT is 50%. 50% also means centerize the image.
	                y : '50%'                    // y position of the image. DEFAULT is 50%. 50% also means centerize the image.
	            },
	            source     : 'src',              // to specify the image source attribute. DEFAULT IS src.
	            show       : false,              // TRUE = show immediately after processing. FALSE = do not show it. DEFAULT IS TRUE.
	            responsive : 20,                 // used by older browsers only. 0 to disable. DEFAULT IS 20
	            zoom       : 1,                  // zoom the output, 2 would double of the actual image size. DEFAULT IS 1
	            method     : 'auto',             // 3 methods available: "auto", "modern" and "native". DEFAULT IS auto
	            before     : function(oriImage){ // callback before each image starts processing.
	                alert("I'm about to start processing now...");
	            },
	            after      : function(imgObj){   // callback when each image is cropped.
	                console.log(imgObj);
	            },
	            done       : function(imgArray){ // callback when all images are cropped.
	                for(i in imgArray){
	                    $(imgArray[i]).fadeIn();
	                }
	            }
	        });
	
    });
</script>    