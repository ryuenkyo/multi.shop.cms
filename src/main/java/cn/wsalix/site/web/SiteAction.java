package cn.wsalix.site.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.admin.BaseUser;
import cn.anlaser.exception.NutException;
import cn.anlaser.status.DataEnum;
import cn.wsalix.admin.form.UserForm;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.biz.entity.Category;
import cn.wsalix.biz.form.CategoryForm;
import cn.wsalix.biz.service.AdvertiseService;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.config.AppConfig;
import cn.wsalix.config.SysConfig;
import cn.wsalix.constant.Global;
import cn.wsalix.exception.UserException;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.shiro.filter.IdFormAuthenticationFilter;
import cn.wsalix.shop.entity.Product;
import cn.wsalix.shop.entity.Shop;
import cn.wsalix.shop.form.ProductForm;
import cn.wsalix.shop.form.ShopForm;
import cn.wsalix.shop.init.ShopRoleInit;
import cn.wsalix.shop.service.ProductService;
import cn.wsalix.shop.service.ShopService;
import cn.wsalix.shop.type.ProductTypeEnum;
import cn.wsalix.sys.service.VerifyCodeService;
import cn.wsalix.user.entity.UserInfo;
import cn.wsalix.user.form.UserInfoForm;
import cn.wsalix.user.service.UserCenterService;
import cn.wsalix.user.service.UserInfoService;
import cn.wsalix.utils.UserUtils;
import cn.wsalix.weixin.service.WxConfigService;
import cn.wsalix.weixin.service.WxService;

@Controller
@RequestMapping(value = "/site")
public class SiteAction {
	private static final Logger logger = LoggerFactory
			.getLogger(SiteAction.class);
	@Autowired
	private AdvertiseService advertiseService;
	@Autowired
	protected VerifyCodeService verifyCodeService;
	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ProductService productService;

	@Autowired
	private WxConfigService wxConfigService;
	@Autowired
	private SysConfig sysConfig;
	@Autowired
	private WxService wxService;
	@Autowired
	private AppConfig appConfig;
	@Autowired
	private UserService userService;

	@Autowired
	private ShopService shopService;
	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private UserCenterService userCenterService;
	@Autowired
	protected UserUtils userUtils;
	@Autowired
	private RegisterService userRegisterService;
	@Autowired
	protected UserException userException;

	@Value("${dict.ad_banner}")
	private String adBanner;// 首页广告

	@Value("${cat.product}")
	private String productCat;// 产品分类

	@RequestMapping(value = { "/main" }, method = RequestMethod.GET)
	public ModelAndView main(UserForm form, Model model) {
		// 分类商品

		return new ModelAndView("/site/main");
	}

	@RequestMapping(value = { "index", "/", "" }, method = RequestMethod.GET)
	public ModelAndView index(UserForm form, Model model) {
		if (form.getShopId() == null) {
			return new ModelAndView("redirect:/site/main" + Global.urlSuffix);
		}
		model.addAttribute("ads",
				advertiseService.findByShopId(form.getShopId()));
		Shop shop = shopService.findById(form.getShopId());
		model.addAttribute("shop", shop);
		List<Category> catLst = categoryService.findByShopId(form.getShopId());
		if (catLst != null && !catLst.isEmpty()) {
			model.addAttribute("cat", catLst.get(0));
		}
		model.addAttribute("cats", catLst);
		Map<Long, List<Product>> proMap = new HashMap<Long, List<Product>>();
		// 分类商品
		for (Category cat : catLst) {
			proMap.put(cat.getId(), productService.findByTypeAndFkidAndCat(
					ProductTypeEnum.shop, form.getShopId(), cat.getId()));
		}
		model.addAttribute("proMap", proMap);
		return new ModelAndView("/site/index");
	}

	@RequestMapping(value = { "index", "/", "" }, method = RequestMethod.POST)
	public ModelAndView indexPost(UserForm form, Model model) {
		if (form.getShopId() != null) {
		}
		model.addAttribute("ads",
				advertiseService.findByShopId(form.getShopId()));
		Shop shop = shopService.findById(form.getShopId());
		model.addAttribute("shop", shop);
		List<Category> catLst = categoryService.findByShopId(form.getShopId());
		if (catLst != null && !catLst.isEmpty()) {
			model.addAttribute("cat", catLst.get(0));
		}
		model.addAttribute("cats", catLst);
		// 分类商品

		return new ModelAndView("/site/index");
	}

	/**
	 * @param model
	 * @return 首页静态文件
	 */
	@RequestMapping(value = { "/shop_list" }, method = RequestMethod.GET)
	public ModelAndView shopList(ShopForm form, Model model) {
		List<Shop> shops = shopService.findByForm(form);
		model.addAttribute("shops", shops);
		return new ModelAndView("/site/shop_list");

	}

	@RequestMapping(value = { "/product" }, method = RequestMethod.GET)
	public ModelAndView product(ProductForm form, Model model) {		
		if (form.getShopId() != null) {
			Shop shop = shopService.findById(form.getShopId());
			model.addAttribute("shop", shop);
			model.addAttribute("products",
					productService.findByShopId(form.getShopId()));
		} else {
			BaseUser user = userUtils.getInUser();
			form.setCreatedBy(user.getId());
			form.setFlag(DataEnum.valid);
			model.addAttribute("products", productService.findByForm(form));
		}
		return new ModelAndView("/site/index/product");
	}

