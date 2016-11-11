package cn.wsalix.admin.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.admin.BaseUser;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.form.UserForm;
import cn.wsalix.admin.service.DictService;
import cn.wsalix.admin.service.MenuService;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.annotation.Menu;
import cn.wsalix.config.AppConfig;
import cn.wsalix.constant.Global;
import cn.wsalix.site.web.SiteAction;
import cn.wsalix.sys.service.DailyRecordService;
import cn.wsalix.user.entity.UserInfo;
import cn.wsalix.user.service.UserInfoService;
import cn.wsalix.utils.UserUtils;

//@Menu(code="admin",name="系统管理")
@Controller
@RequestMapping(value = "/admin")
public class AdminAction {
	private static final Logger logger = LoggerFactory
			.getLogger(SiteAction.class);
	/*
	 * @Autowired private HttpServletRequest request;
	 */
	@Autowired
	private AppConfig appConfig;
	@Autowired
	private DictService dictService;
	@Autowired
	private UserService userService;

	@Autowired
	private DailyRecordService dailyRecordService;

	@Menu(code = "admin")
	@RequestMapping(value = { "/", "", "/index" }, method = RequestMethod.POST)
	public ModelAndView indexPost(HttpServletRequest request, Model model) {
		Subject currentUser = SecurityUtils.getSubject();
		BaseUser baseUser = (BaseUser) currentUser.getPrincipal();
		if (baseUser == null) {
			logger.info("baseUser is null");
			return new ModelAndView("redirect:/admin/login" + Global.urlSuffix);
		}
		SysUser user = userService.findById(baseUser.getId());
		model.addAttribute("user", user);
		UserInfo userInfo = userInfoService.findByUser(user);
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("pageSize", userInfo.getPageSize() == 0 ? 20
				: userInfo.getPageSize());
		httpSession.setAttribute("currUser", user);
		httpSession.setAttribute("currUserInfo", userInfo);
		// find admin menus by role
		model.addAttribute("templetDir", appConfig.getBackTheme());

		Pageable pageable = new PageRequest(1, 5);
		model.addAttribute("system", dictService.getSysParas());
		model.addAttribute("userlsts",
				userService.findAll(new UserForm(), pageable).getPage());
		model.addAttribute("dailyRecord", dailyRecordService.newDay());
		return new ModelAndView("/admin/index");
	}

	@Menu(code = "admin")
	@RequestMapping(value = { "/", "", "/index" }, method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, Model model) {
		Subject currentUser = SecurityUtils.getSubject();
		BaseUser baseUser = (BaseUser) currentUser.getPrincipal();
		if (baseUser == null) {
			logger.info("baseUser is null");
			return new ModelAndView("redirect:/admin/login" + Global.urlSuffix);
		}
		SysUser user = userService.findById(baseUser.getId());
		model.addAttribute("user", user);
		UserInfo userInfo = userInfoService.findByUser(user);
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("pageSize", userInfo.getPageSize() == 0 ? 20
				: userInfo.getPageSize());
		httpSession.setAttribute("currUser", user);
		httpSession.setAttribute("currUserInfo", userInfo);
		// find admin menus by role
		model.addAttribute("templetDir", appConfig.getBackTheme());

		Pageable pageable = new PageRequest(1, 5);
		model.addAttribute("system", dictService.getSysParas());
		model.addAttribute("userlsts",
				userService.findAll(new UserForm(), pageable).getPage());
		model.addAttribute("dailyRecord", dailyRecordService.newDay());
		return new ModelAndView("/admin/index");
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public ModelAndView login(Model model) {
		// 1,URL 获取模板页
		// 2,模板页获取模块
		// 3,循环获取模块数据
		// model.addAttribute("templetDir", appConfig.getSiteThemePath());
		// return new ModelAndView("site/index");
		return new ModelAndView("/admin/login");
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.POST)
	public ModelAndView loginPost(Model model) {
		return new ModelAndView("/admin/index");
	}

	@Menu(code = "admin")
	@RequestMapping(value = { "/set" }, method = RequestMethod.GET)
	public ModelAndView set(HttpServletRequest request, Model model) {
		return new ModelAndView("/admin/set");
	}

	@RequestMapping(value = { "/calendar" }, method = RequestMethod.GET)
	public ModelAndView calendar(HttpServletRequest request, Model model) {
		return new ModelAndView("/admin/calendar");
	}

	@RequestMapping(value = { "/task" }, method = RequestMethod.GET)
	public ModelAndView task(HttpServletRequest request, Model model) {
		return new ModelAndView("/admin/task");
	}

	@RequestMapping(value = { "/contacts" }, method = RequestMethod.GET)
	public ModelAndView contacts(HttpServletRequest request, Model model) {
		return new ModelAndView("/admin/contacts");
	}

	@RequiresRoles("admin")
	@RequestMapping(value = { "/init" }, method = RequestMethod.GET)
	public ModelAndView adminInit(Model model) {
		return new ModelAndView("/admin/init");
	}

	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private MenuService menuService;
	@Autowired
	protected UserUtils userUtils;

}
