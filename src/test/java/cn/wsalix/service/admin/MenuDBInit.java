package cn.wsalix.service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wsalix.admin.entity.SysMenu;
import cn.wsalix.admin.form.MenuForm;
import cn.wsalix.admin.service.MenuService;
@Service("menuDBInit")
public class MenuDBInit {
	@Autowired
	MenuService menuService;
	private void insertXxzxyeyFront(SysMenu topMenu) {
		SysMenu back = insertMenu("xxzxyey_front", "新型幼儿园前台菜单", topMenu);

	}
	private void inserShopFront(SysMenu topMenu) {
		SysMenu back = insertMenu("shop_front", "shop前台菜单", topMenu);

	}

	private void insertBackAdmin(SysMenu topMenu) {
		SysMenu back = insertMenu("BACK_ADMIN", "CMS后台菜单", topMenu);
		SysMenu system = insertMenu("BACK_SYSTEM", "系统管理", back);
		{
			insertMenu("BACK_SYSTEM_USER", "用户管理", "/admin/user/list.do",
					system);
			insertMenu("BACK_SYSTEM_MENU", "菜单管理", "/admin/menu/parent.do",
					system);
			insertMenu("BACK_SYSTEM_ROLE", "角色管理", "/admin/role/list.do",
					system);
		}
		SysMenu site = insertMenu("BACK_SITE", "网站管理", back);
		{
			insertMenu("BACK_SITE_INFO", "站点站点", "/cms/site_info/list.do",
					system);
			insertMenu("BACK_SITE_TEMPLET", "模板站点", "/templet/main/list.do",
					system);
		}
	}

	private SysMenu insertMenu(String code, String name, String url,
			SysMenu parent) {
		MenuForm form = new MenuForm();
		form.setCode(code);
		form.setName(name);
		form.setMenuUrl(url);
		return menuService.add(form, parent);
	}

	private SysMenu insertMenu(String code, String name, SysMenu parent) {
		return insertMenu(code, name, null, parent);
	}

	public void init() {
		SysMenu topMenu = insertMenu("CMS_ADMIN", "CMS管理系统", null);
		insertBackAdmin(topMenu);
		insertXxzxyeyFront(topMenu);	
		inserShopFront(topMenu);
	}

}
