package cn.wsalix.biz.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.wsalix.biz.entity.Advertise;
import cn.wsalix.biz.service.AdvertiseService;

@Controller
@RequestMapping(value = "/biz")
public class BizAction {
	
	@Autowired
	private AdvertiseService advertiseService;

	public String module() {
		return "biz";
	}

	@ModelAttribute("prefix")
	public void prefix(Model model) {
		//model.addAttribute("statusLst", MmEnum.values());
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView toEditHeaderImg(Model model) {
		Advertise topProduct = advertiseService.findByCode("top_product_ad");
		Advertise slogan = advertiseService.findByCode("slogan");
		Advertise bannerProducts = advertiseService.findByCode("banner_goods");

		model.addAttribute("topProduct", topProduct);
		model.addAttribute("slogan", slogan);
		model.addAttribute("bannerProducts", bannerProducts);
		return new ModelAndView(module() + "/home");
	}
}
