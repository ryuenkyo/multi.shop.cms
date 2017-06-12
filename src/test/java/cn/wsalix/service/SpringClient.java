package cn.wsalix.service;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.wsalix.admin.form.RoleForm;
import cn.wsalix.admin.form.UserForm;
import cn.wsalix.admin.service.RoleService;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.admin.status.UserEnum;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.shiro.token.CaptchaToken;
import cn.wsalix.shop.init.ShopRoleInit;

/**
 * @author jskyme http://blog.csdn.net/z69183787/article/details/22176277
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/application-context.xml" })
@ActiveProfiles("dev")
public class SpringClient extends AbstractTransactionalJUnit4SpringContextTests {
	public final Logger logger = LoggerFactory
			.getLogger(getClass());
	@Autowired
	UserService userService;
	
	@Autowired
	RoleService roleService;
	@Autowired ShopRoleInit shopRoleInit;
	@Autowired RegisterService registerService;
	@Test
	public void findAll() {
		logger.info("...");
		userService.findAll();
	}
	
	@Test
	@Rollback(false)
	public void tetsUserAdd() {
		UserForm form=new UserForm();
		form.setUsername("admin");
		form.setPassword("1234");
		form.setRole(shopRoleInit.getClientRole());
		form.setStatus(UserEnum.invocation);
		registerService.register(form);
		userService.findAll();
	}
	
	@Test
	@Rollback(false)
	public void tetsRoleAdd() {
		RoleForm form=new RoleForm();
		form.setCode("admin");
		form.setName("admin");
		roleService.add(form);
/*		roleService.findAll();
		form.setCode("client");
		form.setName("client");
		roleService.add(form);*/
	}
	public void login(String username, String password) {
		SecurityUtils
				.setSecurityManager((DefaultWebSecurityManager) applicationContext
						.getBean("securityManager"));
		Subject subject = SecurityUtils.getSubject();
		CaptchaToken upToken = new CaptchaToken();
		upToken.setUsername(username);
		upToken.setPassword(password.toCharArray());
		subject.login(upToken);
	}
}
