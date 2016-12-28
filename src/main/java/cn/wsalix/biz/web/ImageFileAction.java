package cn.wsalix.biz.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.config.FileServerConfig;
import cn.anlaser.form.UploadFileForm;
import cn.anlaser.type.FileTypeEnum;
import cn.anlaser.utils.HttpUtils;
import cn.anlaser.web.impl.CommonActionImpl;
import cn.wsalix.biz.entity.ImageFile;
import cn.wsalix.biz.form.ImageFileForm;
import cn.wsalix.biz.repository.ImageFileRepository;
import cn.wsalix.biz.service.ImageFileService;
import cn.wsalix.constant.Global;
import cn.wsalix.observable.service.FileUploadService;

@Controller
@RequestMapping(value = "/biz/image_file")
public class ImageFileAction
		extends
		CommonActionImpl<ImageFileForm, ImageFileService, ImageFileRepository, ImageFile> {
	@Autowired
	private ImageFileService imageFileService;
	@Autowired
	private FileUploadService fileUploadService;

	@ModelAttribute("prefix")
	public void prefix(Model model) {
		// model.addAttribute("statusLst", FileEnum.values());
		// model.addAttribute("typeLst", FileTypeEnum.values());
	}

	@RequestMapping(value = "/relation_add", method = RequestMethod.GET)
	public ModelAndView relationToAdd(ImageFileForm form, BindingResult result,
			Model model) {
		model.addAttribute("form", form);
		model.addAttribute("imgLst", imageFileService.findByForm(form));
		return new ModelAndView("biz/relation_image/add");
	}

	@RequestMapping(value = "/relation_add", method = RequestMethod.POST)
	public @ResponseBody String relationAdd(ImageFileForm form,
			BindingResult result, Model model) {
		model.addAttribute("form", form);
		imageFileService.addRelation(form.getId(), form.getFkId(),
				form.getImageType());
		return "ok";
	}

	@RequestMapping(value = "/relation_list", method = RequestMethod.GET)
	public ModelAndView relationImage(ImageFileForm form, BindingResult result,
			Model model) {
		model.addAttribute("form", form);
		model.addAttribute(
				"obj",
				imageFileService.findFkByForm(form.getImageType(),
						form.getFkId()));
		model.addAttribute(
				"imageLst",
				imageFileService.findRelationImage(form.getImageType(),
						form.getFkId()));
		return new ModelAndView("biz/relation_image/list");
	}

	@RequestMapping(value = "/relation_delete", method = RequestMethod.GET)
	public ModelAndView relationDelete(ImageFileForm form,
			BindingResult result, Model model) {
		model.addAttribute("form", form);
		imageFileService.deleteRelation(form.getId());
		return new ModelAndView("redirect:/" + module() + "/relation_list"
				+ Global.urlSuffix + "?fkId=" + form.getFkId() + "&imageType="
				+ form.getImageType());
	}

	@Override
	public ModelAndView list(ImageFileForm form, BindingResult result,
			Model model, Pageable pageable) {
		model.addAttribute("form", form);
		if (form != null && form.getImageType() != null) {
			model.addAttribute(
					"obj",
					imageFileService.findFkByForm(form.getImageType(),
							form.getFkId()));
			model.addAttribute(
					"resLst",
					imageFileService.findFkByForm(form.getImageType(),
							form.getFkId()));
			// model.addAttribute("form", uploadFileService.findFkByForm(form));
		}
		return super.list(form, result, model, pageable);
	}

	@Override
	public ImageFileService getService() {
		return imageFileService;
	}

	@RequestMapping(value = "/file_add", method = RequestMethod.GET)
	public ModelAndView toAdd(ImageFileForm form, BindingResult result,
			Model model) {
		model.addAttribute("form", form);
		// model.addAttribute("form", uploadFileService.findFkByForm(form));
		return super.toAdd(form, result, model);
	}

	@Autowired
	private FileServerConfig fsConfig;

	@RequestMapping(value = "/file_add", method = RequestMethod.POST)
	public ModelAndView add(
			UploadFileForm form,
			BindingResult result,
			@RequestParam(value = "fileName", required = false) MultipartFile fileName,
			Model model) {
		form.setType(FileTypeEnum.image);
		HttpUtils.uploadFile(fsConfig, fileName, form);
		fileUploadService.upload(form);
		if (form != null && form.getImageType() != null) {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix + "?fkId=" + form.getFkId()
					+ "&imageType=" + form.getImageType());
		} else {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix);
		}

	}

	@Override
	public ModelAndView delete(ImageFileForm form, BindingResult result,
			Model model) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("id")) {
					throw throwException(commonException.getIdNull());
				}
			}
		}
		getService().delete(form.getId());
		if (form != null && form.getImageType() != null) {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix + "?fkId=" + form.getFkId()
					+ "&imageType=" + form.getImageType());
		} else {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix);
		}
	}

}
