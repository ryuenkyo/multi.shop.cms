package cn.wsalix.weixin.web;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.annotation.Token;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.constant.Global;
import cn.wsalix.weixin.WxSimpleAction;
import cn.wsalix.weixin.entity.WxConfig;
import cn.wsalix.weixin.form.WxConfigForm;
import cn.wsalix.weixin.repository.WxConfigRepository;
import cn.wsalix.weixin.service.WxConfigService;
@RequiresRoles("weixin:config")
@Controller
@RequestMapping(value = "/weixin/config")
public class WxConfigAction
		extends
		WxSimpleAction<WxConfigForm, WxConfigService, WxConfigRepository, WxConfig> {
	@Autowired
	private WxConfigService wxConfigService;
	@Autowired
	private UserService userService;

	@Override
	public WxConfigService getService() {
		return wxConfigService;
	}
	
	//@RequiresPermissions("weixin:config:list")
	@Override
	public ModelAndView list(WxConfigForm form,BindingResult result, Model model, Pageable pageable) {
		model.addAttribute("user", userService.findById(form.getUserId()));
		return super.list(form, result,model, pageable);
	}
	//@RequiresPermissions("weixin:config:add")
	@Override
	public ModelAndView toAdd(WxConfigForm form, BindingResult result,
			Model model) {
		model.addAttribute("user", userService.findById(form.getUserId()));
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView add(WxConfigForm form, BindingResult result,RedirectAttributes ra, Model model) {
		SysUser user = userService.findById(form.getUserId());
		super.add(form, result, ra,model);
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix + "?userId=" + user.getId());
	}

	@Override
	public ModelAndView delete(WxConfigForm form, BindingResult result,
			Model model) {
		WxConfig WxConfig = wxConfigService.findById(form.getId());
		super.delete(form, result, model);
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix + "?userId=" + WxConfig.getUser().getId());

	}

	@Override
	public ModelAndView edit(Long id, WxConfigForm form, BindingResult result,RedirectAttributes ra,
			Model model) {
		WxConfig WxConfig = wxConfigService.findById(form.getId());
		super.edit(id, form, result,ra, model);
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix + "?userId=" + WxConfig.getUser().getId());
	}

	@Token(save = true)
	@RequestMapping(value = "/{userId}/", method = RequestMethod.GET)
	public ModelAndView addByUserId(@PathVariable Long userId,
			WxConfigForm wxConfigForm, BindingResult result, Model model) {
		SysUser user = userService.findById(userId);
		model.addAttribute("user", user);
		return super.toAdd(wxConfigForm, result, model);
	}

	@Token(remove = true)
	@RequestMapping(value = "/{userId}/", method = RequestMethod.POST)
	public ModelAndView addByUser(@PathVariable Long userId,
			WxConfigForm wxConfigForm, BindingResult result,RedirectAttributes ra, Model model) {
		SysUser user = userService.findById(userId);
		wxConfigForm.setUser(user);
		return super.add(wxConfigForm, result,ra, model);
	}

}
