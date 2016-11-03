package cn.wsalix.shop.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.annotation.Menu;
import cn.wsalix.constant.Global;
import cn.wsalix.shop.entity.Product;
import cn.wsalix.shop.entity.Price;
import cn.wsalix.shop.form.PriceForm;
import cn.wsalix.shop.repository.PriceRepository;
import cn.wsalix.shop.service.PriceService;
import cn.wsalix.shop.service.ProductService;
import cn.wsalix.status.PriceEnum;
//@Menu(code="shop:price",name="价格管理",menuUrl="/shop/price/list.do")
@Controller
@RequestMapping(value = "/admin/price")
public class PriceAction
		extends
		SimpleActionImpl<PriceForm, PriceService, PriceRepository, Price>{
	@Autowired
	private PriceService priceService;
	@Autowired
	private ProductService productService;

	@Override
	public PriceService getService() {
		return priceService;
	}

	@Menu(code="shop:price")
	@Override
	public ModelAndView toEdit(PriceForm form, BindingResult result,
			Model model) {
		Price price = priceService.findById(form.getId());
		model.addAttribute("product", price.getProduct());
		model.addAttribute("form", price);
		return new ModelAndView(module() + "/edit");
	}

	@Override
	public ModelAndView edit(Long id, PriceForm form,
			BindingResult result,RedirectAttributes ra, Model model) {
		Price price = priceService.findById(id);
		if (form.getProductId() != null && form.getProductId() != 0) {
			Product product = productService.findById(form.getProductId());
			form.setProduct(product);
		}
		// Entity entity = BeanMapper.map(srcEntity, UserVO.class);
		getService().edit(form);
		return new ModelAndView("redirect:/admin/product/prices"
				+ Global.urlSuffix + "?id=" + price.getProduct().getId());
	}
	@Menu(code="shop:price")
	@Override
	public ModelAndView toAdd(@Valid PriceForm form,
			BindingResult result, Model model) {
		if (form.getProductId() != null && form.getProductId() != 0) {
			Product product = productService.findById(form.getProductId());
			model.addAttribute("product", product);
		}

		model.addAttribute("typeLst", PriceEnum.values());
		return super.toAdd(form, result, model);
	}

	@RequestMapping(value = "/add_by_productId", method = RequestMethod.GET)
	public ModelAndView addByProductId(@Valid PriceForm form,
			BindingResult result, Model model) {
		if (form.getProductId() != null && form.getProductId() != 0) {
			Product product = productService.findById(form.getProductId());
			model.addAttribute("product", product);
		}

		model.addAttribute("typeLst", PriceEnum.values());
		return super.toAdd(form, result, model);
	}

	@RequestMapping(value = "/add_by_productId", method = RequestMethod.POST)
	public ModelAndView addByProductIdPost(@Valid PriceForm form,
			BindingResult result,RedirectAttributes ra, Model model) {
		super.add(form, result,ra, model);
		return new ModelAndView("redirect:/admin/product/prices"
				+ Global.urlSuffix + "?id=" + form.getProductId());
	}

	@Override
	public ModelAndView add(@Valid PriceForm form,
			BindingResult result,RedirectAttributes ra, Model model) {
		if (form.getProductId() != null && form.getProductId() != 0) {
			Product product = productService.findById(form.getProductId());
			form.setProduct(product);
		}
		super.add(form, result, ra,model);
		return new ModelAndView("redirect:/admin/product/prices"
				+ Global.urlSuffix + "?id=" + form.getProductId());
	}

}
