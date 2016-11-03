package cn.anlaser.web.impl;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.entity.CommonEntity;
import cn.anlaser.entity.RelatedEntity;
import cn.anlaser.form.RelatedForm;
import cn.anlaser.repository.RelatedRepository;
import cn.anlaser.service.RelatedService;
import cn.anlaser.web.RelatedAction;
import cn.wsalix.constant.Global;

public abstract class RelatedActionImpl<Form extends RelatedForm, Service extends RelatedService<Form, Repository, Entity, Prefix, Postfix>, Repository extends RelatedRepository<Form, Entity,Prefix, Postfix>, Entity extends RelatedEntity<Prefix, Postfix>, Prefix extends CommonEntity, Postfix extends CommonEntity>
		implements
		RelatedAction<Form, Service, Repository, Entity, Prefix, Postfix> {
	@Override
	public String module() {
		return getService().module();
	}

	@Override
	public ModelAndView relatedList(Entity entity, Model model) {
		boolean allBlank = true;
		if (entity.getPreFixId() != null && entity.getPreFixId() != 0) {
			allBlank = false;
		}
		if (entity.getPostFixId() != null && entity.getPostFixId() != 0) {
			allBlank = false;
		}
		if (allBlank) {
			// throw Global.getException("", new RuntimeException());
		}
		List<Entity> relateds = null;
		if (entity.getPreFixId() != null && !entity.getPreFixId().equals("")) {
			model.addAttribute(preFix(),
					getService().findPreFix(entity.getPreFixId()));
		}
		if (entity.getPostFixId() != null && !entity.getPostFixId().equals("")) {
			model.addAttribute(postFix(),
					getService().findPostFix(entity.getPostFixId()));
		}
		relateds = getService().findRelateds(entity);
		model.addAttribute(related(), relateds);
		return new ModelAndView(module() + "/list");
	}

	@Override
	public ModelAndView relatedAdd(Entity entity, Model model) {
		if (entity.getPreFixId() != null && !entity.getPreFixId().equals("")) {
			model.addAttribute(preFix(),
					getService().findPreFix(entity.getPreFixId()));
			List<Postfix> unPostFixs = getService().findUnPostFix(
					entity.getPreFixId());
			model.addAttribute("unPostFixs", unPostFixs);
		}
		if (entity.getPostFixId() != null && !entity.getPostFixId().equals("")) {
			model.addAttribute(postFix(),
					getService().findPostFix(entity.getPostFixId()));
			List<Prefix> unPreFixs = getService().findUnPreFix(
					entity.getPostFixId());
			model.addAttribute("unPreFixs", unPreFixs);
		}
		return new ModelAndView(module() + "/edit");
	}

	@Override
	public String setRelated(Form form) {
		// Entity entity = BeanMapper.map(form, getService().getEntityClazz());
		getService().setRelated(form);
		return "ok";
	}

	@Override
	public ModelAndView removeRelated(Form form) {
		getService().removeRelated(form);
		if (form.getPreFixId() != null && form.getPreFixId() != 0) {
			return new ModelAndView("redirect:/" + module() + "/related_list"
					+ Global.urlSuffix + "?preFixId=" + form.getPreFixId());
		}
		if (form.getPostFixId() != null && form.getPostFixId() != 0) {
			return new ModelAndView("redirect:/" + module() + "/related_list"
					+ Global.urlSuffix + "?postFixId=" + form.getPreFixId());
		}
		return new ModelAndView("redirect:/" + module() + "/related_list"
				+ Global.urlSuffix);

	}

}
