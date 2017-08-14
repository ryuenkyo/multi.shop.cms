package cn.wsalix.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.admin.BaseUser;
import cn.anlaser.exception.NutException;
import cn.wsalix.admin.form.UserForm;
import cn.wsalix.admin.service.MenuService;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.admin.status.UserEnum;
import cn.wsalix.biz.entity.Category;
import cn.wsalix.biz.form.CategoryForm;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.config.AppConfig;
import cn.wsalix.constant.Global;
import cn.wsalix.exception.UserException;
import cn.wsalix.login.form.WxCodeForm;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.shiro.token.CaptchaToken;
import cn.wsalix.sys.service.VerifyCodeService;
import cn.wsalix.user.service.UserCenterService;
import cn.wsalix.user.service.UserInfoService;
import cn.wsalix.utils.UserUtils;

import com.google.code.kaptcha.servlet.KaptchaExtend;

@Controller
public class MainAction extends KaptchaExtend {
	private static final Logger logger = LoggerFactory
			.getLogger(MainAction.class);
	@Autowired
	private AppConfig appConfig;
	@Autowired
	private UserService userService;
	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private UserCenterService userCenterService;
	@Autowired
	protected UserUtils userUtils;
	@Autowired
	private RegisterService userRegisterService;
	@Autowired
	protected UserException userException;
	@Autowired
	protected VerifyCodeService verifyCodeService;

