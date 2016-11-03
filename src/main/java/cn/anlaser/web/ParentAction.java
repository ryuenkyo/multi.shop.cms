package cn.anlaser.web;

import javax.validation.Valid;

import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.entity.ParentEntity;
import cn.anlaser.form.ParentForm;
import cn.anlaser.repository.ParentRepository;
import cn.anlaser.service.ParentService;

public interface ParentAction<Form extends ParentForm, Service extends ParentService<Form, Repository, Entity>, Repository extends ParentRepository<Entity>, Entity extends ParentEntity<Entity>>
		extends CommonAction<Form, Service, Repository, Entity> {
	@RequestMapping(value = "/parent", method = RequestMethod.GET)
	public ModelAndView parentTop(@Valid Form form, BindingResult result,
			Model model, Pageable pageable);

	@RequestMapping(value = "/parent", method = RequestMethod.POST)
	public ModelAndView listByParent(@Valid Form form, BindingResult result,
			Model model, Pageable pageable);

	@RequestMapping(value = "/parent/add", method = RequestMethod.GET)
	public ModelAndView parentToAdd(@Valid Form form, BindingResult result,
			Model model);

	@RequestMapping(value = "/parent/add", method = RequestMethod.POST)
	public ModelAndView parentAdd(@Valid Form form, BindingResult result,
			Model model);
}
