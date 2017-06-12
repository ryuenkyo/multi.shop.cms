package cn.jskyme.admin.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.anlaser.utils.DynamicSpecifications;
import cn.anlaser.utils.SearchFilter;
import cn.anlaser.utils.SearchFilter.Operator;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.form.UserForm;
import cn.wsalix.admin.repository.UserRepository;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.status.PlatformEnum;
import cn.wsalix.user.repository.UserInfoRepository;
import cn.wsalix.user.service.AddressService;

/**
 * @author jskyme http://blog.csdn.net/z69183787/article/details/22176277
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:META-INF/spring/application-context.xml" })
@ActiveProfiles("dev")
public class UserDAOTest extends AbstractTransactionalJUnit4SpringContextTests {
	protected Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	UserService userService;
	@Autowired
	private RegisterService registerService;
	@Autowired
	UserRepository userRepository;
	@Autowired
	UserInfoRepository userInfoRepository;

	@Test
	public void findAll() {
		List<SysUser> users = userService.findAll();
		for (SysUser user : users) {
			logger.info(user.getId() + "," + user.getUsername());
		}
	}
	@Test
	@Rollback(false)
	public void addUser() {
		SysUser sysUser=new SysUser();
		sysUser.setPassword("1234");
		sysUser.setUsername("test2");
		sysUser.setPlatform(PlatformEnum.ios);
		userService.add(sysUser);
	}

	@Test
	public void findUserByRoleId() {
		//userRepository.findUsersByRoleId(1l);
	}

	@Test
	public void findUnUserByRoleId() {
		userRepository.findUnUsersByRoleId(1l);
	}

	@Test
	public void findUnSpecUserByRoleId() {
		Specification<SysUser> spec = new Specification<SysUser>() {
			@Override
			public Predicate toPredicate(Root<SysUser> root,
					CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> list = new ArrayList<Predicate>();

				/*if (um.getName() != null && um.getName().trim().length() > 0) {
					list.add(cb.like(root.get("name").as(String.class), "%"
							+ um.getName() + "%"));
				}
				if (um.getUuid() > 0) {
					list.add(cb.equal(root.get("uuid").as(Integer.class),
							um.getUuid()));
				}*/
				Predicate[] p = new Predicate[list.size()];
				return cb.and(list.toArray(p));
			}

		};
		userRepository.findUnUsersByRoleId(1l);
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

	@Test
	@Rollback(false)
	public void testFileAdd() {
		UserForm userForm = new UserForm();
		userForm.setUsername("admin");
		userForm.setPassword("1234");
		registerService.register(userForm);
	}

	@Autowired
	AddressService addressService;

}
