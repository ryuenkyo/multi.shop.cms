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
import cn.anlaser.utils.HttpUtils;
import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.biz.entity.UploadFile;
import cn.wsalix.biz.repository.UploadFileRepository;
import cn.wsalix.biz.service.UploadFileService;
import cn.wsalix.constant.Global;
import cn.wsalix.observable.service.FileUploadService;

@Controller
@RequestMapping(value = "/biz/upload_file")
public class UploadFileAction
		extends
		SimpleActionImpl<UploadFileForm, UploadFileService, UploadFileRepository, UploadFile> {
	@Autowired
	private UploadFileService uploadFileService;
	@Autowired
	private FileUploadService fileUploadService;

	@ModelAttribute("prefix")
	public void prefix(Model model) {
		// model.addAttribute("statusLst", FileEnum.values());
		// model.addAttribute("typeLst", FileTypeEnum.values());
	}

	@Override
	public ModelAndView list(UploadFileForm form, BindingResult result,
			Model model, Pageable pageable) {
		model.addAttribute("form", form);
		if (form != null && form.getType() != null) {
			//model.addAttribute("form", uploadFileService.findFkByForm(form));
		}
		return super.list(form, result, model, pageable);
	}

	@Override
	public UploadFileService getService() {
		return uploadFileService;
	}

	@RequestMapping(value = "/file_add", method = RequestMethod.GET)
	public ModelAndView toAdd(UploadFileForm form, BindingResult result,
			Model model) {
		model.addAttribute("form", form);
		//model.addAttribute("form", uploadFileService.findFkByForm(form));
		return super.toAdd(form, result, model);
	}

	@Autowired
	private FileServerConfig fsConfig;
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody String upload(
			UploadFileForm form,
			BindingResult result,
			@RequestParam(value = "fileName", required = false) MultipartFile fileName,
			Model model) {
		HttpUtils.uploadFile(fsConfig, fileName, form);
		fileUploadService.upload(form);
		return form.getHttpUrl();
	}

	
	@RequestMapping(value = "/file_add", method = RequestMethod.POST)
	public ModelAndView add(
			UploadFileForm form,
			BindingResult result,
			@RequestParam(value = "fileName", required = false) MultipartFile fileName,
			Model model) {
		HttpUtils.uploadFile(fsConfig, fileName, form);
		fileUploadService.upload(form);
		if (form != null && form.getType() != null) {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix + "?fkId=" + form.getFkId() + "&type="
					+ form.getType());
		} else {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix);
		}

	}

	@Override
	public ModelAndView delete(UploadFileForm form, BindingResult result,
			Model model) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("id")) {
					throw throwException(commonException.getIdNull());
				}
			}
		}
		getService().delete(form.getId());
		if (form != null && form.getType() != null) {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix + "?fkId=" + form.getFkId() + "&type="
					+ form.getType());
		} else {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix);
		}
	}

}
