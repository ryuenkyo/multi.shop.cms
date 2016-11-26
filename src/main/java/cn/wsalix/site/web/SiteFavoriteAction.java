package cn.wsalix.site.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.admin.BaseUser;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.config.AppConfig;
import cn.wsalix.constant.Global;
import cn.wsalix.shop.form.ShopForm;
import cn.wsalix.shop.service.ShopService;
import cn.wsalix.user.entity.Favorite;
import cn.wsalix.user.form.FavoriteForm;
import cn.wsalix.user.service.FavoriteService;
import cn.wsalix.utils.UserUtils;

@Controller
@RequestMapping(value = "/site/favorit")
public class SiteFavoriteAction {
	@Autowired
	private FavoriteService favoriteService;

	@Autowired
	private AppConfig appConfig;
	@Autowired
	private UserService userService;

	@Autowired
	private ShopService shopService;
	@Autowired
	protected UserUtils userUtils;

	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public ModelAndView listShop(FavoriteForm form, Model model) {
		BaseUser user = userUtils.getInUser();
		form.setCreatedBy(user.getId());
		model.addAttribute("favorites", favoriteService.findByForm(form));
		return new ModelAndView("/site/shop/list");
	}

	@RequestMapping(value = { "/add" }, method = RequestMethod.GET)
	public @ResponseBody String addShop(FavoriteForm form,Model model) {// 不需要
		Favorite favorite = favoriteService.add(form);
		return "ok";
	}

	@RequestMapping(value = { "/del" }, method = RequestMethod.POST)
	public ModelAndView del(ShopForm form, Model model) {
		if (form.getId() != null) {
			favoriteService.delete(form.getId());
		}
		return new ModelAndView("redirect:/site/favorit/list" + Global.urlSuffix);
	}
}
