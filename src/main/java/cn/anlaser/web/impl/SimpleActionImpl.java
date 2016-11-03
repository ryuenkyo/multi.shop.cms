package cn.anlaser.web.impl;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.entity.SimpleEntity;
import cn.anlaser.form.SimpleForm;
import cn.anlaser.repository.SimpleRepository;
import cn.anlaser.service.SimpleService;
import cn.anlaser.web.SimpleAction;
import cn.wsalix.constant.Global;

public abstract class SimpleActionImpl<Form extends SimpleForm, Service extends SimpleService<Form, Repository, Entity>, Repository extends SimpleRepository<Entity>, Entity extends SimpleEntity>
		extends CommonActionImpl<Form, Service, Repository, Entity> implements
		SimpleAction<Form, Service, Repository, Entity> {

	@Override
	public ModelAndView logicDelete(@RequestParam("id") Long id, Model model) {
		if (id == null || id == 0) {
			throw throwException(commonException.getIdNull());
		}
		getService().logicDelete(id);
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

}
