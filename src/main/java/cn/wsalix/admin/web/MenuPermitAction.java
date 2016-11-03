package cn.wsalix.admin.web;

import java.util.List;

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
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.RelatedActionImpl;
import cn.wsalix.admin.entity.MenuPermit;
import cn.wsalix.admin.entity.Permit;
import cn.wsalix.admin.entity.RoleMenu;
import cn.wsalix.admin.entity.SysMenu;
import cn.wsalix.admin.entity.UserRole;
import cn.wsalix.admin.form.MenuPermitForm;
import cn.wsalix.admin.form.RoleMenuForm;
import cn.wsalix.admin.form.UserRoleForm;
import cn.wsalix.admin.repository.MenuPermitRepository;
import cn.wsalix.admin.service.MenuPermitService;
import cn.wsalix.admin.service.MenuService;
import cn.wsalix.admin.service.PermitService;
import cn.wsalix.observable.service.RegisterService;

@Controller
@RequestMapping(value = "/admin/menu_permit")
public class MenuPermitAction
		extends
		RelatedActionImpl<MenuPermitForm, MenuPermitService, MenuPermitRepository, MenuPermit, SysMenu, Permit> {
	private static final Logger logger = LoggerFactory
			.getLogger(MenuPermitAction.class);
	@Autowired
	private RegisterService userRegisterService;

	@Autowired
	private MenuPermitService menuPermitService;

	@Autowired
	private PermitService permitService;
	@Autowired
	private MenuService menuService;

	@Override
	public MenuPermitService getService() {
		return menuPermitService;
	}

	/*
	 * @Override public ModelAndView toAdd(MenuPermitForm form, BindingResult
	 * result, Model model) { if (form.getMenuId() != null) { List<Permit>
	 * permits = permitService.findUnsByMenuId(form .getMenuId());
	 * model.addAttribute("permits", permits); } if (form.getPermitId() != null)
	 * { List<SysMenu> menus = menuService.findUnsByPermitId(form
	 * .getPermitId()); model.addAttribute("menus", menus); } return
	 * super.toAdd(form, result, model); }
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView userRoles(@Valid MenuPermitForm form,
			BindingResult result, Model model, Pageable pageable) {
		MenuPermit related = new MenuPermit();
		related.setPreFixId(form.getMenuId());
		related.setPostFixId(form.getPermitId());
		return relatedList(related, model);
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView roleMenuEdit(MenuPermitForm form, BindingResult result,
			Model model, Pageable pageable) {
		MenuPermit related = new MenuPermit();
		related.setPreFixId(form.getMenuId());
		related.setPostFixId(form.getPermitId());
		return relatedAdd(related, model);
	}

	@Override
	public String preFix() {
		return "menu";
	}

	@Override
	public String postFix() {
		return "permit";
	}

	@Override
	public String related() {
		return "menuPermit";
	}

}
