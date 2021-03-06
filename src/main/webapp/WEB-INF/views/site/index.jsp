<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<%@ include file="/image.upload.jsp"%>
<script type="text/javascript" src="${siteTempletDir}/js/jquery.js"></script>
<script type="text/javascript" src="${siteTempletDir}/js/swipe.min.js"></script>
<script type="text/javascript">
    var elem = document.getElementById('mySwipe');
    window.mySwipe = Swipe(elem,{
        startSlide: 0,
        auto: 2000,
        continuous: true,
        disableScroll: true,
        stopPropagation: true,
        callback: function (index, element) { },
        transitionEnd: function (index, element) { }
    });
</script>
<script type="text/javascript">

	 $(document).ready(function(){
	 	var n=0;
		$(".goods").hide().eq(0).show();
		$(".nav .n_box").removeClass("border").eq(0).addClass("border");
		$(".nav .n_box").click(function(){
			n=$(this).index();
			$(".nav .n_box").removeClass("border").eq(n).addClass("border");
			$(".goods").fadeOut().eq(n).fadeIn();
			})

            var productHtml=$.ajax({url:"${appPath}/site/product/by_shop_cat.do?shopId=${shop.id}&catId=${cat.id}",async:false});
               //显示Ajax返回结果
            $("#product_list").html(productHtml.responseText);
       });
</script>

<div class="nav" id="cat_list">
	 <c:if test="${!empty cats}">
		 <c:forEach items="${cats}" var="obj" varStatus="status">
			<div class="n_box">
		    	<img src="${nginxUrl}${obj.logo}" alt="" >
		        <span>${obj.name}${obj.id}</span>
		    </div>			
	  	</c:forEach>
    </c:if>
</div>

<c:if test="${!empty proMap}">
	 <c:forEach items="${proMap}" var="pros">
		<div class="goods">
			<c:if test="${!empty pros.value}">
			 	<c:forEach items="${pros.value}" var="product" varStatus="status">
				   <div class="goods_box">
				    		<div class="g_l">
				    			<img src="${nginxUrl}${product.logo}">
				        </div>
				        <div class="g_r">
				        	<p>名称：${product.name}</p>
				            <p>单价：${product.price}元<span style="float:right;">数量：${product.count}件</span></p>
				            <p><input type="button" value="购买" />
				            	<span>售出：120件</span></p>
				        </div>
				  </div>
				</c:forEach>
			</c:if>
			<a href="${appPath}/site/product.do?parentCatId=${pros.key}" >查看更多...</a>
		</div>	
  	</c:forEach>
</c:if>

