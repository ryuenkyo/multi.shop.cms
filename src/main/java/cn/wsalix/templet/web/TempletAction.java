package cn.wsalix.templet.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.CommonActionImpl;
import cn.wsalix.templet.entity.Templet;
import cn.wsalix.templet.form.TempletForm;
import cn.wsalix.templet.repository.TempletRepository;
import cn.wsalix.templet.service.TempletService;
import cn.wsalix.type.TempletEnum;

@Controller
@RequestMapping(value = "/templet/templet")
public class TempletAction
		extends
		CommonActionImpl<TempletForm, TempletService, TempletRepository, Templet> {
	@Autowired
	private TempletService templetService;

	@Override
	public TempletService getService() {
		return templetService;
	}

	@Override
	public ModelAndView toAdd(TempletForm form, BindingResult result,
			Model model) {
		model.addAttribute("typeLst", TempletEnum.values());
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView toEdit(TempletForm form, BindingResult result,
			Model model) {
		model.addAttribute("typeLst", TempletEnum.values());
		return super.toEdit(form, result, model);
	}

}
