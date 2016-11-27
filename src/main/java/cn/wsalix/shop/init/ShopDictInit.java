package cn.wsalix.shop.init;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.wsalix.admin.entity.SysDict;
import cn.wsalix.admin.init.DictInit;
import cn.wsalix.admin.service.DictService;

@Service("shopDictInit")
public class ShopDictInit implements DictInit {
	public static SysDict parentApplyParent = new SysDict("apply", "申请");
	public static SysDict applyOpenShop = new SysDict("apply", "申请开店");

	public static SysDict systemPara = new SysDict("system_para", "系统参数");

	@Autowired
	private DictService dictService;

	@Transactional
	public void init(boolean create) {
		if (create) {
			parentApplyParent = dictService.add(parentApplyParent);
			applyOpenShop.setParent(parentApplyParent);
			applyOpenShop = dictService.add(applyOpenShop);
			
			systemPara = dictService.add(systemPara);
		} else {
			parentApplyParent = dictService.findByCodeOne(parentApplyParent
					.getCode());
			applyOpenShop = dictService.findByCodeOne(applyOpenShop.getCode());
			
			systemPara = dictService.findByCodeOne(systemPara.getCode());
		}
	}

}
