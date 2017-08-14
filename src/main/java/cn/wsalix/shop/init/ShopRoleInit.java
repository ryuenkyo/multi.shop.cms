package cn.wsalix.shop.init;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.wsalix.admin.entity.SysRole;
import cn.wsalix.admin.service.AuthDataService;
import cn.wsalix.admin.service.RoleService;
import cn.wsalix.init.RoleInit;

@Service("shopRoleInit")
public class ShopRoleInit implements RoleInit {
	public SysRole adminRole;
	public SysRole clientRole;
	@Autowired
	private RoleService roleService;

	@Autowired
	private AuthDataService AuthDataService;
	boolean isExe = false;

	@Transactional
	@Override
	public void init(boolean create) {
		adminRole = roleService.findByCodeOne("admin");
		if (adminRole == null) {
			adminRole = new SysRole("admin", "管理员");
			roleService.add(adminRole);
		}
		clientRole = roleService.findByCodeOne("client");
		if (clientRole == null) {
			clientRole = new SysRole("client", "客户");
			roleService.add(clientRole);
		}
	}

	@Override
	public List<SysRole> getAllRoles() {
		List<SysRole> roleLst = new ArrayList<SysRole>();
		roleLst.add(adminRole);
		roleLst.add(clientRole);
		return roleLst;
	}

	@Override
	public SysRole getClientRole() {
		return clientRole;
	}

	@Override
	public SysRole getAdmin() {
		return adminRole;
	}
}