	@RequestMapping(value = { "/cat" }, method = RequestMethod.GET)
	public ModelAndView cat(CategoryForm form, Model model) {
		if (form.getShopId() != null) {
			Shop shop = shopService.findById(form.getShopId());
			model.addAttribute("shop", shop);
			model.addAttribute("cats",
					categoryService.findByShopId(form.getShopId()));
		} else {
			BaseUser user = userUtils.getInUser();
			form.setCreatedBy(user.getId());
			form.setFlag(DataEnum.valid);
			model.addAttribute("cats", categoryService.findByForm(form));
		}
		return new ModelAndView("/site/index/cat");
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public ModelAndView login(UserForm form, Model model) {
		model.addAttribute("form", form);
		return new ModelAndView("/site/login");
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView Login(HttpServletRequest request) throws IOException {
		logger.info("redirect:/site/user/index.do");
		// return new ModelAndView("redirect:/site/user/index" +
		// Global.urlSuffix);
		return new ModelAndView("/site/user/index");
	}

	/**
	 * @param model
	 * @return 用户输入邀请码
	 */
	@RequestMapping(value = { "/invite" }, method = RequestMethod.GET)
	public ModelAndView invite(Model model) {
		return new ModelAndView("/site/invite");
	}

	/**
	 * @param model
	 * @return 注册方式选择 1，手机注册，输入手机号和密码，其他注册方式直接登录，不需要密码 2，微信注册 3，支付宝账号注册 4，新浪账号注册
	 *         5，qq账号注册 注：输入邀请码后，才可选择注册方式
	 */
	@RequestMapping(value = { "/reg_mode" }, method = RequestMethod.GET)
	public ModelAndView regMode(Model model) {

		return new ModelAndView("/site/reg_mode");
	}

	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
	public ModelAndView register(Model model) {
		return new ModelAndView("/site/register");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerPost(@Valid UserForm userForm,
			BindingResult result, RedirectAttributes ra, Model model) {
		if (result.hasErrors()) {
			ra.addFlashAttribute("form", userForm);
			for (FieldError fieldError : result.getFieldErrors()) {
				ra.addFlashAttribute(
						"org.springframework.validation.BindingResult.result",
						result);
				if (fieldError.getField().equals("username")) {
					return new ModelAndView("redirect:/site/register"
							+ Global.urlSuffix);
				}
				if (fieldError.getField().equals("password")) {
					return new ModelAndView("redirect:/site/register"
							+ Global.urlSuffix);
				}
			}
		}
		/*if (verifyCodeService.checkCode(userForm)) {
			userForm.setCreate(true);
			userRegisterService.register(userForm);
		}
		Subject subject = SecurityUtils.getSubject();
		CaptchaToken token = new CaptchaToken();
		token.setUsername(userForm.getUsername());
		token.setPassword(userForm.getPassword().toCharArray());
		token.setRememberMe(true);
		subject.login(token);*/
		try {
			userForm.setRoleId(ShopRoleInit.clientRole.getId());
			userRegisterService.register(userForm);
		} catch (NutException e) {
			result.rejectValue("msg", e.getMessage());
			ra.addFlashAttribute(
					"org.springframework.validation.BindingResult.result",
					result);
			return new ModelAndView("redirect:/site/register"
					+ Global.urlSuffix);
		}
		
		return new ModelAndView("/site/user/index");
	}

	/**
	 * @param form
	 * @param model
	 * @return
	 * @see IdFormAuthenticationFilter.onLoginSuccess
	 */
	@RequestMapping(value = { "/profile" }, method = RequestMethod.GET)
	public ModelAndView profile(Model model) {
		// BaseUser baseUser = userUtils.getInUser();
		// SysUser user = userService.findById(baseUser.getId());
		// model.addAttribute("user", user);
		// model.addAttribute("userInfo", userInfoService.findByUser(user));
		// model.addAttribute("userCenter", userCenterService.findByUser(user));
		return new ModelAndView("/site/profile");
	}

	@RequestMapping(value = { "/profile" }, method = RequestMethod.POST)
	public ModelAndView profileSave(UserInfoForm form, Model model) {
		UserInfo userinfo = userInfoService.edit(form);
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		session.removeAttribute("currInfo");
		session.setAttribute("currInfo", userinfo);
		return new ModelAndView("/site/profile");
	}

	@RequestMapping(value = { "/{shopId}/login" }, method = RequestMethod.GET)
	public ModelAndView siteLogin(@PathVariable("shopId") String shopId,
			Model model) {
		return new ModelAndView("redirect:/site/login" + Global.urlSuffix
				+ "?shopId=" + shopId);
	}

	@RequestMapping(value = { "/subs_by_cat" }, method = RequestMethod.GET)
	public ModelAndView goodsByCat(@Valid ProductForm form,
			BindingResult result, Model model) {
		List<Product> subsCat = productService.findsByCatId(form.getCatId());

		model.addAttribute("subsCat", subsCat);
		return new ModelAndView("/site/product/subs");
	}

	@RequestMapping(value = { "/getsubs_cat" }, method = RequestMethod.GET)
	public ModelAndView getSubsCat(@Valid CategoryForm form,
			BindingResult result, Model model) {
		List<Category> subsCat = categoryService.findByParent(form);
		if (subsCat != null && !subsCat.isEmpty()) {
			model.addAttribute("selectCat", subsCat.get(0));
		}
		model.addAttribute("subsCat", subsCat);
		return new ModelAndView("/cat/select_sub_cat");
	}
}
