package cn.anlaser.web;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.entity.CommonEntity;
import cn.anlaser.entity.RelatedEntity;
import cn.anlaser.form.RelatedForm;
import cn.anlaser.repository.RelatedRepository;
import cn.anlaser.service.RelatedService;

public interface RelatedAction<Form extends RelatedForm, Service extends RelatedService<Form, Repository, Entity, Prefix, Postfix>, Repository extends RelatedRepository<Form, Entity, Prefix, Postfix>, Entity extends RelatedEntity<Prefix, Postfix>, Prefix extends CommonEntity, Postfix extends CommonEntity> {

	public Service getService();

	public String module();

	@RequestMapping(value = "/related_list", method = RequestMethod.GET)
	public ModelAndView relatedList(Entity entity, Model model);

	@RequestMapping(value = "/related_add", method = RequestMethod.GET)
	public ModelAndView relatedAdd(Entity entity, Model model);

	@RequestMapping(value = "/set_related", method = RequestMethod.GET)
	public @ResponseBody String setRelated(Form form);

	@RequestMapping(value = "/remove_related", method = RequestMethod.GET)
	public ModelAndView removeRelated(Form form);

	public String preFix();

	public String postFix();

	public String related();
}
