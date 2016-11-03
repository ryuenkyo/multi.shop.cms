package cn.wsalix.admin.web;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.ParentActionImpl;
import cn.wsalix.admin.entity.SysRole;
import cn.wsalix.admin.form.RoleForm;
import cn.wsalix.admin.repository.RoleRepository;
import cn.wsalix.admin.service.RoleService;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.admin.status.RoleEnum;
import cn.wsalix.annotation.Menu;

@Controller
@RequestMapping(value = "/admin/role")
@RequiresRoles("admin:role")
public class RoleAction extends
		ParentActionImpl<RoleForm, RoleService, RoleRepository, SysRole>{
	private static final Logger logger = LoggerFactory
			.getLogger(RoleAction.class);
	@Autowired
	private RoleService roleService;
	@Autowired
	private UserService userService;
	/*
	 * @RequestMapping(value = "/user_role", method = RequestMethod.GET) public
	 * ModelAndView findRolesByUserId(RoleForm Long userId, Model model,
	 * Pageable pageable) ;
	 */
	/**
	 * @param roleId
	 * @param model
	 * @param pageable
	 * @return 查看当前角色包含的用户
	 */
	/*
	 * @RequestMapping(value = "/users", method = RequestMethod.GET) public
	 * ModelAndView findUsersByRoleId(@RequestParam("roleId") Long roleId, Model
	 * model, Pageable pageable);
	 */
	@Override
	public RoleService getService() {
		return roleService;
	}

	@Override
	public String module() {
		return "admin/role";
	}
	

	@Override
	public void previous(Model model, RoleForm form) {
		//model.addAttribute("roleStatus", RoleEnum.values());
		super.previous(model, form);
	}

	@Override
	public ModelAndView parentTop(RoleForm form, BindingResult result,
			Model model, Pageable pageable) {
		
		return super.parentTop(form, result, model, pageable);
	}
	@Menu(code="admin:role")
	@Override
	public ModelAndView list(RoleForm form, BindingResult result, Model model, Pageable pageable) {
		// TODO Auto-generated method stub
		return super.list(form,result, model, pageable);
	}
	@Menu(code="admin:role")
	@Override
	public ModelAndView toAdd(RoleForm form, BindingResult result, Model model) {
		model.addAttribute("roleStatus", RoleEnum.values());
		return super.toAdd(form, result, model);
	}
	@Menu(code="admin:role")
	@Override
	public ModelAndView toEdit(RoleForm form, BindingResult result, Model model) {
		model.addAttribute("roleStatus", RoleEnum.values());
		return super.toEdit(form, result, model);
	}

	/*
	 * @Override public ModelAndView findRolesByUserId(@RequestParam("userId")
	 * Long userId, Model model, Pageable pageable) { SysUser
	 * user=userService.findById(userId); model.addAttribute("user", user);
	 * model.addAttribute("roles", roleService.findRolesByUserId(userId));
	 * return new ModelAndView(module() + "/user_list"); }
	 */
	/*
	 * @Override public ModelAndView findUsersByRoleId(@RequestParam("roleId")
	 * Long roleId, Model model, Pageable pageable) {
	 * 
	 * return new ModelAndView(module() + "/add"); }
	 */
	/*
	 * @Override public ModelAndView findMenusByRoleId(@RequestParam("roleId")
	 * Long roleId, Model model, Pageable pageable) {
	 * 
	 * return new ModelAndView(module() + "/add"); }
	 */

}
