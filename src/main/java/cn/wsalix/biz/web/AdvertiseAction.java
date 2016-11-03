package cn.wsalix.biz.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.config.FileServerConfig;
import cn.anlaser.web.impl.CommonActionImpl;
import cn.wsalix.annotation.Menu;
import cn.wsalix.biz.entity.Advertise;
import cn.wsalix.biz.entity.Category;
import cn.wsalix.biz.form.AdvertiseForm;
import cn.wsalix.biz.repository.AdvertiseRepository;
import cn.wsalix.biz.service.AdvertiseService;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.biz.service.UploadFileService;
import cn.wsalix.config.AppConfig;
import cn.wsalix.status.ActEnum;

//@Menu(code="biz:ad",name="活动管理",menuUrl="/biz/ad/list.do")
@Controller
@RequestMapping(value = "/biz/ad")
public class AdvertiseAction
		extends
		CommonActionImpl<AdvertiseForm, AdvertiseService, AdvertiseRepository, Advertise> {
	@Autowired
	private AdvertiseService advertiseService;
	@Autowired
	private FileServerConfig fsConfig;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private UploadFileService uploadFileService;

	@ModelAttribute()
	public void prefix(Model model) {

	}

	@Override
	public AdvertiseService getService() {
		return advertiseService;
	}

	@RequestMapping(value = "/cat_add", method = RequestMethod.GET)
	public @ResponseBody String addCat(@RequestParam("catId") Long catId,
			@RequestParam("adId") Long adId, Model model) {
		Category category = categoryService.findById(catId);
		advertiseService.addCat(adId, category);
		return "";
	}

	@Menu(code = "biz:ad")
	@Override
	public ModelAndView toAdd(AdvertiseForm form, BindingResult result,
			Model model) {
		Advertise advertise = advertiseService.getNew(form);
		model.addAttribute("form", advertise);
		model.addAttribute("statusLst", ActEnum.values());
		if (form.getCatId() == null) {
			model.addAttribute("catLst",
					categoryService.findSubsByCode(AppConfig.adCat.getCode()));
		} else {
			model.addAttribute("cat", categoryService.findById(form.getCatId()));
		}
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView add(AdvertiseForm form, BindingResult result,
			RedirectAttributes ra, Model model) {
		return super.add(form, result, ra, model);
	}

	@Menu(code = "biz:ad")
	@Override
	public ModelAndView toEdit(AdvertiseForm form, BindingResult result,
			Model model) {
		model.addAttribute("statusLst", ActEnum.values());
		if (form.getCatId() == null) {
			model.addAttribute("catLst",
					categoryService.findSubsByCode(AppConfig.adCat.getCode()));
		} else {
			model.addAttribute("cat", categoryService.findById(form.getCatId()));
		}
		return super.toEdit(form, result, model);
	}

	@Menu(code = "biz:ad")
	@Override
	public ModelAndView list(AdvertiseForm form, BindingResult result,
			Model model, Pageable pageable) {
		// TODO Auto-generated method stub
		return super.list(form, result, model, pageable);
	}

	@RequestMapping(value = "/edit_logo_img", method = RequestMethod.GET)
	public ModelAndView toEditLogoImg(@RequestParam("adId") Long adId,
			Model model) {
		Advertise advertise = advertiseService.findById(adId);
		model.addAttribute("form", advertise);
		model.addAttribute("uploadType", "logo");
		model.addAttribute("action", "upload_img.do");
		return new ModelAndView(module() + "/upload_image");
	}

	@RequestMapping(value = "/ad_imgage_list", method = RequestMethod.GET)
	public ModelAndView toAdImg(AdvertiseForm form, Model model) {
		/*
		 * Advertise entity = advertiseService.findById(form.getAdId());
		 * List<UploadFile> uploadFileLst =
		 * uploadFileService.findByProductId(form .getAdId());
		 * model.addAttribute("form", entity);
		 * model.addAttribute("uploadFileLst", uploadFileLst);
		 */
		model.addAttribute("action", "upload_img.do");
		return new ModelAndView(module() + "/upload_image");
	}

}
