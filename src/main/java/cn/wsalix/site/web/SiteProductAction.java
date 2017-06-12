package cn.wsalix.site.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.admin.BaseUser;
import cn.anlaser.status.FlagEnum;
import cn.wsalix.biz.form.CategoryForm;
import cn.wsalix.constant.Global;
import cn.wsalix.shop.entity.Product;
import cn.wsalix.shop.entity.Shop;
import cn.wsalix.shop.form.ProductForm;
import cn.wsalix.shop.service.ProductService;
import cn.wsalix.shop.service.ShopService;
import cn.wsalix.shop.status.ProductEnum;
import cn.wsalix.shop.type.ProductTypeEnum;
import cn.wsalix.utils.UserUtils;

@Controller
@RequestMapping(value = "/site/product")
public class SiteProductAction {

	@Autowired
	private ProductService productService;
	@Autowired
	private ShopService shopService;
	@Autowired
	protected UserUtils userUtils;
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private ShopWebUtils shopWebUtils;
	@RequestMapping(value = { "by_shop_cat" }, method = RequestMethod.GET)
	public ModelAndView byShopAndCat(ProductForm form, Model model) {
		Shop shop =shopWebUtils.getShop(request);
		model.addAttribute("products", productService.findByTypeAndFkidAndCat(
				ProductTypeEnum.shop, shop, form.getCatId()));
		return new ModelAndView("/site/product/index");
	}

	@RequestMapping(value = { "/shop_add_product" }, method = RequestMethod.GET)
	public ModelAndView shopAddProduct(ProductForm form, Model model) {
		Product obj = productService.findById(form.getId());
		shopService.addProduct(form.getShopId(), obj);
		return new ModelAndView("redirect:/site/product/choice"
				+ Global.urlSuffix + "?shopId=" + form.getShopId());
	}

	@RequestMapping(value = { "/choice" }, method = RequestMethod.GET)
	public ModelAndView choice(CategoryForm form, Model model) {
		Shop shop = shopService.findById(form.getShopId());
		model.addAttribute("shop", shop);
		BaseUser user = userUtils.getInUser();
		model.addAttribute("products",
				productService.findByUnShopId(form.getShopId(), user.getId()));

		return new ModelAndView("/site/choice/product");
	}

	@RequestMapping(value = { "/shop_del_ad" }, method = RequestMethod.GET)
	public ModelAndView shopDelCat(ProductForm form, Model model) {
		shopService.delProduct(form.getShopId(), form.getId());
		return new ModelAndView("redirect:/site/product/list"
				+ Global.urlSuffix + "?shopId=" + form.getShopId());
	}

	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public ModelAndView productList(ProductForm form, Model model) {
		BaseUser user = userUtils.getInUser();
		if (form.getShopId() != null) {
			Shop shop = shopService.findById(form.getShopId());
			model.addAttribute("shop", shop);
			model.addAttribute("products",
					productService.findByShopId(form.getShopId()));
		} else {
			form.setCreatedBy(user.getId());
			form.setFlag(FlagEnum.valid);
			model.addAttribute("products", productService.findByForm(form));
		}
		return new ModelAndView("/site/product/list");
	}

	@RequestMapping(value = { "/add" }, method = RequestMethod.GET)
	public ModelAndView productToAdd(ProductForm form, Model model) {
		/*
		 * if (form.getShopId() != null) { Shop shop =
		 * shopService.findById(form.getShopId()); form.setShop(shop); }
		 */
		Product product = productService.getNew(form);
		return new ModelAndView("redirect:/site/product/edit"
				+ Global.urlSuffix + "?id=" + product.getId());

	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
	public ModelAndView productToEdit(ProductForm form, Model model) {
		CategoryForm queryForm = new CategoryForm();
		if (form.getShopId() != null) {
			queryForm.setShopId(form.getShopId());
		}
		model.addAttribute("catLst", productService.findCatLst(queryForm));
		model.addAttribute("statusLst", ProductEnum.values());
		Product obj = productService.findById(form.getId());
		if (obj.getFlag().ordinal() == FlagEnum.create.ordinal()) {
			obj.setFlag(FlagEnum.valid);
			productService.edit(obj);
		}
		// model.addAttribute("shop", obj.getShop());
		model.addAttribute("product", obj);

		return new ModelAndView("/site/product/edit");
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.POST)
	public ModelAndView productEdit(ProductForm form, Model model) {
		productService.edit(form);
		if (form.getShopId() != null) {
			return new ModelAndView("redirect:/site/product/edit"
					+ Global.urlSuffix + "?shopId=" + form.getShopId());
		}
		return new ModelAndView("redirect:/site/product/list"
				+ Global.urlSuffix);
	}

	@RequestMapping(value = { "/pub" }, method = RequestMethod.GET)
	public ModelAndView onsell(ProductForm form, Model model) {
		productService.ready(form.getId());
		if (form.getShopId() != null) {
			return new ModelAndView("redirect:/site/product/edit"
					+ Global.urlSuffix + "?shopId=" + form.getShopId());
		}
		return new ModelAndView("redirect:/site/product/list"
				+ Global.urlSuffix);
	}

	@RequestMapping(value = { "/undercar" }, method = RequestMethod.GET)
	public ModelAndView undercar(ProductForm form, Model model) {
		productService.undercar(form);
		if (form.getShopId() != null) {
			return new ModelAndView("redirect:/site/product/edit"
					+ Global.urlSuffix + "?shopId=" + form.getShopId());
		}
		return new ModelAndView("redirect:/site/product/list"
				+ Global.urlSuffix);
	}

	@RequestMapping(value = { "/del" }, method = RequestMethod.GET)
	public ModelAndView productDel(ProductForm form, Model model) {
		productService.delete(form.getId());
		if (form.getShopId() != null) {
			return new ModelAndView("redirect:/site/product/edit"
					+ Global.urlSuffix + "?shopId=" + form.getShopId());
		}
		return new ModelAndView("redirect:/site/product/list"
				+ Global.urlSuffix);
	}

}
