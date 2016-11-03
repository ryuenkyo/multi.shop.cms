mvn clean package -P production -Dmaven.test.skip=true
mvn clean package -Dmaven.test.skip=true
mvn clean install -Dmaven.test.skip=true
点菜
	1，桌号
	2，排队
	
用户可一直登录
	自动点菜：
		1，用户扫描二维码，确定桌号，并点菜
	手动排桌
		1，店员指定桌号
		2，店员点菜