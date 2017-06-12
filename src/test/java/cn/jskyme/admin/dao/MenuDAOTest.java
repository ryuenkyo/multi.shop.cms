package cn.jskyme.admin.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.anlaser.page.QueryPage;
import cn.anlaser.utils.DynamicSpecifications;
import cn.anlaser.utils.SearchFilter;
import cn.anlaser.utils.SearchFilter.Operator;
import cn.wsalix.admin.entity.SysMenu;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.form.MenuForm;
import cn.wsalix.admin.form.UserForm;
import cn.wsalix.admin.repository.MenuRepository;
import cn.wsalix.admin.repository.UserRepository;
import cn.wsalix.admin.service.MenuService;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.user.repository.UserInfoRepository;
import cn.wsalix.user.service.AddressService;

/**
 * @author jskyme http://blog.csdn.net/z69183787/article/details/22176277
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:META-INF/spring/application-context.xml" })
@ActiveProfiles("test")
public class MenuDAOTest extends AbstractTransactionalJUnit4SpringContextTests {
	protected Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	MenuService menuService;
	@Autowired
	UserService userService;
	@Autowired
	UserRepository userRepository;
	@Autowired
	UserInfoRepository userInfoRepository;
	@Autowired
	MenuRepository menuRepository;

@Test
	public void findMenuByUserId() {
		List<SysMenu> menus =null;// menuRepository.findByUserId(1l);
		List<SysMenu> resMenu = new ArrayList<SysMenu>();
		for (SysMenu menuItem : menus) {
			if (menuItem.getParent() == null) {
				for (SysMenu menuChild : menus) {
					if (menuChild.getParent() != null) {
						if (menuChild.getParent().getId() == menuItem.getId()) {
							if (menuItem.getChilds() == null) {
								menuItem.setChilds(new ArrayList<SysMenu>());
							}
							menuItem.getChilds().add(menuChild);
						}
					}
				}
				resMenu.add(menuItem);
			}			
		}
		resMenu.size();
	}

	@Test
	public void findAll() {
		List<SysMenu> objs = menuService.findAll();
		for (SysMenu user : objs) {
			logger.info(user.getId() + "," + user.getName());
		}
	}

	@Test
	public void findParentId() {
		Pageable pageable = new PageRequest(0, 10);
		MenuForm form = new MenuForm();
		form.setParentId(1l);
		QueryPage<SysMenu> objs = menuService.findAll(form, pageable);
		for (SysMenu user : objs.getPage()) {
			logger.info(user.getId() + "," + user.getName());
		}
	}

	@Test
	public void findUserInfo() {
		userInfoRepository.findByUserIdOne(4l);
	}

	@Test
	@Rollback(true)
	public void testFileEdit() {
		SysUser user = userService.findById(2l);
		logger.info(user.getId() + "," + user.getUsername());
		UserForm userForm = new UserForm();
		userForm.setId(2l);
		userForm.setUsername("guest");
		userService.edit(userForm);
		user = null;
		user = userService.findById(2l);
		logger.info(user.getId() + "," + user.getUsername());
	}

	@Test
	public void findParentNull() {
		Map<String, Object> searchParams = new HashMap<String, Object>();
		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		filters.put("realName", new SearchFilter("realName", Operator.ISNULL));
		// searchParams.put("EQ_dept.id", deptId);
		Specification<SysUser> spec = DynamicSpecifications.bySearchFilter(
				filters.values(), SysUser.class);

		userRepository.findAll(spec);
	}

	@Autowired
	AddressService addressService;

}
