<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="${templetDir}/static.kissbb.com/js/jquery-1.9.1.min.js"></script>
<script src="${templetDir}/static2.kissbb.com/js/swipe.js"></script>
<script src="${templetDir}/static2.kissbb.com/js/common.js"></script>
<script>
    /*广告轮播*/
    $(function(){
        advmove("adv","position");
    })
    function advmove(id,pos){
        var count=$("#"+id).find(".item").length;
        $("#"+pos).empty();
        if(pos!="null"){
            for(var c=0;c<count;c++){
                if(c==0){
                    $("#"+pos).append("<li class='on'></li>");
                }
                else{
                    $("#"+pos).append("<li></li>");
                }
            }
        }
        var bullets="null" ;
        var bullets = document.getElementById('position').getElementsByTagName('li');
        if(pos!="null"){
            bullets=document.getElementById(pos).getElementsByTagName("li");
        }
        var elem = document.getElementById(id);
        var slider =
                Swipe(document.getElementById(id), {
                    auto: 3000,
                    continuous: true,
                    callback: function(pos) {
                        if(pos!="null"){
                            var i = bullets.length;
                            while (i--) {
                                bullets[i].className = ' ';
                            }
                            bullets[pos].className = 'on';
                        }
                    }
                });
    }
</script>
<div class="index_adv">
    <div id="adv" class='swipe'>
        <div class='swipe-wrap'>
                        <div class="item">
                <a href="wap.kissbb.com/page-seckill_today.html" title="世界杨氏联谊会" rel="external">
                	<img src="http://www.sjyang.org/upload/image/2011-07-01/428123439577200748.jpg" width="100%"/></a>
            </div>
                        <div class="item">
                <a href="wap.kissbb.com/page-maternity_eleven.html" title="世界杨氏联谊会" rel="external">
                	<img src="http://www.sjyang.org/upload/image/2011-07-01/435160313994963475.jpg" width="100%"/></a>
            </div>
                        <div class="item">
                <a href="wap.kissbb.com/page-brand_shangpinying.html" title="童装秋款特惠 低至4.9折" rel="external">
                	<img src="http://www.sjyang.org/upload/image/2011-07-01/432064089251151013.jpg" width="100%"/></a>
            </div>
                        <div class="item">
                <a href="wap.kissbb.com/page-brand_kissbb.html" title="孕装上新 低至4.9折特惠" rel="external">
                	<img src="http://www.sjyang.org/upload/image/2011-07-01/427560489623777657.jpg" width="100%"/></a>
            </div>
                        <div class="item">
                <a href="wap.kissbb.com/page-merries.html" title="保税直邮进口奶粉纸尿裤-全球购物底价疯抢" rel="external">
                	<img src="http://www.sjyang.org/upload/image/2011-07-01/428404914553896463.jpg" width="100%"/></a>
            </div>
                        <div class="item">
                <a href="wap.kissbb.com/page-gertrude.html" title="上品婴保暖套装低至49元/套" rel="external">
                	<img src="http://www.sjyang.org/upload/image/2011-07-01/423619839949813981.jpg" width="100%"/></a>
            </div>
                        <div class="item">
                <a href="wap.kissbb.com/coupons.php?act=coupons_selling" title="宝贝券使用专区" rel="external">
                	<img src="http://www.sjyang.org/upload/image/2011-07-01/430938189344294835.jpg" width="100%"/></a>
            </div>
                    </div>
        <div class="focus">
            <ul id="position"></ul>
        </div>
    </div>
</div>
<div class=" entry-list">
    <div class="entry">
        <a rel='external' href="user.php?act=order_list&amp;status=pay"><span>
        	<img src="${templetDir}/static2.kissbb.com/image/indexa/my_order.jpg" width="100%"/></span></a>
        <a rel='external' href="kuaigou.php"><span>
        	<img src="${templetDir}/static2.kissbb.com/image/indexa/temai.jpg" width="100%"/></span></a>
        <a rel='external' href="vip.html"><span>
        	<img src="${templetDir}/static2.kissbb.com/image/indexa/club.jpg" width="100%"/></span></a>
        <a rel='external' href="member.php?act=otoo_card"><span>
        	<img src="${templetDir}/static2.kissbb.com/image/indexa/O2Ocar.jpg" width="100%"/></span></a>
        <div class="clear"></div>
    </div>
