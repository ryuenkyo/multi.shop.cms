package cn.jskyme;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.wsalix.admin.service.UserService;

/**
 * @author jskyme http://blog.csdn.net/z69183787/article/details/22176277
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/application-context.xml" })
@ActiveProfiles("test")
public class SpringClient extends AbstractTransactionalJUnit4SpringContextTests {
	@Autowired
	UserService userService;

	@Test
	public void findAll() {
		userService.findAll();
	}

	
}
