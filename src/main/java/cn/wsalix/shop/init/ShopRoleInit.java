package cn.wsalix.shop.init;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.wsalix.admin.entity.SysRole;
import cn.wsalix.admin.init.RoleInit;
import cn.wsalix.admin.service.RoleService;

@Service("shopRoleInit")
public class ShopRoleInit implements RoleInit {
	public static SysRole adminRole = new SysRole("admin", "管理员");
	public static SysRole employeeRole = new SysRole("employee", "职员");
	public static SysRole tradeRole = new SysRole("trade", "商户");
	public static SysRole clientRole = new SysRole("client", "客户");
	@Autowired
	private RoleService roleService;

	@Transactional
	@Override
	public void init(boolean create) {
		if (create) {
			adminRole = roleService.add(adminRole);
			employeeRole = roleService.add(employeeRole);
			tradeRole = roleService.add(tradeRole);
			clientRole = roleService.add(clientRole);
		} else {
			adminRole = roleService.findByCodeOne(adminRole.getCode());
			employeeRole = roleService.findByCodeOne(employeeRole.getCode());
			tradeRole = roleService.findByCodeOne(tradeRole.getCode());
			clientRole = roleService.findByCodeOne(clientRole.getCode());
		}
	}

}
