package cn.wsalix.service.admin;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;

import cn.wsalix.admin.entity.SysMenu;
import cn.wsalix.admin.form.MenuForm;
import cn.wsalix.admin.service.MenuService;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.service.SpringClient;

/**
 * @author jskyme http://blog.csdn.net/z69183787/article/details/22176277
 */

public class MenuServiceTest extends SpringClient {
	@Autowired
	RegisterService registerService;
	@Autowired
	MenuService menuService;
	@Autowired
	UserService userService;
	@Autowired
	MenuDBInit menuDBInit;

	@Test
	public void testTopAdd() {
		MenuForm form = new MenuForm();
		form.setCode("CMS_ADMIN");
		form.setName("CMS管理系统");
		SysMenu topMenu = menuService.add(form);
		List<SysMenu> rstLst = menuService.findByForm(form);
		assertEquals(1, rstLst.size());
	}

	@Test
	@Rollback(false)
	public void testSub1Add() {
		tetsUserAdd();
		login("admin", "1234");
		menuDBInit.init();
		MenuForm form = new MenuForm();

		List<SysMenu> rstLst = menuService.findByForm(form);
		tetsRoleAdd();
		//

	}

	@Test
	@Rollback(false)
	public void testUserAdd() {
		tetsUserAdd();
		login("admin", "1234");
	}
}
