package cn.wsalix.service.admin;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import cn.wsalix.admin.service.RoleService;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.service.SpringClient;

/**
 * @author jskyme http://blog.csdn.net/z69183787/article/details/22176277
 */

public class UserServiceTest extends SpringClient {

	@Autowired
	RegisterService registerService;
	@Autowired
	RoleService roleService;
	@Autowired
	UserService userService;

	@Test
	public void testAll() {

		userService.findAll();
	}

}
