package cn.anlaser.web;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.entity.SimpleEntity;
import cn.anlaser.form.SimpleForm;
import cn.anlaser.repository.SimpleRepository;
import cn.anlaser.service.SimpleService;

public interface SimpleAction<Form extends SimpleForm,Service extends SimpleService<Form,Repository, Entity>, Repository extends SimpleRepository<Entity>, Entity extends SimpleEntity>
		extends CommonAction<Form,Service, Repository, Entity> {
	@RequestMapping(value = "/logic_del", method = RequestMethod.GET)
	public ModelAndView logicDelete(@RequestParam("id") Long id, Model model);
}
