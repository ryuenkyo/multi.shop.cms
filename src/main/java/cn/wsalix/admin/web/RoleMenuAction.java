package cn.wsalix.admin.web;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.RelatedActionImpl;
import cn.wsalix.admin.entity.RoleMenu;
import cn.wsalix.admin.entity.SysMenu;
import cn.wsalix.admin.entity.SysRole;
import cn.wsalix.admin.form.RoleMenuForm;
import cn.wsalix.admin.repository.RoleMenuRepository;
import cn.wsalix.admin.service.RoleMenuService;

@Controller
@RequestMapping(value = "/admin/role_menu")
public class RoleMenuAction
		extends
		RelatedActionImpl<RoleMenuForm, RoleMenuService, RoleMenuRepository, RoleMenu, SysRole,SysMenu>{
	private static final Logger logger = LoggerFactory
			.getLogger(RoleMenuAction.class);
	@Autowired
	private RoleMenuService roleMenuService;

	@Override
	public RoleMenuService getService() {
		return roleMenuService;
	}

/*	@ModelAttribute()
	public void modelAttribute(
			Model model,
			@CookieValue(value = "JSESSIONID", defaultValue = "") String jsessionId,
			@RequestHeader(value = "User-Agent", defaultValue = "") String userAgent) {
		model.addAttribute("jsessionId", jsessionId);
		model.addAttribute("userAgent", userAgent);
		module.setName("user");
		module.setTitle("用户管理");
		model.addAttribute("module", module);
	}*/

	@RequestMapping(value = "/menus", method = RequestMethod.GET)
	public ModelAndView findMenusByRoleId(@RequestParam("roleId") Long roleId, Model model,
			Pageable pageable) {
		RoleMenuForm form = new RoleMenuForm();
		form.setRoleId(roleId);
		return roleMenus(form, null, model, pageable);
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView roleMenus(@Valid RoleMenuForm form,
			BindingResult result, Model model, Pageable pageable) {
/*		RoleMenu roleMenu = new RoleMenu();
		roleMenu.setPreFixId(form.getRoleId());
		roleMenu.setPostFixId(form.getMenuId());*/
		return relatedList(form, model);
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView roleMenuEdit(RoleMenuForm form, BindingResult result,
			Model model, Pageable pageable) {
/*		RoleMenu roleMenu = new RoleMenu();
		roleMenu.setPreFixId(form.getRoleId());
		roleMenu.setPostFixId(form.getMenuId());*/
		return relatedAdd(form, model);
	}

	@Override
	public String preFix() {
		return "role";
	}

	@Override
	public String postFix() {
		return "menu";
	}

	@Override
	public String related() {
		return "roleMenu";
	}

}
