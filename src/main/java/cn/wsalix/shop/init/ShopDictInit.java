package cn.wsalix.shop.init;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.wsalix.admin.service.DictService;
import cn.wsalix.init.DictInit;

@Service("shopDictInit")
public class ShopDictInit implements DictInit {
@Autowired
	private DictService dictService;

	@Transactional
	public void init(boolean create) {
		
	}

}
