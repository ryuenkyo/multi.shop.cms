package cn.wsalix.site.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.admin.BaseUser;
import cn.anlaser.status.FlagEnum;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.biz.entity.Category;
import cn.wsalix.biz.form.CategoryForm;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.biz.type.CatTypeEnum;
import cn.wsalix.config.AppConfig;
import cn.wsalix.constant.Global;
import cn.wsalix.shop.entity.Shop;
import cn.wsalix.shop.service.ProductService;
import cn.wsalix.shop.service.ShopService;
import cn.wsalix.utils.UserUtils;

@Controller
@RequestMapping(value = "/site/cat")
public class SiteCatAction {
	private static final Logger logger = LoggerFactory
			.getLogger(SiteCatAction.class);
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
	protected UserUtils userUtils;

	@Value("${dict.ad_banner}")
	private String adBanner;// 首页广告

	@Value("${cat.product}")
	private String productCat;// 产品分类

	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public ModelAndView list(CategoryForm form, Model model) {
		if (form.getShopId() != null) {
			Shop shop = shopService.findById(form.getShopId());
			model.addAttribute("shop", shop);
			model.addAttribute("cats",
					shopService.findByCats(shop));
		} else {
			BaseUser user = userUtils.getInUser();
			form.setCreatedBy(user.getId());
			form.setFlag(FlagEnum.valid);
			model.addAttribute("cats", categoryService.findByForm(form));
		}
		return new ModelAndView("/site/cat/list");
	}

	@RequestMapping(value = { "/choice" }, method = RequestMethod.GET)
	public ModelAndView choice(CategoryForm form, Model model) {
		Shop shop = shopService.findById(form.getShopId());
		model.addAttribute("shop", shop);

		BaseUser user = userUtils.getInUser();
		/*
		 * form.setCreatedBy(user.getId()); form.setFlag(DataEnum.valid);
		 */
		model.addAttribute("cats",
				categoryService.findByUnShopId(form.getShopId(), user.getId()));

		return new ModelAndView("/site/choice/cat");
	}

	@RequestMapping(value = { "/shop_add_cat" }, method = RequestMethod.GET)
	public ModelAndView shopAddCat(CategoryForm form, Model model) {
		Category obj = categoryService.findById(form.getId());
		shopService.addCat(form.getShopId(), obj);
		return new ModelAndView("redirect:/site/cat/choice" + Global.urlSuffix
				+ "?shopId=" + form.getShopId());
	}

	@RequestMapping(value = { "/shop_del_cat" }, method = RequestMethod.GET)
	public ModelAndView shopDelCat(CategoryForm form, Model model) {
		shopService.delCat(form.getShopId(), form.getId());
		return new ModelAndView("redirect:/site/cat/list" + Global.urlSuffix
				+ "?shopId=" + form.getShopId());
	}

	@RequestMapping(value = { "/add" }, method = RequestMethod.GET)
	public ModelAndView catToAdd(CategoryForm form, Model model) {
		Category category = null;
		if (form.getShopId() != null) {
			category = categoryService.getNew(form.getShopId(),
					CatTypeEnum.shop);
			return new ModelAndView("redirect:/site/cat/edit"
					+ Global.urlSuffix + "?id=" + category.getId() + "&shopId="
					+ form.getShopId());
		} else {
			category = categoryService.getNew();
		}
		return new ModelAndView("redirect:/site/cat/edit" + Global.urlSuffix
				+ "?id=" + category.getId());
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
	public ModelAndView catToEdit(CategoryForm form, Model model) {
		Category category = categoryService.findById(form.getId());
		model.addAttribute("category", category);

		if (form.getShopId() != null) {
			Shop shop = shopService.findById(form.getShopId());
			model.addAttribute("shop", shop);
		}
		if (category.getFlag().ordinal() == FlagEnum.create.ordinal()) {
			category.setFlag(FlagEnum.valid);
			categoryService.edit(category);
		}
		return new ModelAndView("/site/cat/edit");
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.POST)
	public ModelAndView catAdd(CategoryForm form, Model model) {
		logger.info("CategoryForm[name]:" + form.getName());
		categoryService.edit(form);
		if (form.getShopId() != null) {
			return new ModelAndView("redirect:/site/cat/list"
					+ Global.urlSuffix + "?shopId=" + form.getShopId());
		}
		return new ModelAndView("redirect:/site/cat/list" + Global.urlSuffix);
	}

	@RequestMapping(value = { "/del" }, method = RequestMethod.GET)
	public ModelAndView catDel(CategoryForm form, Model model) {
		categoryService.delete(form.getId());
		if (form.getShopId() != null) {
			return new ModelAndView("redirect:/site/cat/list"
					+ Global.urlSuffix + "&shopId=" + form.getShopId());
		}
		return new ModelAndView("redirect:/site/cat/list" + Global.urlSuffix);
	}

}
