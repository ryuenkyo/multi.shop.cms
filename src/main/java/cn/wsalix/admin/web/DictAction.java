package cn.wsalix.admin.web;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.ParentActionImpl;
import cn.wsalix.admin.entity.SysDict;
import cn.wsalix.admin.form.DictForm;
import cn.wsalix.admin.repository.DictRepository;
import cn.wsalix.admin.service.DictService;
import cn.wsalix.admin.status.DictEnum;
import cn.wsalix.annotation.Menu;
import cn.wsalix.constant.Global;

//@Menu(code="admin:dict",name="字典管理")
@Controller
@RequestMapping(value = "/admin/dict")
@RequiresRoles("admin:dict")
public class DictAction extends
		ParentActionImpl<DictForm, DictService, DictRepository, SysDict> {
	@Autowired
	private DictService dictService;

	@Override
	public DictService getService() {
		return dictService;
	}

	@Menu(code = "admin:dict")
	@Override
	public ModelAndView list(DictForm form, BindingResult result, Model model,
			Pageable pageable) {
		// TODO Auto-generated method stub
		return super.list(form, result, model, pageable);
	}

	@Override
	public ModelAndView parentToAdd(DictForm form, BindingResult result,
			Model model) {
		model.addAttribute("dictStatus", DictEnum.values());
		return super.parentToAdd(form, result, model);
	}

	@Menu(code = "admin:dict")
	@Override
	public ModelAndView toAdd(DictForm form, BindingResult result, Model model) {
		model.addAttribute("dictStatus", DictEnum.values());
		return super.toAdd(form, result, model);
	}

	@Menu(code = "admin:dict")
	@Override
	public ModelAndView toEdit(DictForm form, BindingResult result, Model model) {
		model.addAttribute("dictStatus", DictEnum.values());
		return super.toEdit(form, result, model);
	}

	@Menu(code = "admin:dict")
	@Override
	public ModelAndView parentTop(DictForm form, BindingResult result,
			Model model, Pageable pageable) {
		model.addAttribute("dictStatus", DictEnum.values());
		return super.parentTop(form, result, model, pageable);
	}

	@RequestMapping(value = { "/forbidden" }, method = RequestMethod.GET)
	public ModelAndView forbidden(DictForm form, BindingResult result,
			Model model) {
		dictService.forbidden(form.getId());
		return new ModelAndView("redirect:/admin/dict/list" + Global.urlSuffix);
	}
	
	@RequestMapping(value = { "/invocation" }, method = RequestMethod.GET)
	public ModelAndView invocation(DictForm form, BindingResult result,
			Model model) {
		dictService.invocation(form.getId());
		return new ModelAndView("redirect:/admin/dict/list" + Global.urlSuffix);
	}

}
