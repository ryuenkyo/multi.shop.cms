package cn.wsalix.shop.web;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.config.FileServerConfig;
import cn.anlaser.form.UploadFileForm;
import cn.anlaser.page.QueryPage;
import cn.anlaser.type.FileTypeEnum;
import cn.anlaser.type.ImageTypeEnum;
import cn.anlaser.utils.HttpUtils;
import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.annotation.Menu;
import cn.wsalix.biz.entity.ImageFile;
import cn.wsalix.biz.entity.UploadFile;
import cn.wsalix.biz.form.CategoryForm;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.biz.service.ImageFileService;
import cn.wsalix.biz.service.UploadFileService;
import cn.wsalix.constant.Global;
import cn.wsalix.observable.service.ProductChangeService;
import cn.wsalix.order.service.OrderService;
import cn.wsalix.shop.entity.Brand;
import cn.wsalix.shop.entity.Origin;
import cn.wsalix.shop.entity.Price;
import cn.wsalix.shop.entity.Product;
import cn.wsalix.shop.entity.Shop;
import cn.wsalix.shop.entity.ShopInfo;
import cn.wsalix.shop.form.BrandForm;
import cn.wsalix.shop.form.OriginForm;
import cn.wsalix.shop.form.PriceForm;
import cn.wsalix.shop.form.ProductForm;
import cn.wsalix.shop.form.ShopInfoForm;
import cn.wsalix.shop.repository.ProductRepository;
import cn.wsalix.shop.service.BrandService;
import cn.wsalix.shop.service.OriginService;
import cn.wsalix.shop.service.PriceService;
import cn.wsalix.shop.service.ProductService;
import cn.wsalix.shop.service.ShopInfoService;
import cn.wsalix.shop.service.ShopService;
import cn.wsalix.shop.status.ProductEnum;
import cn.wsalix.shop.status.ShopOperateEnum;
import cn.wsalix.type.MessTypeEnum;

