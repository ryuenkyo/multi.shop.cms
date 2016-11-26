package cn.wsalix.site.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.admin.BaseUser;
import cn.anlaser.status.DataEnum;
import cn.wsalix.biz.entity.Advertise;
import cn.wsalix.biz.form.AdvertiseForm;
import cn.wsalix.biz.form.CategoryForm;
import cn.wsalix.biz.service.AdvertiseService;
import cn.wsalix.constant.Global;
import cn.wsalix.shop.entity.Shop;
import cn.wsalix.shop.service.ShopService;
import cn.wsalix.utils.UserUtils;

@Controller
@RequestMapping(value = "/site/ad")
public class SiteAdAction {
	@Autowired
	private AdvertiseService advertiseService;
	@Autowired
	protected UserUtils userUtils;
	@Autowired
	private ShopService shopService;

	@RequestMapping(value = { "/shop_add_ad" }, method = RequestMethod.GET)
	public ModelAndView shopAddCat(AdvertiseForm form, Model model) {
		Advertise obj = advertiseService.findById(form.getId());
		shopService.addAd(form.getShopId(), obj);
		return new ModelAndView("redirect:/site/ad/choice" + Global.urlSuffix
				+ "?shopId=" + form.getShopId());
	}

	@RequestMapping(value = { "/shop_del_ad" }, method = RequestMethod.GET)
	public ModelAndView shopDelCat(AdvertiseForm form, Model model) {
		shopService.delAd(form.getShopId(), form.getId());
		return new ModelAndView("redirect:/site/ad/list" + Global.urlSuffix
				+ "?shopId=" + form.getShopId());
	}

	@RequestMapping(value = { "/choice" }, method = RequestMethod.GET)
	public ModelAndView choice(CategoryForm form, Model model) {
		Shop shop = shopService.findById(form.getShopId());
		model.addAttribute("shop", shop);
		BaseUser user = userUtils.getInUser();
		model.addAttribute("ads",
				advertiseService.findByUnShopId(form.getShopId(), user.getId()));

		return new ModelAndView("/site/choice/product");
	}

	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public ModelAndView list(AdvertiseForm form, Model model) {
		if (form.getShopId() != null) {
			Shop shop = shopService.findById(form.getShopId());
			model.addAttribute("shop", shop);
			model.addAttribute("ads",
					advertiseService.findByShopId(form.getShopId()));
		} else {
			BaseUser user = userUtils.getInUser();
			form.setCreatedBy(user.getId());
			form.setFlag(DataEnum.valid);
			model.addAttribute("ads", advertiseService.findByForm(form));
		}
		return new ModelAndView("/site/ad/list");
	}

	@RequestMapping(value = { "/add" }, method = RequestMethod.GET)
	public ModelAndView adToAdd(AdvertiseForm form, Model model) {
		Advertise obj = advertiseService.getNew(form);
		if (form.getShopId() != null) {
			Shop shop = shopService.findById(form.getShopId());
			return new ModelAndView("redirect:/site/ad/edit" + Global.urlSuffix
					+ "?id=" + obj.getId() + "&shopId=" + form.getShopId());
		} else {
			return new ModelAndView("redirect:/site/ad/edit" + Global.urlSuffix
					+ "?id=" + obj.getId());
		}
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
	public ModelAndView adToEdit(AdvertiseForm form, Model model) {
		Advertise obj = advertiseService.findById(form.getId());
		if (form.getShopId() != null) {
			Shop shop = shopService.findById(form.getShopId());
			model.addAttribute("shop", shop);
		}
		if (obj.getFlag().ordinal() == DataEnum.create.ordinal()) {
			obj.setFlag(DataEnum.valid);
			advertiseService.edit(obj);
		}
		model.addAttribute("ad", obj);
		return new ModelAndView("/site/ad/edit");
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.POST)
	public ModelAndView adAdd(AdvertiseForm form, Model model) {
		advertiseService.edit(form);
		if (form.getShopId() != null) {
			return new ModelAndView("redirect:/site/ad/list" + Global.urlSuffix
					+ "?shopId=" + form.getShopId());
		}
		return new ModelAndView("redirect:/site/cat/edit" + Global.urlSuffix);
	}

	@RequestMapping(value = { "/del" }, method = RequestMethod.GET)
	public ModelAndView adDel(AdvertiseForm form, Model model) {
		advertiseService.delete(form.getId());
		if (form.getShopId() != null) {
			return new ModelAndView("redirect:/site/ad/list" + Global.urlSuffix
					+ "&shopId=" + form.getShopId());
		}
		return new ModelAndView("redirect:/site/ad/list" + Global.urlSuffix);
	}

}
