package cn.anlaser.web;

import javax.validation.Valid;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.AbstractPersistable;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.annotation.Token;
import cn.anlaser.exception.NutException;
import cn.anlaser.form.CommonForm;
import cn.anlaser.repository.CommonRepository;
import cn.anlaser.service.CommonService;

public interface CommonAction<Form extends CommonForm, Service extends CommonService<Form, Repository, Entity>, Repository extends CommonRepository<Entity>, Entity extends AbstractPersistable<Long>> {

	public Service getService();

	public String module();

	public void toAddNew(Model model);

	@RequestMapping(value = "/item", method = RequestMethod.GET)
	public ModelAndView item(@Valid Form form, BindingResult result, Model model);

	@RequestMapping(value = "/item/{id}", method = RequestMethod.GET)
	public ModelAndView toItem(@PathVariable("id") Long id, Model model);

	@Token(save = true)
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView toAdd(@Valid Form form, BindingResult result,
			Model model);

	@Token(remove = true)
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView add(@Valid Form form, BindingResult result,
			RedirectAttributes ra, Model model);

	@Token(save = true)
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView toEdit(@Valid Form form, BindingResult result,
			Model model);

	@Token(remove = true)
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public ModelAndView edit(@RequestParam("id") Long id, @Valid Form form,
			BindingResult result, RedirectAttributes ra, Model model);

	@Token(save = true)
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list(@Valid Form form, BindingResult result,
			Model model, Pageable pageable);

	@Token(remove = true)
	@RequestMapping(value = "/query", method = RequestMethod.POST)
	public ModelAndView query(@Valid Form form, BindingResult result,
			Model model, Pageable pageable);

	@RequestMapping(value = "/del", method = RequestMethod.GET)
	public ModelAndView delete(@Valid Form form, BindingResult result,
			Model model);

	/**
	 * @param message
	 * @return
	 */
	public NutException throwException(String message);
}
