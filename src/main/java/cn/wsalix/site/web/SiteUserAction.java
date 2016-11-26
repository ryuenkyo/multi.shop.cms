package cn.wsalix.site.web;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.wsalix.admin.service.UserService;
import cn.wsalix.biz.service.AdvertiseService;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.config.AppConfig;
import cn.wsalix.exception.UserException;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.shiro.filter.IdFormAuthenticationFilter;
import cn.wsalix.shop.service.ProductService;
import cn.wsalix.shop.service.ShopService;
import cn.wsalix.user.entity.UserInfo;
import cn.wsalix.user.form.UserInfoForm;
import cn.wsalix.user.service.UserCenterService;
import cn.wsalix.user.service.UserInfoService;
import cn.wsalix.utils.UserUtils;

import com.google.code.kaptcha.servlet.KaptchaExtend;

@Controller
@RequestMapping(value = "/site/user")
public class SiteUserAction extends KaptchaExtend {
	@Autowired
	private AdvertiseService advertiseService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ProductService productService;

	@Autowired
	private AppConfig appConfig;
	@Autowired
	private UserService userService;

	@Autowired
	private ShopService shopService;
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

	@Value("${dict.ad_banner}")
	private String adBanner;// 首页广告

	@Value("${cat.product}")
	private String productCat;// 产品分类

	@RequestMapping(value = { "/index" }, method = RequestMethod.GET)
	public ModelAndView index(Model model) {
		return new ModelAndView("/site/user/index");
	}

	/**
	 * @param form
	 * @param model
	 * @return
	 * @see IdFormAuthenticationFilter.onLoginSuccess
	 */
	@RequestMapping(value = { "/profile" }, method = RequestMethod.GET)
	public ModelAndView profile(Model model) {
		// BaseUser baseUser = userUtils.getInUser();
		// SysUser user = userService.findById(baseUser.getId());
		// model.addAttribute("user", user);
		// model.addAttribute("userInfo", userInfoService.findByUser(user));
		// model.addAttribute("userCenter", userCenterService.findByUser(user));
		return new ModelAndView("/site/user/profile");
	}

	@RequestMapping(value = { "/bi" }, method = RequestMethod.GET)
	public ModelAndView bi(Model model) {
		return new ModelAndView("/site/user/bi");
	}

	@RequestMapping(value = { "/financial" }, method = RequestMethod.GET)
	public ModelAndView financial(Model model) {
		return new ModelAndView("/site/user/financial");
	}

	@RequestMapping(value = { "/profile" }, method = RequestMethod.POST)
	public ModelAndView profileSave(UserInfoForm form, Model model) {
		UserInfo userinfo = userInfoService.edit(form);
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		session.removeAttribute("currInfo");
		session.setAttribute("currInfo", userinfo);
		return new ModelAndView("/site/user/profile");
	}

	@RequestMapping(value = { "/recommend" }, method = RequestMethod.GET)
	public ModelAndView recommend(UserInfoForm form, Model model) {

		return new ModelAndView("/site/user/recommend");
	}
	
	@RequestMapping(value = { "/main" }, method = RequestMethod.GET)
	public ModelAndView main(UserInfoForm form, Model model) {

		return new ModelAndView("/site/user/main");
	}

	@RequestMapping(value = { "/agent" }, method = RequestMethod.GET)
	public ModelAndView agent(UserInfoForm form, Model model) {

		return new ModelAndView("/site/user/agent");
	}

}
