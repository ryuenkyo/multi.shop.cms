package cn.wsalix.admin.web;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.admin.BaseUser;
import cn.anlaser.web.impl.CommonActionImpl;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.form.UserForm;
import cn.wsalix.admin.repository.UserRepository;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.admin.status.UserEnum;
import cn.wsalix.annotation.Menu;
import cn.wsalix.constant.Global;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.type.UserTypeEnum;
import cn.wsalix.user.service.UserCenterService;
import cn.wsalix.user.service.UserInfoService;

@Controller
@RequestMapping(value = "/admin/user")
@RequiresRoles("admin:user")
public class UserAction extends
		CommonActionImpl<UserForm, UserService, UserRepository, SysUser> {
	private static final Logger logger = LoggerFactory
			.getLogger(UserAction.class);
	@Autowired
	private RegisterService registerService;

	@Autowired
	private UserService userService;
	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private UserCenterService userCenterService;

	@Override
	public UserService getService() {
		return userService;
	}

	@Override
	public void previous(HttpServletRequest request, Model model, UserForm form) {
		model.addAttribute("userStatus", UserEnum.values());
		super.previous(request, model, form);
	}

	@Override
	public ModelAndView add(@Valid UserForm form, BindingResult result,
			RedirectAttributes ra, Model model) {
		if (result.hasErrors()) {
			ra.addFlashAttribute("form", form);
			for (FieldError fieldError : result.getFieldErrors()) {
				ra.addFlashAttribute("org.springframework.validation.BindingResult.result", result);
				if (fieldError.getField().equals("username")) {	
					return new ModelAndView("redirect:/" + module() + "/add"+ Global.urlSuffix);
				}
				if (fieldError.getField().equals("password")) {
					return new ModelAndView("redirect:/" + module() + "/add"+ Global.urlSuffix);
				}			
			}
		}
		form.setUserType(UserTypeEnum.back);
		// form.setRegType(UserRegTypeEnum.normal);
		registerService.register(form);
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

	@Autowired
	private MessageSource messageSource;

	protected String i18n(String message) {
		return messageSource.getMessage(message, null, null);
	}

	@Menu(code = "admin:user")
	@Override
	public ModelAndView list(UserForm form, BindingResult result, Model model,
			Pageable pageable) {
		form.setUserType(UserTypeEnum.back);
		// form.setRegType(UserRegTypeEnum.normal);
		return super.list(form, result, model, pageable);
	}

	@RequestMapping(value = "/customer_list", method = RequestMethod.GET)
	public ModelAndView customerlist(UserForm form, BindingResult result,
			Model model, Pageable pageable) {
		form.setUserType(UserTypeEnum.normal);
		// form.setThirdType(UserRegTypeEnum.normal);
		// form.setThirdType(UserRegTypeEnum.qq);
		// form.setThirdType(UserRegTypeEnum.weixin);
		return super.list(form, result, model, pageable);
	}

	/*
	 * @ModelAttribute() public void modelAttribute( Model model,
	 * 
	 * @CookieValue(value = "JSESSIONID", defaultValue = "") String jsessionId,
	 * 
	 * @RequestHeader(value = "User-Agent", defaultValue = "") String userAgent)
	 * { model.addAttribute("jsessionId", jsessionId);
	 * model.addAttribute("userAgent", userAgent); }
	 */
	@RequestMapping(value = "/roles", method = RequestMethod.GET)
	public String findRolesByUserId(@RequestParam("userId") String userId,
			Model model, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Menu(code = "admin:user")
	@Override
	public ModelAndView toAdd(UserForm form, BindingResult result, Model model) {
		// TODO Auto-generated method stub
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView edit(Long id, UserForm entity, BindingResult result,RedirectAttributes ra,
			Model model) {
		// TODO Auto-generated method stub
		return super.edit(id, entity, result, ra,model);
	}

/*	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView profile(Model model) {
		BaseUser baseUser = userUtils.getInUser();
		SysUser user=userService.findById(baseUser.getId());
		model.addAttribute("user", user);
		model.addAttribute("userInfo", userInfoService.findByUser(user));
		model.addAttribute("userCenter", userCenterService.findByUser(user));
		
		return new ModelAndView(module() + "/profile");
	}
*/
}
