package cn.jskyme.admin.dao;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
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
import cn.wsalix.admin.entity.SysDict;
import cn.wsalix.admin.repository.DictRepository;
import cn.wsalix.admin.service.DictService;
import cn.wsalix.exception.UserException;
import cn.wsalix.spring.SpringUtils;

/**
 * @author jskyme http://blog.csdn.net/z69183787/article/details/22176277
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"classpath:META-INF/spring/application-context.xml" })
@ActiveProfiles("test")
public class DictDAOTest extends AbstractTransactionalJUnit4SpringContextTests {
	@Autowired
	private DictRepository dictRepository;
	@Autowired
	private DictService dictService;
	@Autowired
	UserException userException;
	@Autowired
	SpringUtils springUtils;

	@Test
	public void findAll() {
	/*	Map<String, Object> annotationBeans = springUtils
				.getBeansWithAnnotation(Controller.class);
		Map<String, Object> roleBeans = springUtils
				.getBeansWithAnnotation(AuthDatas.class);
		Map<String, Object> permitBeans = springUtils
				.getBeansWithAnnotation(RequiresPermissions.class);
*/		dictService.findAll();
	}

	@Test
	public void findParentNull() {
		Map<String, Object> searchParams = new HashMap<String, Object>();
		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		filters.put("parent", new SearchFilter("parent", Operator.ISNULL));
		// searchParams.put("EQ_dept.id", deptId);
		Specification<SysDict> spec = DynamicSpecifications.bySearchFilter(
				filters.values(), SysDict.class);

		dictRepository.findAll(spec);
	}

	@Test
	@Rollback(true)
	public void testFileAdd() {
		SysDict infoFile = new SysDict();
		dictService.add(infoFile);
	}

	@Test
	@Rollback(false)
	public void testUserExceptionAdd() {
		SysDict infoFile = new SysDict();
		infoFile.setCode(userException.getRegPlatformError());
		//infoFile.setLabel("平台码[platform]输入错误[android,ios]");
		dictService.add(infoFile);
	}

	@Test
	@Rollback(false)
	public void testExceptionAdd() {
		SysDict infoFile = new SysDict();
		infoFile.setCode("sendsms.username.blank");
		//infoFile.setLabel("发送验证码时，手机号不能为空");
		dictService.add(infoFile);
		SysDict infoFile1 = new SysDict();
		infoFile1.setCode("sendsms.operateType.blank");
		//infoFile1.setLabel("发送验证码时，操作类型[注册register/找回密码restPwd]不能为空");
		dictService.add(infoFile1);
	}

}
