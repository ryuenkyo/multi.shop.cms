package cn.wsalix.site.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.admin.BaseUser;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.config.AppConfig;
import cn.wsalix.exception.UserException;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.order.entity.Order;
import cn.wsalix.order.form.OrderForm;
import cn.wsalix.order.service.OrderService;
import cn.wsalix.shop.entity.Shop;
import cn.wsalix.shop.service.ProductService;
import cn.wsalix.shop.service.ShopService;
import cn.wsalix.user.service.UserCenterService;
import cn.wsalix.user.service.UserInfoService;
import cn.wsalix.utils.UserUtils;

@Controller
@RequestMapping(value = "/site/order")
public class SiteOrderAction {
	@Autowired
	private OrderService orderService;

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

	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public ModelAndView listOrder(OrderForm form, Model model) {
		BaseUser user = userUtils.getInUser();
		if (form.getShopId() != null) {
			Shop shop = shopService.findById(form.getShopId());
			model.addAttribute("shop", shop);
		} 
		form.setCreatedBy(user.getId());
		model.addAttribute("orders", orderService.findByForm(form));
		return new ModelAndView("/site/order/list");
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
	public ModelAndView shopToEdit(OrderForm form, Model model) {
		if (form.getId() != null) {
			Order order = orderService.findById(form.getId());
			model.addAttribute("order", order);
		}
		return new ModelAndView("/site/order/edit");
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.POST)
	public ModelAndView shopSave(OrderForm form, Model model) {
		Order order = orderService.edit(form);
		model.addAttribute("order", order);
		return new ModelAndView("/site/order/edit");
	}

}
