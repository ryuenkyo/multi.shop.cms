package cn.wsalix.shop.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.config.FileServerConfig;
import cn.anlaser.form.UploadFileForm;
import cn.anlaser.type.FileTypeEnum;
import cn.anlaser.type.ImageTypeEnum;
import cn.anlaser.utils.HttpUtils;
import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.annotation.Menu;
import cn.wsalix.constant.Global;
import cn.wsalix.shop.entity.Brand;
import cn.wsalix.shop.entity.Product;
import cn.wsalix.shop.form.BrandForm;
import cn.wsalix.shop.repository.BrandRepository;
import cn.wsalix.shop.service.BrandService;
import cn.wsalix.shop.service.ProductService;

//@Menu(code="shop:brand",name="品牌管理",menuUrl="/shop/brand/list.do")
@Controller
@RequestMapping(value = "/admin/brand")
public class BrandAction extends
		SimpleActionImpl<BrandForm, BrandService, BrandRepository, Brand> {
	@Autowired
	private FileServerConfig fsConfig;
	@Autowired
	private BrandService brandService;
	@Autowired
	private ProductService productService;

	@Override
	public BrandService getService() {
		return brandService;
	}

	@Menu(code = "shop:brand")
	@Override
	public ModelAndView toAdd(BrandForm form, BindingResult result, Model model) {
		Brand brand = brandService.getNew();
		model.addAttribute("form", brand);
		if (form.getProductId() != null && form.getProductId() != 0) {
			Product product = productService.findById(form.getProductId());
			model.addAttribute("product", product);
		}
		return super.toAdd(form, result, model);
	}

	@Menu(code = "shop:brand")
	@Override
	public ModelAndView toEdit(BrandForm form, BindingResult result, Model model) {
		if (form.getProductId() != null && form.getProductId() != 0) {
			Product product = productService.findById(form.getProductId());
			model.addAttribute("product", product);
		}
		return super.toEdit(form, result, model);
	}

	@Menu(code = "shop:brand")
	@Override
	public ModelAndView list(BrandForm form, BindingResult result, Model model,
			Pageable pageable) {
		if (form.getProductId() != null && form.getProductId() != 0) {
			Product product = productService.findById(form.getProductId());
			model.addAttribute("product", product);
		}
		return super.list(form, result, model, pageable);
	}

	@RequestMapping(value = "/add_logo", method = RequestMethod.GET)
	public ModelAndView addLogo(BrandForm entity, BindingResult result,
			Model model) {
		if (entity.getProductId() != null && entity.getProductId() != 0) {
			Product product = productService.findById(entity.getProductId());
			model.addAttribute("product", product);
		}
		return super.toAdd(entity, result, model);
	}

	@Transactional
	@RequestMapping(value = "/add_logo", method = RequestMethod.POST)
	public ModelAndView addLogoPost(
			BrandForm form,
			@RequestParam(value = "fileName", required = false) MultipartFile fileName) {
		if (fileName != null) {
			UploadFileForm upForm = new UploadFileForm();
			upForm.setFkId(form.getId());
			upForm.setType(FileTypeEnum.image);
			upForm.setImageType(ImageTypeEnum.brand);
			HttpUtils.uploadFile(fsConfig, fileName, upForm);
			form.setLogo(upForm.getHttpUrl());
		}
		// entity.setBrandLogo(entity.getBrandLogo());
		brandService.add(form);

		if (form.getProductId() != null && form.getProductId() != 0) {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix + "?productId=" + form.getProductId());
		}
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

	@RequestMapping(value = "/edit_logo", method = RequestMethod.GET)
	public ModelAndView editLogo(BrandForm form, BindingResult result,
			Model model) {
		if (form.getProductId() != null && form.getProductId() != 0) {
			Product product = productService.findById(form.getProductId());
			model.addAttribute("product", product);
		}
		return super.toEdit(form, result, model);
	}

	@Transactional
	@RequestMapping(value = "/edit_logo", method = RequestMethod.POST)
	public ModelAndView editLogo(
			@RequestParam("id") Long id,
			BrandForm form,
			@RequestParam(value = "fileName", required = false) MultipartFile fileName) {
		if (fileName != null) {
			UploadFileForm upForm = new UploadFileForm();
			upForm.setFkId(form.getId());
			upForm.setType(FileTypeEnum.image);
			upForm.setImageType(ImageTypeEnum.brand);
			HttpUtils.uploadFile(fsConfig, fileName, upForm);
			form.setLogo(upForm.getHttpUrl());
		}

		brandService.edit(form);

		if (form.getProductId() != null && form.getProductId() != 0) {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix + "?productId=" + form.getProductId());
		}
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

}
