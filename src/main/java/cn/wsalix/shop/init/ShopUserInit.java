package cn.wsalix.shop.init;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.form.UserForm;
import cn.wsalix.admin.init.UserInit;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.admin.status.UserEnum;
import cn.wsalix.admin.type.CodeOperaEnum;
import cn.wsalix.observable.service.RegisterService;

@Service("shopUserInit")
public class ShopUserInit implements UserInit {
	public static SysUser adminUser = new SysUser("admin", "1234");
	@Value("${admin.account}")
	private String adminAccount;

	@Value("${admin.account.password}")
	private String adminAccountPassword;
	@Autowired
	private RegisterService registerService;
	@Autowired
	private UserService userService;

	@Transactional
	public void init(boolean create) {
		if (create) {
			UserForm form = new UserForm();
			form.setUsername(adminAccount);
			form.setPassword(adminAccountPassword);
			// form.setUserType(UserTypeEnum.back);
			form.setStatus(UserEnum.invocation);
			form.setOperateType(CodeOperaEnum.register);
			form.setCreate(true);
			registerService.register(form);
		} else {
			adminUser = userService.findByUsername(adminUser.getUsername());
		}
	}

}
