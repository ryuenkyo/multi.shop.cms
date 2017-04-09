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
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.RelatedActionImpl;
import cn.wsalix.admin.entity.SysRole;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.entity.UserRole;
import cn.wsalix.admin.form.UserRoleForm;
import cn.wsalix.admin.repository.UserRoleRepository;
import cn.wsalix.admin.service.UserRoleService;

@Controller
@RequestMapping(value = "/admin/user_role")
public class UserRoleAction
		extends
		RelatedActionImpl<UserRoleForm, UserRoleService, UserRoleRepository, UserRole, SysUser, SysRole> {
	private static final Logger logger = LoggerFactory
			.getLogger(UserRoleAction.class);
	@Autowired
	private UserRoleService userRoleService;

	@Override
	public UserRoleService getService() {
		return userRoleService;
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

	@RequestMapping(value = "/roles", method = RequestMethod.GET)
	public ModelAndView findRolesByUserId(Long userId, Model model,
			Pageable pageable) {
		UserRoleForm form = new UserRoleForm();
		form.setUserId(userId);
		return userRoles(form, null, model, pageable);
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView userRoles(@Valid UserRoleForm form,
			BindingResult result, Model model, Pageable pageable) {
/*		UserRole userRole = new UserRole();
		userRole.setPreFixId(form.getUserId());
		userRole.setPostFixId(form.getRoleId());*/
		

		form.setPreFixId(form.getUserId());
		form.setPostFixId(form.getRoleId());
		return relatedList(form, model);
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView userRoleEdit(UserRoleForm form, BindingResult result,
			Model model, Pageable pageable) {
		/*UserRole userRole = new UserRole();
		userRole.setPreFixId(form.getUserId());
		userRole.setPostFixId(form.getRoleId());*/
		
		form.setPreFixId(form.getUserId());
		form.setPostFixId(form.getRoleId());
		return relatedAdd(form, model);
	}

	@Override
	public String preFix() {
		return "user";
	}

	@Override
	public String postFix() {
		return "role";
	}

	@Override
	public String related() {
		return "userRole";
	}

}
