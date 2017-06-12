package cn.jskyme.admin.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.repository.RoleRepository;
import cn.wsalix.admin.service.UserService;

/**
 * @author jskyme http://blog.csdn.net/z69183787/article/details/22176277
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:META-INF/spring/application-context.xml" })
@ActiveProfiles("dev")
public class RoleDAOTest extends AbstractTransactionalJUnit4SpringContextTests {
	protected Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	UserService userService;
	@Autowired
	RoleRepository roleRepository;
	
	@Test
	public void findAll() {
		List<SysUser> users = userService.findAll();
		for (SysUser user : users) {
			logger.info(user.getId() + "," + user.getUsername());
		}
	}

	@Test
	public void findUserByRoleId() {
		//roleRepository.findRolesByUserId(1l);
	}

	@Test
	public void findUnUserByRoleId() {
		roleRepository.findUnRolesByUserId(1l);
	}
	
}
