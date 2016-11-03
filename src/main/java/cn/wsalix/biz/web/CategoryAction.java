package cn.wsalix.biz.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
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
import cn.anlaser.type.FileTypeEnum;
import cn.anlaser.utils.HttpUtils;
import cn.anlaser.web.impl.ParentActionImpl;
import cn.wsalix.annotation.Menu;
import cn.wsalix.biz.entity.Category;
import cn.wsalix.biz.form.CategoryForm;
import cn.wsalix.biz.repository.CategoryRepository;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.constant.Global;
import cn.wsalix.status.CatEnum;

//@Menu(code="biz:cat",name="产品管理",menuUrl="/biz/cat/parent.do")
@Controller
@RequestMapping(value = "/biz/cat")
public class CategoryAction
		extends
		ParentActionImpl<CategoryForm, CategoryService, CategoryRepository, Category> {
	@Autowired
	private FileServerConfig fsConfig;
	@Autowired
	private CategoryService categoryService;

	@Override
	public CategoryService getService() {
		return categoryService;
	}

	@Menu(code = "biz:cat")
	@Override
	public ModelAndView list(CategoryForm form, BindingResult result,
			Model model, Pageable pageable) {
		// TODO Auto-generated method stub
		return super.list(form, result, model, pageable);
	}

	@Menu(code = "biz:cat")
	@Override
	public ModelAndView toAdd(CategoryForm form, BindingResult result,
			Model model) {
		model.addAttribute("statusLst", CatEnum.values());
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView parentToAdd(CategoryForm form, BindingResult result,
			Model model) {
		model.addAttribute("statusLst", CatEnum.values());
		return super.parentToAdd(form, result, model);
	}

	@Override
	public ModelAndView add(@Valid CategoryForm form, BindingResult result,RedirectAttributes ra,
			Model model) {
		if (result.hasErrors()) {
			ra.addFlashAttribute("form", form);
			for (FieldError fieldError : result.getFieldErrors()) {
				ra.addFlashAttribute("org.springframework.validation.BindingResult.result", result);
				if (fieldError.getField().equals("code")) {	
					return new ModelAndView("redirect:/" + module() + "/add"+ Global.urlSuffix);
				}
				if (fieldError.getField().equals("name")) {
					return new ModelAndView("redirect:/" + module() + "/add"+ Global.urlSuffix);
				}			
			}
		}		
		return super.add(form, result,ra, model);
	}

	@Menu(code = "biz:cat")
	@Override
	public ModelAndView toEdit(@Valid CategoryForm form, BindingResult result,
			Model model) {
		model.addAttribute("statusLst", CatEnum.values());
		Category entity = categoryService.findById(form.getId());
		model.addAttribute("form", entity);
		return new ModelAndView(module() + "/edit");
	}

	@Override
	public ModelAndView edit(Long id, CategoryForm form, BindingResult result,RedirectAttributes ra,
			Model model) {

		return super.edit(id, form, result,ra, model);
	}

	@ResponseBody
	@RequestMapping(value = "/upload_img")
	public ModelAndView uploadImg(CategoryForm form, MultipartFile fileName)
			throws Exception {
		UploadFileForm upForm = new UploadFileForm();
		upForm.setFkId(form.getId());
		upForm.setType(FileTypeEnum.image);
		HttpUtils.uploadFile(fsConfig, fileName, upForm);
		form.setFilePath(upForm.getHttpUrl());
		categoryService.edit(form);
		return new ModelAndView("redirect:/" + module() + "/edit"
				+ Global.urlSuffix + "?id=" + form.getId());
	}

	@RequestMapping(value = "/edit_img", method = RequestMethod.GET)
	public ModelAndView toEditImg(@Valid CategoryForm form, Model model) {
		Category entity = categoryService.findById(form.getId());
		model.addAttribute("uploadType", form.getImgType().name());
		model.addAttribute("form", entity);
		model.addAttribute("action", "upload_img.do");
		return new ModelAndView(module() + "/cat_img");
	}

	@RequestMapping(value = "/edit_header_img", method = RequestMethod.GET)
	public ModelAndView toEditHeaderImg(@RequestParam("id") Long id, Model model) {
		Category entity = categoryService.findById(id);
		model.addAttribute("uploadType", "header");
		model.addAttribute("form", entity);
		model.addAttribute("action", "upload_img.do");
		return new ModelAndView(module() + "/upload_img");
	}

	@RequestMapping(value = "/edit_logo_img", method = RequestMethod.GET)
	public ModelAndView toEditLogoImg(@RequestParam("id") Long id, Model model) {
		Category entity = categoryService.findById(id);
		model.addAttribute("form", entity);
		model.addAttribute("uploadType", "logo");
		model.addAttribute("form", entity);
		model.addAttribute("action", "upload_img.do");
		return new ModelAndView(module() + "/upload_img");
	}

	@RequestMapping(value = "/edit_footer_img", method = RequestMethod.GET)
	public ModelAndView toEditFooterImg(@RequestParam("id") Long id, Model model) {
		Category entity = categoryService.findById(id);
		model.addAttribute("form", entity);
		model.addAttribute("uploadType", "footer");
		model.addAttribute("form", entity);
		model.addAttribute("action", "upload_img.do");
		return new ModelAndView(module() + "/upload_img");
	}

}