</div>
<div id="picScroll" class="picScroll f_w">
    <div class="hd">
        <ul></ul>
        <p><span class="title_a">最新活动</span><!--<span class="f_14 ml15 white ">每天十点更新</span>--></p>
    </div>
    <div class="bd" id="skill_goods">
        <ul>
                        <li><a href="goods-6397.html" rel="external">
                <img src="" />
                <p class="seckill_name">润知酒店豪华套房</p>
                <p><span class="f_14 red fl">￥568</span><del class="gray f_12 pl10 fr">￥478</del></p>
                <p class="clear f_08em">剩100件<span class="percentage" >
                    <span class="percentage2" style="width: 0%;"></span></span></p>
                <span class="buy">立即抢购</span></a>
            </li>
                                    <li><a href="goods-6423.html" rel="external">
                <img src="${templetDir}/young/product/2.jpg" />
                <p class="seckill_name">保牛天域牧场提子奶宝</p>
                <p><span class="f_14 red fl">￥89</span><del class="gray f_12 pl10 fr">￥299</del></p>
                <p class="clear f_08em">剩100件<span class="percentage" >
                    <span class="percentage2" style="width: 0%;"></span></span></p>
                <span class="buy">立即抢购</span></a>
            </li>
                                    <li><a href="goods-5990.html" rel="external">
                <img src="${templetDir}/young/product/3.jpg" />
                <p class="seckill_name">上品婴 秋装 男童 长裤印花收脚长裤</p>
                <p><span class="f_14 red fl">￥99</span><del class="gray f_12 pl10 fr">￥269</del></p>
                <p class="clear f_08em">剩44件<span class="percentage" >
                    <span class="percentage2" style="width: 56%;"></span></span></p>
                <span class="buy">立即抢购</span></a>
            </li>
                        </ul><ul>
                                    <li><a href="goods-6652.html" rel="external">
                                    <img src="${templetDir}/young/product/__29748193__4217475.jpg" />
                <p class="seckill_name">上品婴 拼接长裤 童装男童长裤  秋装</p>
                <p><span class="f_14 red fl">￥109</span><del class="gray f_12 pl10 fr">￥365</del></p>
                <p class="clear f_08em">剩44件<span class="percentage" >
                    <span class="percentage2" style="width: 56%;"></span></span></p>
                <span class="buy">立即抢购</span></a>
            </li>
            <li><a href="goods-6130.html" rel="external">
                                    <img src="${templetDir}/young/product/__18956919__3618875.jpg" />
                <p class="seckill_name">上品婴 女童裤子  哈伦裤长裤秋装</p>
                <p><span class="f_14 red fl">￥99</span><del class="gray f_12 pl10 fr">￥269</del></p>
                <p class="clear f_08em">剩52件<span class="percentage" >
                    <span class="percentage2" style="width: 48%;"></span></span></p>
                <span class="buy">立即抢购</span></a>
            </li>
            <li><a href="goods-6130.html" rel="external">
			            <img src="${templetDir}/young/product/__18956919__3618875.jpg" />
			<p class="seckill_name">上品婴 女童裤子  哈伦裤长裤秋装</p>
			<p><span class="f_14 red fl">￥99</span><del class="gray f_12 pl10 fr">￥269</del></p>
			<p class="clear f_08em">剩52件<span class="percentage" >
			<span class="percentage2" style="width: 48%;"></span></span></p>
			<span class="buy">立即抢购</span></a>
			</li>
                                </ul>
    </div>
</div>
<script>
    TouchSlide({
        slideCell:"#picScroll",
        titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
        autoPage:true, //自动分页
        pnLoop:"false", // 前后按钮不循环
        switchLoad:"_src" //切换加载，真实图片路径为"_src"
    });
</script>
<div class="wrap1">
    <div class="clear title ">
        <p>杨氏文化</p>
    </div>
    <a href="http://lvyou.baidu.com/yangjiadayuan"><img src="${templetDir}/young/techan/neimeng.jpg" width="100%"/></a>
    <ul class="clearfix">
    	<li><a href="http://lvyou.baidu.com/yangjiadayuan"><img src="${templetDir}/young/dayuan/8b13632762d0f703a648550609fa513d2797c576.jpg" width="100%"/></a></li>
    	<li><a href="wap.kissbb.com/page-underwear2.html"><img src="${templetDir}/young/dayuan/91529822720e0cf39d0d8e210b46f21fbf09aa76.jpg" width="100%"/></a></li>
    
  </ul>
</div>
<div class="wrap2">
    <div class=" clear title ">
        <p>杨家大院</p>
    </div>
    <ul class="clearfix">
        <li><a href="http://lvyou.baidu.com/yangjiadayuan"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_1.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/page-underwear2.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_01.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/goods.php?id=2326"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_02.jpg" width="100%"/></a></li>
    </ul>
</div>
<div class="wrap2">
    <div class=" clear title ">
        <p>杨氏名人录</p>
    </div>
    <ul class="clearfix">
        <li><a href="wap.kissbb.com/list-299.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_2.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/goods-6112.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_03.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/goods-6371.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_04.jpg" width="100%"/></a></li>
    </ul>
