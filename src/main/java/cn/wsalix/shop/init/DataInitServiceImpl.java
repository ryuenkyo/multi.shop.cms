package cn.wsalix.shop.init;

import java.util.Date;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.wsalix.admin.entity.AuthData;
import cn.wsalix.admin.entity.SysDict;
import cn.wsalix.admin.repository.DictRepository;
import cn.wsalix.admin.repository.AuthDataRepository;
import cn.wsalix.admin.service.DataInitService;
import cn.wsalix.admin.status.DictEnum;
import cn.wsalix.biz.entity.Category;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.config.AppConfig;
import cn.wsalix.constant.DataDefine;
import cn.wsalix.spring.SpringUtils;
import cn.wsalix.status.CatEnum;
import cn.wsalix.templet.service.SiteInfoService;

@Service("dataInitService")
public class DataInitServiceImpl implements DataInitService {

	/*
	 * @Value("${admin.account}") private String adminAccount;
	 * 
	 * @Value("${admin.account.password}") private String adminAccountPassword;
	 */

	@Autowired
	private ShopUserInit shopUserInit;
	@Autowired
	private ShopDictInit shopDictInit;
	@Autowired
	private DictRepository dictRepository;
	@Autowired
	private AuthDataRepository AuthDataRepository;

	/*
	 * @Autowired private RegisterService registerService;
	 */
	@Autowired
	private SpringUtils springUtils;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SiteInfoService siteInfoService;

	@Transactional
	@Override
	public boolean adminCheck() {
		/*
		 * List<SysUser> users = userRepository.findByUsername(adminAccount); if
		 * (users == null || users.isEmpty() || users.size() == 0) {
		 * adminInit(); return true; }
		 */
		return false;
	}

	@Transactional
	@Override
	public boolean adminInit(boolean create) {
		shopUserInit.init(create);
		return true;

	}

	@Transactional
	@Override
	public boolean roleInit(boolean create) {
		// admin/support/trade/client
		String[] role = { "admin", "support", "trade", "client" };
		for (String code : role) {
			AuthData AuthData = new AuthData();
			AuthData.setCode(code);
			AuthData.setCreatedDate(new Date());// DateTime.now());
			AuthData.setCreatedBy(0l);
			AuthDataRepository.save(AuthData);
		}
		/*Map<String, Object> annotationBeans = springUtils
				.getBeansWithAnnotation(AuthDatas.class);
		for (Object bean : annotationBeans.values()) {
			AuthDatas anno = bean.getClass().getAnnotation(
					AuthDatas.class);
			if (anno == null) {
				return false;
			}
			for (String code : anno.value()) {
				AuthData AuthData = new AuthData();
				AuthData.setCode(code);
				AuthData.setCreatedDate(new Date());// DateTime.now());
				AuthData.setCreatedBy(0l);
				AuthDataRepository.save(AuthData);
			}

		}*/
		return false;
	}

	@Value("${permit.group}")
	private String permitGroup;

/*	@Transactional
	@Override
	public boolean permitInit(boolean create) {
		String[] permits = permitGroup.split("\\,");
		List<AuthData> AuthDatas = AuthDataRepository.findAll();
		for (AuthData AuthData : AuthDatas) {
			for (String code : permits) {
				RequiresPermit obj = new RequiresPermit();
				obj.setCode(AuthData.getCode() + ":" + code);
				obj.setCreatedDate(new Date());// DateTime.now());
				obj.setCreatedBy(0l);
				requiresPermitRepository.save(obj);
			}
		}
		return false;
	}
*/
	/*
	 * @Value("${dict.count}") private int dictCount;
	 * 
	 * @Value("${dict.ad_cat}") private String adCat;
	 * 
	 * @Value("${dict.ad_banner}") private String adBanner;
	 */

	@Override
	public boolean dictInit(boolean create) {
		shopDictInit.init(create);
		// if (adCat != null && adCat.equals("")) {
		// String[] adCatObj = adCat.split("\\,");
		SysDict parent = insertDict(AppConfig.sysPara.getCode(),
				AppConfig.sysPara.getName(), null);
		// String[] adBannerObj = adBanner.split("\\,");
		// insertDict(adBannerObj[0], adBannerObj[1], null);
		// }
		return true;
	}

	@Transactional
	private SysDict insertDict(String code, String name, SysDict parent) {
		SysDict obj = new SysDict();
		obj.setCode(code);
		obj.setName(name);
		obj.setStatus(DictEnum.invocation);
		obj.setCreatedDate(new Date());// DateTime.now());
		obj.setCreatedBy(0l);
		if (parent != null) {
			obj.setParent(parent);
		}
		return dictRepository.save(obj);
	}

	/*
	 * @Value("${cat.article}") private String articleCat;
	 * 
	 * @Value("${cat.article.ad}") private String articleAd;
	 * 
	 * @Value("${cat.product}") private String productCat;
	 */

	@Transactional
	@Override
	public boolean catInit() {
		// String[] articleCatObj = articleCat.split("\\,");
		Category parent = insertCat(AppConfig.adCat, null);
		parent = categoryService.findById(parent.getId());
		insertCat(AppConfig.adBanner, parent);

		// String[] articleAdObj = articleAd.split("\\,");
		parent = insertCat(AppConfig.articleCat, null);
		parent = categoryService.findById(parent.getId());
		insertCat(AppConfig.articleAd, parent);

		insertCat(AppConfig.productCat, null);
		return false;
	}

	private void insertProduct(String catLine) {
		String[] subObj = catLine.split("\\,");
		// Category parent = insertCat(subObj[0], subObj[1], null);
	}

	@Transactional
	private Category insertCat(DataDefine dd, Category parent) {
		Category obj = new Category();
		obj.setCode(dd.getCode());
		obj.setName(dd.getName());
		obj.setStatus(CatEnum.release);
		obj.setCreatedDate(new Date());// DateTime.now());
		obj.setCreatedBy(0l);
		if (parent != null) {
			obj.setParent(parent);
		}
		return categoryService.add(obj);
	}


	@Override
	public boolean menuInit(boolean create) {
		// TODO Auto-generated method stub
		return false;
	}
}