	/**
	 * @param model
	 * @return 首页
	 */
	@RequestMapping(value = { "index", "/", "" }, method = RequestMethod.GET)
	public ModelAndView index(Model model) {
		// 1,URL 获取模板页
		// 2,模板页获取模块
		// 3,循环获取模块数据
		// model.addAttribute("templetDir", appConfig.getSiteThemePath());
		// return new ModelAndView("index");
		return new ModelAndView("redirect:/site/index" + Global.urlSuffix);
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public ModelAndView login(UserForm form, Model model) {
		model.addAttribute("form", form);
		// 1,URL 获取模板页
		// 2,模板页获取模块
		// 3,循环获取模块数据
		// model.addAttribute("templetDir", appConfig.getSiteThemePath());
		// return new ModelAndView("site/index");
		return new ModelAndView("/site/login");
	}

	/*
	 * @RequestMapping(value = { "/{shopId}/login" }, method =
	 * RequestMethod.GET) public ModelAndView siteLogin(@PathVariable("shopId")
	 * String shopId, Model model) { return new
	 * ModelAndView("redirect:/site/login" + Global.urlSuffix + "?shopId=" +
	 * shopId); }
	 */


	@RequestMapping(value = { "/{wxConfigId}/list" }, method = RequestMethod.GET)
	public ModelAndView wxIndex(@PathVariable("wxConfigId") String wxConfigId,
			Model model) {
		String templetCode = "";
		return new ModelAndView("site/" + templetCode + "/list");
	}

	/**
	 * @param model
	 * @return 用户查看个人信息
	 */
	@RequestMapping(value = "/user_center", method = RequestMethod.GET)
	public ModelAndView profile(Model model) {
		/*
		 * SysUser user = userUtils.getInUser(); model.addAttribute("user",
		 * user); model.addAttribute("userInfo",
		 * userInfoService.findByUserId(user.getId()));
		 * model.addAttribute("userCenter",
		 * userCenterService.findByUserId(user.getId()));
		 */
		return new ModelAndView("site/user_center");
	}

	@RequestMapping(value = "/information", method = RequestMethod.GET)
	public ModelAndView information(Model model) {
		return new ModelAndView("/site/information");
	}

	@RequestMapping(value = "/information", method = RequestMethod.POST)
	public ModelAndView informationSave(Model model) {
		return new ModelAndView("/site/information");
	}

	@RequestMapping(value = { "/wx_redirect_uri" }, method = RequestMethod.GET)
	public ModelAndView redirectUri(WxCodeForm form, Model model,
			HttpServletRequest request) {
		String paraLines = getInfo(request);
		System.out.print("redirect_uri:" + paraLines);
		// wxService.register(form);
		return new ModelAndView("/site/register");
	}

	@RequestMapping(value = { "/wx_redirect_uri" }, method = RequestMethod.POST)
	public ModelAndView redirectUriPost(WxCodeForm form, Model model,
			HttpServletRequest request) {
		String paraLines = getInfo(request);
		System.out.print("redirect_uri:" + paraLines);
		// wxService.register(form);
		return new ModelAndView("/site/register");
	}

	private String getInfo(HttpServletRequest request) {
		StringBuffer retBuff = new StringBuffer();
		retBuff.append(request.getRequestURI());
		int i = 0;
		Map<String, String[]> resMaps = request.getParameterMap();
		for (Map.Entry<String, String[]> reqMap : resMaps.entrySet()) {
			if (i++ == 0) {
				retBuff.append("?" + reqMap.getKey() + "="
						+ getVal(reqMap.getValue()));
			} else {
				retBuff.append("&" + reqMap.getKey() + "="
						+ getVal(reqMap.getValue()));
			}
		}
		return retBuff.toString();
	}

	private String getVal(String[] values) {
		StringBuffer valBuff = new StringBuffer();
		for (String val : values) {
			valBuff.append("," + val);
		}
		return valBuff.substring(1);
	}

	@RequestMapping(value = { "/templet/{module}/list" }, method = RequestMethod.GET)
	public ModelAndView templetList(@PathVariable("module") String module,
			Model model) {
		return new ModelAndView("templet/" + module + "/list");
	}

	@RequestMapping(value = { "/templet/{module}/{part}/list" }, method = RequestMethod.GET)
	public ModelAndView templet2List(@PathVariable("module") String module,
			@PathVariable("part") String part, Model model) {
		return new ModelAndView(module + "/" + part + "/list");
	}

	/*
	 * @RequestMapping(value = { "/site/index" }, method = RequestMethod.GET)
	 * public ModelAndView siteIndex(Model model) { // 1,URL 获取模板页 // 2,模板页获取模块
	 * // 3,循环获取模块数据
	 * 
	 * model.addAttribute("templetDir", appConfig.getFrontTheme()); return new
	 * ModelAndView("site/index"); }
	 */
	@RequestMapping(value = "viewPeson")
	public ModelAndView viewPersons(Model model) {
		Map<String, List<Person>> persons = new HashMap<String, List<Person>>();
		persons.put("persons", Person.createPersons());
		return new ModelAndView("personList", persons);
	}

	@RequestMapping(value = "/sms", method = RequestMethod.GET)
	public @ResponseBody Boolean sendSms(@Valid UserForm entity,
			BindingResult result, Model model) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("username")) {
					// throw Global.getException("sendsms.username.blank");
				}
				if (fieldError.getField().equals("operateType")) {
					// throw Global.getException("sendsms.operateType.blank");
				}
			}
		}
		return false;// userService.sendSms(entity);
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerPost(@Valid UserForm userForm,
			BindingResult result) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("username")) {
					// throw Global.getException(userException
					// .getRegUserNameError());
				}
				if (fieldError.getField().equals("password")) {
					// throw Global.getException(userException
					// .getRegPasswordError());
				}
			}
		}
		/*
		 * if (verifyCodeService.checkCode(userForm)) {
		 * userForm.setCreate(true);
		 * 
		 * }
		 */
		userForm.setStatus(UserEnum.lock);
		try {
			userRegisterService.register(userForm);
		} catch (NutException e) {
			e.printStackTrace();
			return new ModelAndView("/admin/login");
		}
		Subject subject = SecurityUtils.getSubject();
		CaptchaToken token = new CaptchaToken();
		token.setUsername(userForm.getUsername());
		token.setPassword(userForm.getPassword().toCharArray());
		token.setRememberMe(true);
		subject.login(token);
		return new ModelAndView("/admin/index");
		// return new ModelAndView("redirect:/admin/index" + Global.urlSuffix);
		// return new ModelAndView("admin/register_succ");
	}

	@RequestMapping(value = "/throwAccountUnExist", method = RequestMethod.GET)
	public @ResponseBody void throwsUnException() {
		throw new NutException("account.UnExist");
	}

	/*
	 * @RequestMapping(value = "/login", method = RequestMethod.POST) public
	 * ModelAndView Login(HttpServletRequest request) throws IOException {
	 * logger.info("redirect:/site/admin/index.do"); return new
	 * ModelAndView("redirect:/admin/index" + Global.urlSuffix); }
	 */

	@RequestMapping(value = { "logout" }, method = RequestMethod.GET)
	public ModelAndView logout() {
		// 1,URL 获取模板页
		// 2,模板页获取模块
		// 3,循环获取模块数据
		return new ModelAndView("admin/index");
	}

	@RequestMapping(value = "/captcha", method = RequestMethod.GET)
	public void captcha(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		super.captcha(req, resp);
	}

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = { "/getsubs_cat" }, method = RequestMethod.GET)
	public ModelAndView getSubsCat(@Valid CategoryForm form,
			BindingResult result, Model model) {
		List<Category> subsCat = categoryService.findByParent(form);
		if (subsCat != null && !subsCat.isEmpty()) {
			model.addAttribute("selectCat", subsCat.get(0));
		}
		model.addAttribute("subsCat", subsCat);
		return new ModelAndView("/cat/select_sub_cat");
	}

	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "/menu/my_menu", method = RequestMethod.GET)
	public ModelAndView myMenu(Model model) {
		BaseUser user = userUtils.getInUser();
		model.addAttribute("menus", menuService.findMenusByUserId(user.getId()));
		return new ModelAndView("/menu/my");
	}
}