</div>
<div class="wrap2">
    <div class=" clear title ">
        <p>明星企业</p>
    </div>
    <ul class="clearfix">
        <li><a href="wap.kissbb.com/list-62.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_3.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/page-towel.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_05.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/goods-329.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_06.jpg" width="100%"/></a></li>
    </ul>
</div>
<div class="wrap2">
    <div class=" clear title ">
        <p>宝贝用品</p>
    </div>
    <ul class="clearfix">
        <li><a href="wap.kissbb.com/list-102.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_4.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/goods-3193.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_07.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/selling.php?id=241"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_08.jpg?2014-09-18" width="100%"/></a></li>
    </ul>
</div>
<div class="wrap2">
    <div class=" clear title ">
        <p>宝贝食品</p>
    </div>
    <ul class="clearfix">
        <li><a href="wap.kissbb.com/list-64.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_5.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/selling.php?id=240"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_09.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/goods-6381.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_10.jpg" width="100%"/></a></li>
    </ul>
</div>
<div class="wrap2">
    <div class=" clear title ">
        <p>玩具早教</p>
    </div>
    <ul class="clearfix">
        <li><a href="wap.kissbb.com/list-170-0-148-0-0-0-0-0-0-1-0-0.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_6.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/selling.php?id=201"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_11.jpg" width="100%"/></a></li>
        <li><a href="wap.kissbb.com/list-308.html"><img src="${templetDir}/static2.kissbb.com/image/indexa/2014-11-18/wrap2_12.jpg" width="100%"/></a></li>
    </ul>
</div>
 <div style="width:100%; height:20px;"></div>
<div id="J_ItemList" class="srp j_autoResponsive_container m-ks-autoResponsive-container m-animation album" style="opacity:1;">
    <div class=" clear title " style="margin:0px;">
        <p>主题馆</p>
    </div>
            <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=242">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwOTE2dmN2dWh5LmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="今生宝贝 秋冬新款">今生宝贝 秋冬新款</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=241">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwOTEydHlma25tLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="优妮如意 健康环保餐具">优妮如意 健康环保餐具</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=240">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwOTEyY2l6ZHNmLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="雅因儿 宝宝辅食">雅因儿 宝宝辅食</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=239">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwOTEycnB2emR0LmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="黑妹 口腔护理">黑妹 口腔护理</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=237">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwOTExa2ZpZ3VsLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="纽如兰 孕妇护肤">纽如兰 孕妇护肤</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=236">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwOTEwaXFqanFvLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="上品婴 童装">上品婴 童装</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=235">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwOTEwYWp0ZHZrLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="美绽放 妈咪包">美绽放 妈咪包</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=233">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwOTA0ZmRkZnF1LmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="今生宝贝 孕妈保暖内衣">今生宝贝 孕妈保暖内衣</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=232">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwODI4anJ3dnl1LmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="上品婴 婴童保暖套装 低至49元/套">上品婴 婴童保暖套装 低至49元/套</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=229">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwODE5bGZ6emlpLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="KISSBB 洗发沐浴">KISSBB 洗发沐浴</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=228">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwOTAyZ2lyZ3h4LmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="铃兰 清洁用品">铃兰 清洁用品</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=226">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwODE5b2pocW1pLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="今生宝贝 孕妇内衣">今生宝贝 孕妇内衣</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=225">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwODE4aXl1d3FyLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="今生宝贝 孕装长裤">今生宝贝 孕装长裤</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=223">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwODE4bG9wbmxrLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="上品婴 婴儿浴巾 ">上品婴 婴儿浴巾 </span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=222">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwODE4cmVzZXFmLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="上品婴毛毯">上品婴毛毯</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=216">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwNzE3aW1obnpkLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="奕龙 玩具系列">奕龙 玩具系列</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=211">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwOTEwdXBtaXlzLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="婴姿坊 儿童洗护">婴姿坊 儿童洗护</span></div>
            </div>
        </div>
    </div>
                <div class="product">
        <div class="pro-inner2 b_radius_n">
            <div class="proImg-wrap2" id="direct_goods">
                <a rel="external" href="selling.php?id=210">
                    <img src="${templetDir}/thumb.kissbb.com/230_157_fwh_aHR0cDovL2RhdGEua2lzc2JiLmNvbS9hZmZpY2hlaW1nLzIwMTQwNzAxcHRzd2VwLmpwZw.jpg" class="b_radius_n"/>
                </a>
            </div>
            <div class="proInfo-wrap2" >
                <div class="proPrice3 pt10 pl10 f_12"><span class="f_w f_12" title="三婴 美体塑身衣">三婴 美体塑身衣</span></div>
            </div>
        </div>
    </div>
                                                                                                                                                                                                                                                                                </div>
