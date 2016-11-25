##  multi cms商城系统<未完成>

------------------------------------------------

> 

------------------------------------------------
## 系统简介

multi cms是一个开源电子商城系统，以B2C模式运营的在线商城。

系统分为前台和后台,前台主要功能包括用户管理[注册、登录、个人信息]、店铺管理、广告管理、分类管理、商品管理、购物车、我的订单、网上支付系统等，主要面向商户及客户，后台功能包括用户信息管理、店铺管理、商品管理、活动管理、分类管理、订单管理等。 

multi cms是在Spring Framework基础上搭建的一个J2EE基础开发平台，以Spring MVC为模型视图控制器，JPA为数据访问层，
Apache Shiro为权限授权层，Ehcahe对常用数据进行缓存，SLF4J 1+Log4j2为日志管理。

multi cms系統目前包含以下模块
 **后台系统** ，包括用户管理、角色管理、菜单管理、产品管理、店铺管理、分类管理、广告管理、订单管理等。
 **商城系统** ，包括用户登录/注册、商品游览、商品购买、账户管理、订单中心、个人中心等。
 
 **后台管理模块**
1.	管理员管理：用户管理、角色管理、菜单管理。
2.	会员管理：会员列表、等级管理（未搭建）、会员记录管理（未搭建）。
3.      产品管理：产品列表（搭建ing）、分类管理、问答管理（未搭建）。

 **商城系统**
1.	已完成：用户登录、商品游览、商品购买、账户管理。
2.	搭建中：商品交易、订单中心。


1、后端

* 核心框架：Spring Framework 4.1.7
* 安全框架：Apache Shiro 1.2.3
* 视图框架：Spring MVC 4.1.7
* 布局框架：tiles 3.0
* 任务调度：Spring + Quartz 2.2.3
* 持久层框架：JPA 
* 数据库连接池：Alibaba Druid 1.0
* 缓存框架：Ehcache 2.6
* 日志管理：SLF4J 1.7、Log4j2 2.7
* 工具类：Apache Commons、Jackson 2.2
* 图片验证码：kaptcha 0.9
2、后端

* JS框架：jquery
* 表格插件：Bootstrap Table
* 表单验证插件：bootstrapValidator
* 日期选择插件：Datepicker for Bootstrap
##开发环境说明
1、JDK1.7+、
2、eclipse-luna
3、Maven3.0+、
4、MySql5+
> 快速开发
1，git clone 下载源代码
	http://git.oschina.net/jaker/wsalix.common
	http://git.oschina.net/jaker/multi.shop.service
	http://git.oschina.net/jaker/multi.shop.cms
2，修改数据库配置文件中数据库连接信息
	\multi.shop.cms\src\main\resources\spring\data-context.xml
3，启动
	CMD启动：mvn jetty:run
	eclispe:Run jetty
4,访问
	http://localhost:8080/multi/admin/
	http://localhost:8080/multi/site/login.do
5,默认账号	admin、1234
```


## 联系方式
	QQ：304846928  Email：<jskyme@163.com> 微信：anlaser 
其他：

## 演示界面
待添加