//@Menu(code="shop:product",name="产品管理",menuUrl="/shop/product/list.do")
@Controller
@RequestMapping(value = "/admin/product")
public class ProductAction
		extends
		SimpleActionImpl<ProductForm, ProductService, ProductRepository, Product> {
	@Autowired
	private FileServerConfig fsConfig;
	@Autowired
	private ProductService productService;
	@Autowired
	private ShopService shopService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ImageFileService imageFileService;
	@Autowired
	private UploadFileService uploadFileService;

	@Autowired
	private ProductChangeService productChangeService;
	@Autowired
	private BrandService brandService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private OriginService originService;
	@Autowired
	private ShopInfoService productStandardService;
	@Autowired
	private PriceService productPriceService;

	@Override
	public ProductService getService() {
		return productService;
	}

	public ModelAndView subCats(@RequestParam("parentId") Long parentId,
			Model model) {
		CategoryForm category = new CategoryForm();
		category.setParentId(parentId);
		model.addAttribute("subLst", categoryService.findByParent(category));
		return new ModelAndView(module() + "/sub_cats");
	}

	@Value("${cat.product}")
	private String productCat;

	@Override
	public ModelAndView toAdd(@Valid ProductForm form, BindingResult result,
			Model model) {
		Shop shop = shopService.findById(form.getShopId());
		model.addAttribute("shop", shop);
		Product product = productService.getNew();
		model.addAttribute("form", product);
		CategoryForm queryForm = new CategoryForm();
		model.addAttribute("catLst", productService.findCatLst(queryForm));
		model.addAttribute("statusLst", ProductEnum.values());
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView add(@Valid ProductForm form, BindingResult result,
			RedirectAttributes ra, Model model) {
		if (result.hasErrors()) {
			ra.addFlashAttribute("form", form);
			for (FieldError fieldError : result.getFieldErrors()) {
				ra.addFlashAttribute(
						"org.springframework.validation.BindingResult.result",
						result);
				if (fieldError.getField().equals("name")) {
					return new ModelAndView("redirect:/" + module() + "/add"
							+ Global.urlSuffix);
				}
				if (fieldError.getField().equals("parentCatId")) {
					return new ModelAndView("redirect:/" + module() + "/add"
							+ Global.urlSuffix);
				}
			}
		}
		/*
		 * if (form.getShopId() != null && form.getShopId() != 0) {
		 * super.add(form, result, ra, model); return new
		 * ModelAndView("redirect:/" + module() + "/list" + Global.urlSuffix +
		 * "?shopId=" + form.getShopId()); }
		 */
		return super.add(form, result, ra, model);
	}

	@Menu(code = "shop:product")
	@Override
	public ModelAndView toEdit(@Valid ProductForm form, BindingResult result,
			Model model) {
		CategoryForm queryForm = new CategoryForm();
		model.addAttribute("catLst", productService.findCatLst(queryForm));

		model.addAttribute("statusLst", ProductEnum.values());
		if (form.getOrderId() != null && form.getOrderId() != 0) {
			model.addAttribute("order",
					orderService.findById(form.getOrderId()));
		}
		return super.toEdit(form, result, model);
	}

	@Menu(code = "shop:product")
	@RequestMapping(value = "/operate", method = RequestMethod.GET)
	public ModelAndView toOperate(@Valid ProductForm form,
			BindingResult result, Model model) {
		model.addAttribute("catLst", categoryService.findParentTop(null));
		model.addAttribute("statusLst", ProductEnum.values());
		if (form.getOrderId() != null && form.getOrderId() != 0) {
			model.addAttribute("order",
					orderService.findById(form.getOrderId()));
		}
		model.addAttribute("form", getService().findById(form.getId()));
		return new ModelAndView(module() + "/operate");
	}

	@Override
	public ModelAndView edit(Long id, @Valid ProductForm form,
			BindingResult result, RedirectAttributes ra, Model model) {
		/*
		 * if (form.getShopId() != null && form.getShopId() != 0) {
		 * super.edit(id, form, result, ra, model); return new
		 * ModelAndView("redirect:/" + module() + "/list" + Global.urlSuffix +
		 * "?shopId=" + form.getShopId()); }
		 */
		if (result.hasErrors()) {
			ra.addFlashAttribute("form", form);
			for (FieldError fieldError : result.getFieldErrors()) {
				ra.addFlashAttribute(
						"org.springframework.validation.BindingResult.result",
						result);
				if (form.getStatus().ordinal() == ProductEnum.onsell.ordinal()) {
					if (fieldError.getField().equals("price")) {
						return new ModelAndView("redirect:/" + module()
								+ "/add" + Global.urlSuffix);
					}
				}
			}
		}

		return super.edit(id, form, result, ra, model);
	}

	@Menu(code = "shop:product")
	@Override
	public ModelAndView list(ProductForm form, BindingResult result,
			Model model, Pageable pageable) {
		return super.list(form, result, model, pageable);
	}

	@RequestMapping(value = "/tuan", method = RequestMethod.GET)
	public ModelAndView tuan(@Valid ProductForm form, BindingResult result,
			Model model, Pageable pageable) {
		form.setTuanQuery(true);
		form.setTuan(true);
		return super.list(form, result, model, pageable);
	}

	@RequestMapping(value = "/sell_list", method = RequestMethod.GET)
	public ModelAndView sellList(@Valid ProductForm form, BindingResult result,
			Model model, Pageable pageable) {
		form.setStatus(ProductEnum.onsell);
		return super.list(form, result, model, pageable);
	}

	@RequestMapping(value = "/lack_list", method = RequestMethod.GET)
	public ModelAndView lackList(@Valid ProductForm form, BindingResult result,
			Model model, Pageable pageable) {
		form.setShopOperate(ShopOperateEnum.lack);
		return super.list(form, result, model, pageable);
	}

	@RequestMapping(value = "/mess_add", method = RequestMethod.GET)
	public ModelAndView messAdd(@Valid ProductForm form, BindingResult result,
			Model model) {
		model.addAttribute("type", MessTypeEnum.product);
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("id")) {
					throw throwException(commonException.getIdNull());
				}
			}
		}
		model.addAttribute("form", getService().findById(form.getId()));
		return new ModelAndView("shop/mess/add");
	}

	@RequestMapping(value = "/stock", method = RequestMethod.GET)
	public ModelAndView toStock(@Valid ProductForm form, BindingResult result,
			Model model) {
		form.setShopOperate(ShopOperateEnum.stock);// 进货
		model.addAttribute("shopOperate", ShopOperateEnum.stock);
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("id")) {
					throw throwException(commonException.getIdNull());
				}
			}
		}
		model.addAttribute("form", getService().findById(form.getId()));
		return new ModelAndView(module() + "/stock");
	}

	@RequestMapping(value = "/stock", method = RequestMethod.POST)
	public ModelAndView stock(@Valid ProductForm form, BindingResult result,
			RedirectAttributes ra, Model model) {
		form.setShopOperate(ShopOperateEnum.stock);
		return super.edit(form.getId(), form, result, ra, model);
	}

	@RequestMapping(value = "/onsell", method = RequestMethod.GET)
	public ModelAndView onsell(@Valid ProductForm form, BindingResult result,
			RedirectAttributes ra, Model model) {
		form.setShopOperate(ShopOperateEnum.onsell);
		return super.edit(form.getId(), form, result, ra, model);
	}

	/**
	 * @param form
	 * @param result
	 * @param model
	 * @return 下架
	 */
	@RequestMapping(value = "/undercarriage", method = RequestMethod.GET)
	public ModelAndView undercarriage(@Valid ProductForm form,
			BindingResult result, RedirectAttributes ra, Model model) {
		form.setShopOperate(ShopOperateEnum.undercarriage);
		return super.edit(form.getId(), form, result, ra, model);
	}

	@ResponseBody
	@RequestMapping(value = "/upload_img")
	public ModelAndView uploadImg(ProductForm form, MultipartFile fileName)
			throws Exception {
		if (fileName != null) {
			UploadFileForm upForm = new UploadFileForm();
			upForm.setFkId(form.getId());
			upForm.setType(FileTypeEnum.image);
			upForm.setImageType(ImageTypeEnum.product.name());
			HttpUtils.uploadFile(fsConfig, fileName, upForm);
			form.setLogo(upForm.getHttpUrl());
		}

		productService.edit(form);
		return new ModelAndView("redirect:/" + module() + "/edit"
				+ Global.urlSuffix + "?id=" + form.getId());
	}

	@RequestMapping(value = "/edit_logo_img", method = RequestMethod.GET)
	public ModelAndView toEditLogoImg(
			@RequestParam("productId") Long productId, Model model) {
		Product entity = productService.findById(productId);
		model.addAttribute("form", entity);
		model.addAttribute("uploadType", "logo");
		model.addAttribute("action", "upload_img.do");
		return new ModelAndView(module() + "/upload_image");
	}

	@RequestMapping(value = "/gallery_list", method = RequestMethod.GET)
	public ModelAndView galleryList(ProductForm form, Model model,
			Pageable pageable) {
		QueryPage<Product> resPage = productService.findAll(form, pageable);
		model.addAttribute("resLst", resPage.getPage());
		model.addAttribute("pageSize", resPage.getPage().getContent().size());
		return new ModelAndView(module() + "/gallery_list");
	}

	@RequestMapping(value = "/edit_logo_img", method = RequestMethod.POST)
	public ModelAndView toLogoImg(
			ProductForm form,
			@RequestParam(value = "fileName", required = false) MultipartFile fileName)
			throws Exception {
		form.setUploadType("logo");
		return upProductImg(form, fileName);
	}

	@RequestMapping(value = "/del_imgage", method = RequestMethod.GET)
	public ModelAndView delImg(ProductForm form, Model model) {
		UploadFile uploadFile = uploadFileService.findById(form.getId());
		uploadFileService.delete(form.getId());
		// Product entity = uploadFile.getProduct();
		return new ModelAndView("redirect:/" + module() + "/product_image_list"
				+ Global.urlSuffix + "?productId=" + uploadFile.getFkId());
	}

	@RequestMapping(value = "/product_image_list", method = RequestMethod.GET)
	public ModelAndView toProductImg(ProductForm form, Model model) {
		Product entity = productService.findById(form.getProductId());
		/*
		 * List<UploadFile> uploadFileLst =
		 * uploadFileService.findByProductId(form .getProductId());
		 */
		List<ImageFile> uploadFileLst =(List<ImageFile>) imageFileService.findFkByForm(
				ImageTypeEnum.product.name(), form.getProductId());
		model.addAttribute("form", entity);
		model.addAttribute("uploadFileLst", uploadFileLst);
		model.addAttribute("action", "upload_img.do");
		return new ModelAndView(module() + "/upload_image");
	}

	@RequestMapping(value = "/product_image_list", method = RequestMethod.POST)
	public ModelAndView upProductImg(
			ProductForm form,
			@RequestParam(value = "fileName", required = false) MultipartFile fileName)
			throws Exception {
		if (form.getId() == null) {
			form.setId(form.getProductId());
		}
		if (fileName == null) {
			return new ModelAndView("redirect:/" + module()
					+ "/product_image_list" + Global.urlSuffix + "?productId="
					+ form.getId());
		} else {
			UploadFileForm upForm = new UploadFileForm();
			upForm.setFkId(form.getId());
			upForm.setType(FileTypeEnum.image);
			upForm.setImageType(ImageTypeEnum.product.name());
			HttpUtils.uploadFile(fsConfig, fileName, upForm);
			form.setLogo(upForm.getHttpUrl());
			form.setSavePath(upForm.getSavePath());
			form.setHttpUrl(upForm.getHttpUrl());
		}
		form.setId(form.getProductId());

		productService.edit(form);
		return new ModelAndView("redirect:/" + module() + "/product_image_list"
				+ Global.urlSuffix + "?productId=" + form.getId());
	}

	@RequestMapping(value = "/brand", method = RequestMethod.GET)
	public ModelAndView brand(ProductForm form, Model model, Pageable pageable) {
		Product entity = productService.findById(form.getId());
		model.addAttribute("form", entity);

		BrandForm brandForm = new BrandForm();
		if (form.getBrand() != null && !form.getBrand().trim().equals("")) {
			brandForm.setName(form.getBrand());
		}
		List<Brand> brands = brandService.findByForm(brandForm);
		model.addAttribute("brands", brands);
		return new ModelAndView(module() + "/brand_list");
	}

	@RequestMapping(value = "/set_brand", method = RequestMethod.GET)
	public @ResponseBody String setBrand(ProductForm form, Model model,
			Pageable pageable) {
		productService.brand(form);
		return "ok";
	}

	@RequestMapping(value = "/origin", method = RequestMethod.GET)
	public ModelAndView origin(ProductForm form, Model model) {
		Product entity = productService.findById(form.getId());
		model.addAttribute("form", entity);

		OriginForm originForm = new OriginForm();
		if (form.getOrigin() != null && !form.getOrigin().trim().equals("")) {
			originForm.setName(form.getOrigin());
		}
		List<Origin> origins = originService.findByForm(originForm);
		model.addAttribute("origins", origins);
		return new ModelAndView(module() + "/origin_list");
	}

	@RequestMapping(value = "/set_origin", method = RequestMethod.GET)
	public @ResponseBody String setOrigin(ProductForm form, Model model) {
		productService.origin(form);
		return "ok";
	}

	@RequestMapping(value = "/standard", method = RequestMethod.GET)
	public ModelAndView standard(ProductForm form, Model model) {
		Product entity = productService.findById(form.getId());
		model.addAttribute("form", entity);

		ShopInfoForm productStandardForm = new ShopInfoForm();
		productStandardForm.setProductId(form.getId());
		List<ShopInfo> productStandards = productStandardService
				.findByForm(productStandardForm);
		model.addAttribute("standards", productStandards);
		return new ModelAndView(module() + "/standard_list");
	}

	@RequestMapping(value = "/prices", method = RequestMethod.GET)
	public ModelAndView prices(ProductForm form, Model model) {
		Product entity = productService.findById(form.getId());
		model.addAttribute("product", entity);

		PriceForm productPriceForm = new PriceForm();
		productPriceForm.setProductId(form.getId());
		List<Price> productPrices = productPriceService
				.findByForm(productPriceForm);
		model.addAttribute("prices", productPrices);
		return new ModelAndView(module() + "/price_list");
	}

	@RequestMapping(value = "/price_del", method = RequestMethod.GET)
	public ModelAndView priceDel(ProductForm form) throws Exception {
		/*
		 * FileUploadVO fileUploadVO = HttpUtils.saveFile(Global.fsConfig,
		 * fileName, "origin"); form.setBrandLogo(fileUploadVO.getHttpUrl());
		 * productChangeService.change(form);
		 */
		productPriceService.delete(form.getId());
		return new ModelAndView("redirect:/shop/product/prices"
				+ Global.urlSuffix + "?id=" + form.getProductId());
	}

	@RequestMapping(value = "/brand", method = RequestMethod.POST)
	public ModelAndView brandPost(ProductForm form) throws Exception {
		/*
		 * FileUploadVO fileUploadVO = HttpUtils.saveFile(Global.fsConfig,
		 * fileName, "brand"); form.setBrandLogo(fileUploadVO.getHttpUrl());
		 * productChangeService.change(form);
		 */
		productService.brand(form);
		return new ModelAndView(module() + "/brand");
	}

	@RequestMapping(value = "/origin", method = RequestMethod.POST)
	public ModelAndView originPost(ProductForm form) throws Exception {
		/*
		 * FileUploadVO fileUploadVO = HttpUtils.saveFile(Global.fsConfig,
		 * fileName, "origin"); form.setBrandLogo(fileUploadVO.getHttpUrl());
		 * productChangeService.change(form);
		 */
		productService.origin(form);
		return new ModelAndView(module() + "/origin");
	}

	@RequestMapping(value = { "/pass" }, method = RequestMethod.GET)
	public ModelAndView shopPass(ProductForm form, Model model) {
		if (form.getId() != null) {
			productService.pass(form.getId());
		}
		return new ModelAndView("redirect:/admin/product/list"
				+ Global.urlSuffix);
	}

	@RequestMapping(value = { "/un_pass" }, method = RequestMethod.GET)
	public ModelAndView shopUnPass(ProductForm form, Model model) {
		if (form.getId() != null) {
			productService.unPass(form);
		}
		return new ModelAndView("redirect:/admin/product/list"
				+ Global.urlSuffix);
	}
}
