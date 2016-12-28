package cn.anlaser.web.impl;


import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.entity.BasicEntity;
import cn.anlaser.exception.NutException;
import cn.anlaser.form.CommonForm;
import cn.anlaser.page.QueryPage;
import cn.anlaser.repository.BasicRepository;
import cn.anlaser.service.BasicService;
import cn.anlaser.status.DataEnum;
import cn.anlaser.web.BasicAction;
import cn.wsalix.constant.Global;
import cn.wsalix.exception.CommonException;
import cn.wsalix.utils.UserUtils;

public abstract class BasicActionImpl<Form extends CommonForm, Service extends BasicService<Form, Repository, Entity>, Repository extends BasicRepository<Entity>, Entity extends BasicEntity>
		implements BasicAction<Form, Service, Repository, Entity> {
	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	protected CommonException commonException;
	@Autowired
	protected UserUtils userUtils;
	protected String module() {
		return getService().module();
	}

	private String rel;
	private String callbackType;
	public void changeMenu(Model model){
		/*Menu annotation = this.getClass().getAnnotation(Menu.class);
		if (annotation != null) {
			
		}	*/
	}
	@ModelAttribute()
	public void previous(Model model,Form form){
		/*Menu annotation = this.getClass().getAnnotation(Menu.class);
		if (annotation != null) {
			
		}*/
		model.addAttribute("dataEnums", DataEnum.values());	
	}

	@Override
	public ModelAndView item(@Valid Form form, BindingResult result, Model model) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("id")) {
					throw throwException(commonException.getIdNull());
				}
			}
		}
		Entity entity = getService().findById(form.getId());
		model.addAttribute("form", entity);
		return new ModelAndView(module() + "/item");
	}

	@Override
	public ModelAndView toItem(Long id,Model model) {
		if (id == null || id == 0) {
			throw throwException(commonException.getIdNull());
		}
		Entity entity = getService().findById(id);
		model.addAttribute("form", entity);
		return new ModelAndView(module() + "/item");
	}

	@Override
	public ModelAndView toAdd(@Valid Form form, BindingResult result,Model model) {
		return new ModelAndView(module() + "/add");
	}

	@Override
	public ModelAndView add(@Valid Form form, BindingResult result,
			Model model) {
		getService().add(form);
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

	@Override
	public ModelAndView toEdit(@Valid Form form, BindingResult result, Model model) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("id")) {
					throw throwException(commonException.getIdNull());
				}
			}
		}
		model.addAttribute("form", getService().findById(form.getId()));
		return new ModelAndView(module() + "/edit");
	}

	@Override
	public ModelAndView edit(Long id, Form form, BindingResult result,
			Model model) {
		if (id == null || id == 0) {
			throw throwException(commonException.getIdNull());
		}
		//Entity srcEntity = getService().findById(id);
		// Entity entity = BeanMapper.map(srcEntity, UserVO.class);
		getService().edit(form);
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

	@Override
	public ModelAndView list(Form form, Model model, Pageable pageable) {
		QueryPage<Entity> resPage = getService().findAll(form, pageable);
		model.addAttribute("queryLine", resPage.getQueryLine());
		model.addAttribute("resLst", resPage.getPage());
		model.addAttribute("pageSize", resPage.getPage().getContent().size());
		return new ModelAndView(module() + "/list");
	}

	@Override
	public ModelAndView query(Form form, Model model, Pageable pageable) {
		QueryPage<Entity> resPage = getService().findAll(form, pageable);
		model.addAttribute("queryLine", resPage.getQueryLine());
		model.addAttribute("resLst", resPage.getPage());
		model.addAttribute("pageSize", resPage.getPage().getContent().size());
		return new ModelAndView(module() + "/list");
	}

	@Override
	public ModelAndView delete(@Valid Form form,BindingResult result,Model model) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("id")) {
					throw throwException(commonException.getIdNull());
				}
			}
		}
		getService().delete(form.getId());
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

	public NutException throwException(String message) {
		return new NutException("",message);
	}
	/*
	 * protected ModelAndView ajaxDoneSuccess(String message) { return
	 * ajaxDone(200, message, ""); }
	 * 
	 * protected ModelAndView ajaxDoneError(String message) { return
	 * ajaxDone(300, message, ""); }
	 * 
	 * protected ModelAndView ajaxDone(int statusCode, String message, String
	 * navTabId, String rel, String callbackType, String forwardUrl, String
	 * confirmMsg) { ModelAndView mav = new ModelAndView("ajaxDone");
	 * mav.addObject("statusCode", statusCode); mav.addObject("message",
	 * message); mav.addObject("navTabId", navTabId); mav.addObject("rel", rel);
	 * mav.addObject("callbackType", callbackType); mav.addObject("forwardUrl",
	 * forwardUrl); mav.addObject("confirmMsg", confirmMsg); return mav; }
	 * 
	 * protected ModelAndView ajaxDone(int statusCode, String message, String
	 * forwardUrl) { ModelAndView mav = new ModelAndView("ajaxDone");
	 * mav.addObject("statusCode", statusCode); mav.addObject("message",
	 * message); mav.addObject("forwardUrl", forwardUrl); return mav; }
	 */
}
