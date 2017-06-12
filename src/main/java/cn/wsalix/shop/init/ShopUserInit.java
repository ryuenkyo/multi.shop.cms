package cn.wsalix.shop.init;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.anlaser.exception.NutException;
import cn.wsalix.admin.entity.SysRole;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.form.UserForm;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.admin.status.UserEnum;
import cn.wsalix.init.RoleInit;
import cn.wsalix.init.UserInit;
import cn.wsalix.observable.service.RegisterService;

@Service("shopUserInit")
public class ShopUserInit implements UserInit {
	private SysUser adminUser;

	@Autowired
	private RegisterService registerService;
	@Autowired
	private UserService userService;
	@Autowired
	private RoleInit roleInit;

	@Transactional
	public void init(boolean create) {
		adminUser = userService.findByUsername("admin");
		if (adminUser == null) {
			UserForm userForm = new UserForm();
			userForm.setUsername("admin");
			userForm.setPassword("1234");
			userForm.setRoleId(roleInit.getClientRole().getId());
			registerService.register(userForm);
		}
	}

	@Transactional
	private void insertUser(SysUser user, SysRole role) {
		UserForm form = new UserForm();
		form.setUsername(user.getUsername());
		form.setPassword(user.getPassword());
		form.setStatus(UserEnum.invocation);
		form.setRole(role);
		try {
			registerService.register(form);
		} catch (NutException nut) {

		}
	}

	@Override
	public String index(SysUser user) {
		if (user.getRole() != null) {
			return "/" + user.getRole().getCode() + "/index";
		}
		return "/client/index";
	}

	@Override
	public SysUser getAdmin() {
		return adminUser;
	}

}
