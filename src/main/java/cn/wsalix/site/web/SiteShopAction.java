package cn.wsalix.site.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.admin.BaseUser;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.biz.entity.Category;
import cn.wsalix.biz.service.AdvertiseService;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.config.AppConfig;
import cn.wsalix.constant.Global;
import cn.wsalix.exception.UserException;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.shop.entity.Product;
import cn.wsalix.shop.entity.Shop;
import cn.wsalix.shop.form.ShopForm;
import cn.wsalix.shop.service.ProductService;
import cn.wsalix.shop.service.ShopService;
import cn.wsalix.shop.status.ShopEnum;
import cn.wsalix.user.service.UserCenterService;
import cn.wsalix.user.service.UserInfoService;
import cn.wsalix.utils.UserUtils;

@Controller
@RequestMapping(value = "/site/shop")
public class SiteShopAction {
	@Autowired
	private AdvertiseService advertiseService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ProductService productService;

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

	@RequestMapping(value = { "index", "/", "" }, method = RequestMethod.GET)
	public ModelAndView index(ShopForm form, Model model) {
		model.addAttribute("ads", advertiseService.findByShopId(form.getId()));
		Shop shop = shopService.findById(form.getId());
		if (shop == null || shop.getStatus() == null
				|| shop.getStatus().ordinal() == ShopEnum.delete.ordinal()
				|| shop.getStatus().ordinal() == ShopEnum.close.ordinal()) {
			// 店铺删除或关闭
			return new ModelAndView("/site/index");
		}
		model.addAttribute("shop", shop);
		List<Category> catLst = categoryService.findByShopId(form.getId());
		if (catLst != null && !catLst.isEmpty()) {
			model.addAttribute("cat", catLst.get(0));
		}
		model.addAttribute("cats", catLst);
		// 分类商品

		return new ModelAndView("/site/index");
	}

	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public ModelAndView listShop(ShopForm form, Model model) {
		if (form.getId() != null) {
			Shop shop = shopService.findById(form.getId());
			model.addAttribute("shop", shop);
		} else {
			BaseUser user = userUtils.getInUser();
			form.setCreatedBy(user.getId());
			model.addAttribute("shops", shopService.findByForm(form));
		}
		return new ModelAndView("/site/shop/list");
	}

	@RequestMapping(value = { "/add" }, method = RequestMethod.GET)
	public ModelAndView addShop(Model model) {
		Shop shop = shopService.createShop();
		return new ModelAndView("redirect:/site/shop/edit" + Global.urlSuffix
				+ "?id=" + shop.getId());
	}

	@RequestMapping(value = { "/product_list" }, method = RequestMethod.GET)
	public ModelAndView toAddProduct(ShopForm form, Model model) {
		if (form.getId() != null) {
			Shop shop = shopService.findById(form.getId());
			model.addAttribute("shop", shop);
			model.addAttribute("products",
					productService.findByShopId(form.getId()));
		}
		return new ModelAndView("/site/shop/product_list");
	}

	@RequestMapping(value = { "/product_add" }, method = RequestMethod.GET)
	public @ResponseBody String addProduct(ShopForm form, Model model) {
		Product product = productService.findById(form.getProductId());
		shopService.addProduct(form.getId(), product);
		return "";
	}

	@RequestMapping(value = { "/product_del" }, method = RequestMethod.GET)
	public @ResponseBody String delProduct(ShopForm form, Model model) {
		shopService.delProduct(form.getId(), form.getProductId());
		return "";
	}

	@RequestMapping(value = { "/del_cat" }, method = RequestMethod.GET)
	public @ResponseBody String delCat(ShopForm form, Model model) {
		shopService.delCat(form.getId(), form.getCatId());
		return "ok";
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
	public ModelAndView shopToEdit(ShopForm form, Model model) {
		if (form.getId() != null) {
			Shop shop = shopService.findById(form.getId());
			model.addAttribute("shop", shop);
		}
		return new ModelAndView("/site/shop/edit");
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.POST)
	public ModelAndView shopEdit(ShopForm form, Model model) {
		shopService.edit(form);
		return new ModelAndView("redirect:/site/shop/list" + Global.urlSuffix);
	}

	@RequestMapping(value = { "/show" }, method = RequestMethod.GET)
	public ModelAndView shopShow(ShopForm form, Model model) {
		if (form.getId() != null) {
			Shop shop = shopService.findById(form.getId());
			model.addAttribute("shop", shop);
		}
		return new ModelAndView("/site/shop/show");
	}

	@RequestMapping(value = { "/pub" }, method = RequestMethod.GET)
	// public @ResponseBody String shopReady(ShopForm form, Model model) {
	public ModelAndView shopReady(ShopForm form, Model model) {
		if (form.getId() != null) {
			shopService.shopReady(form.getId());
		}
		return new ModelAndView("redirect:/site/shop/list" + Global.urlSuffix);
	}

	@RequestMapping(value = { "/pass" }, method = RequestMethod.GET)
	public ModelAndView shopPass(ShopForm form, Model model) {
		if (form.getId() != null) {
			shopService.pass(form.getId());
		}
		return new ModelAndView("redirect:/site/shop/list" + Global.urlSuffix);
	}

	@RequestMapping(value = { "/un_pass" }, method = RequestMethod.GET)
	public ModelAndView shopUnPass(ShopForm form, Model model) {
		if (form.getId() != null) {
			shopService.unPass(form.getId());
		}
		return new ModelAndView("redirect:/site/shop/list" + Global.urlSuffix);
	}

}
