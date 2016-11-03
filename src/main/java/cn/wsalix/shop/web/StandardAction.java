package cn.wsalix.shop.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.constant.Global;
import cn.wsalix.shop.entity.Product;
import cn.wsalix.shop.entity.ShopInfo;
import cn.wsalix.shop.form.ShopInfoForm;
import cn.wsalix.shop.repository.ShopInfoRepository;
import cn.wsalix.shop.service.ProductService;
import cn.wsalix.shop.service.ShopInfoService;

@Controller
@RequestMapping(value = "/admin/standard")
public class StandardAction
		extends
		SimpleActionImpl<ShopInfoForm, ShopInfoService, ShopInfoRepository, ShopInfo> {
	@Autowired
	private ShopInfoService productStandardService;
	@Autowired
	private ProductService productService;

	@Override
	public ShopInfoService getService() {
		return productStandardService;
	}

	@RequestMapping(value = "/add_by_productId", method = RequestMethod.GET)
	public ModelAndView addByProductId(ShopInfoForm entity, BindingResult result, Model model) {
		Product product = productService.findById(entity.getProductId());
		model.addAttribute("product", product);
		return super.toAdd(entity,result,model);
	}

	@Override
	public ModelAndView add(ShopInfoForm entity, BindingResult result,RedirectAttributes ra,
			Model model) {
		// TODO Auto-generated method stub
		super.add(entity, result,ra, model);
		return new ModelAndView("redirect:/shop/product/standard"
				+ Global.urlSuffix + "?id=" + entity.getProductId());
	}

}
