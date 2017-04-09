package cn.anlaser.web.impl;

import javax.validation.Valid;

import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.entity.ParentEntity;
import cn.anlaser.form.ParentForm;
import cn.anlaser.page.QueryPage;
import cn.anlaser.repository.ParentRepository;
import cn.anlaser.service.ParentService;
import cn.anlaser.web.ParentAction;
import cn.wsalix.constant.Global;

public abstract class ParentActionImpl<Form extends ParentForm, Service extends ParentService<Form, Repository, Entity>, Repository extends ParentRepository<Entity>, Entity extends ParentEntity<Entity>>
		extends CommonActionImpl<Form, Service, Repository, Entity> implements
		ParentAction<Form, Service, Repository, Entity> {
	@ModelAttribute()
	public void previous(Model model, Form form) {
		/*
		 * Menu annotation = this.getClass().getAnnotation(Menu.class); if
		 * (annotation != null) { SysMenu menu =
		 * menuService.findByCode(annotation.code());
		 * model.addAttribute("currMenu", menu); }
		 */
		// model.addAttribute("dataEnums", DataEnum.values());
	}

	@Override
	public ModelAndView parentTop(Form form, BindingResult result, Model model,
			Pageable pageable) {
		if (form == null || form.getParentId() == null) {
			QueryPage<Entity> resPage = getService().findParentTop(form,pageable);
			model.addAttribute("queryLine", resPage.getQueryLine());
			model.addAttribute("resLst", resPage.getPage());
		} else {
			model.addAttribute("parent",
					getService().findById(form.getParentId()));

			QueryPage<Entity> resPage = getService().findByParent(form,
					pageable);
			model.addAttribute("queryLine", resPage.getQueryLine());
			model.addAttribute("resLst", resPage.getPage());
		}
		return new ModelAndView(module() + "/list");
	}

	@Override
	public ModelAndView parentToAdd(@Valid Form form, BindingResult result,
			Model model) {
		model.addAttribute("parent", getService().findById(form.getParentId()));
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView listByParent(Form form, BindingResult result,
			Model model, Pageable pageable) {
		form.setParentId(form.getParentId());
		QueryPage<Entity> resPage = getService().findByParent(form, pageable);

		model.addAttribute("queryLine", resPage.getQueryLine());
		model.addAttribute("resLst", resPage.getPage());
		return new ModelAndView(module() + "/list");
	}

	@Override
	public ModelAndView parentAdd(Form form, BindingResult result, Model model) {
		getService().add(form);
		return new ModelAndView("redirect:/" + module() + "/parent"
				+ Global.urlSuffix + "?parentId=" + form.getParentId());
	}

	@Override
	public ModelAndView add(Form form, BindingResult result, RedirectAttributes ra,Model model) {
		getService().add(form);
		if (form.getParentId() != null) {
			model.addAttribute("parent",
					getService().findById(form.getParentId()));
			return new ModelAndView("redirect:/" + module() + "/parent"
					+ Global.urlSuffix + "?parentId=" + form.getParentId());
		} else {
			return new ModelAndView("redirect:/" + module() + "/parent"
					+ Global.urlSuffix);
		}

	}

	@Override
	public ModelAndView edit(Long id, Form form, BindingResult result,RedirectAttributes ra,
			Model model) {
		// TODO Auto-generated method stub
		if (id == null || id == 0) {
			throw throwException(commonException.getIdNull());
		}
		// Entity entity = BeanMapper.map(srcEntity, UserVO.class);
		Entity entity = getService().edit(form);
		if (entity.getParent() != null) {
			return new ModelAndView("redirect:/" + module() + "/parent"
					+ Global.urlSuffix + "?parentId="
					+ entity.getParent().getId());
		} else {
			return new ModelAndView("redirect:/" + module() + "/parent"
					+ Global.urlSuffix);
		}
		/*
		 * return new ModelAndView("redirect:/" + module() + "/list" +
		 * Global.urlSuffix + "?parentId=" + form.getParentId());
		 */
	}

	@Override
	public ModelAndView list(Form form, BindingResult result, Model model,
			Pageable pageable) {
		// TODO Auto-generated method stub
		return super.list(form, result, model, pageable);
	}

	@Override
	public ModelAndView delete(@Valid Form form, BindingResult result,
			Model model) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("id")) {
					throw throwException(commonException.getIdNull());
				}
			}
		}
		getService().delete(form.getId());
		if (form.getParentId() != null) {
			return new ModelAndView("redirect:/" + module() + "/parent"
					+ Global.urlSuffix + "?parentId=" + form.getParentId());
		} else {
			return new ModelAndView("redirect:/" + module() + "/parent"
					+ Global.urlSuffix);
		}

	}

}
