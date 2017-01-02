package cn.jskyme;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.wsalix.admin.entity.SysDict;
import cn.wsalix.admin.service.DictService;

/**
 * @author jskyme http://blog.csdn.net/z69183787/article/details/22176277
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:META-INF/spring/application-context.xml" })
@ActiveProfiles("dev")
public class DictTest extends AbstractTransactionalJUnit4SpringContextTests {
	@Autowired
	DictService dictService;

	@Test
	@Rollback(false)
	public void findAll() {
		dictService.findAll();
	}
	@Test
	@Rollback(true)
	public void testFileAdd() {
		SysDict dict=new SysDict();
		dict.setCode("dict");
		dict.setName("字典定义");
		dictService.add(dict);
	}
}
