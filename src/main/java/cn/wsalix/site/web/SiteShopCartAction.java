package cn.wsalix.site.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.admin.BaseUser;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.constant.Global;
import cn.wsalix.shop.form.ShopForm;
import cn.wsalix.user.entity.ShopCart;
import cn.wsalix.user.form.ShopCartForm;
import cn.wsalix.user.service.ShopCartService;
import cn.wsalix.utils.UserUtils;

@Controller
@RequestMapping(value = "/site/shop_cart")
public class SiteShopCartAction {

	@Autowired
	private UserService userService;
	@Autowired
	protected UserUtils userUtils;
	@Autowired
	private ShopCartService shopCartService;

	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public ModelAndView listShop(ShopCartForm form, Model model) {
		BaseUser user = userUtils.getInUser();
		form.setCreatedBy(user.getId());
		model.addAttribute("shopCats", shopCartService.findByForm(form));
		return new ModelAndView("/site/shop_cart/list");
	}

	@RequestMapping(value = { "/add" }, method = RequestMethod.GET)
	public @ResponseBody String addShop(ShopCartForm form, Model model) {
		ShopCart shopCart = shopCartService.add(form);
		return "";
	}

	@RequestMapping(value = { "/increment" }, method = RequestMethod.GET)
	public @ResponseBody String increment(ShopCartForm form, Model model) {
		BaseUser user = userUtils.getInUser();
		form.setCreatedBy(user.getId());
		List<ShopCart> shopCarts = shopCartService.findByForm(form);
		ShopCart shopCart=null;
		if(shopCarts.isEmpty()){
			shopCart=shopCartService.getNew(form);
		}else if(shopCarts.size()==1){
			shopCart=shopCarts.get(0);
		}else{//error 同一商品，购物车只能存在一份
			
		}
		shopCart=shopCartService.increment(shopCart);
		return shopCart.toString();
	}

	@RequestMapping(value = { "/decrease" }, method = RequestMethod.GET)
	public @ResponseBody String decrease(ShopCartForm form, Model model) {
		BaseUser user = userUtils.getInUser();
		form.setCreatedBy(user.getId());
		List<ShopCart> shopCarts = shopCartService.findByForm(form);
		ShopCart shopCart=null;
		if(shopCarts.isEmpty()){
			shopCart=shopCartService.getNew(form);
		}else if(shopCarts.size()==1){
			shopCart=shopCarts.get(0);
			
		}else{//error 同一商品，购物车只能存在一份
			
		}
		shopCart=shopCartService.decrease(shopCart);
		return shopCart.toString();
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
	public ModelAndView shopToEdit(ShopCartForm form, Model model) {// 感觉不需要的
		if (form.getId() != null) {
			ShopCart obj = shopCartService.findById(form.getId());
			model.addAttribute("shopCart", obj);
		}
		return new ModelAndView("/site/shop/edit");
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.POST)
	public ModelAndView shopSave(ShopCartForm form, Model model) {
		shopCartService.edit(form);
		return new ModelAndView("redirect:/site/shop_cart/list"
				+ Global.urlSuffix);
	}

	@RequestMapping(value = { "/del" }, method = RequestMethod.GET)
	public ModelAndView del(ShopForm form, Model model) {
		if (form.getId() != null) {
			shopCartService.delete(form.getId());
		}
		return new ModelAndView("redirect:/site/shop_cart/list"
				+ Global.urlSuffix);
	}

}
