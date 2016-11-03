package cn.wsalix.user.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.BasicActionImpl;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.user.entity.UserCenter;
import cn.wsalix.user.form.UserCenterForm;
import cn.wsalix.user.repository.UserCenterRepository;
import cn.wsalix.user.service.UserCenterService;
import cn.wsalix.user.service.UserInfoService;

@Controller
@RequestMapping(value = "/user/center")
public class UserCenterAction
		extends
		BasicActionImpl<UserCenterForm, UserCenterService, UserCenterRepository, UserCenter> {
	@Autowired
	private UserService userService;
	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private UserCenterService userCenterService;

	@Override
	public UserCenterService getService() {
		return userCenterService;
	}

	@RequestMapping(value = "/by_userid", method = RequestMethod.GET)
	public ModelAndView listByUserId(UserCenterForm form, Model model,
			Pageable pageable) {
		SysUser user = userService.findById(form.getUserId());
		model.addAttribute("user", user);
		model.addAttribute("userInfo", userInfoService.findByUser(user));
		model.addAttribute("userCenter", userCenterService.findByUser(user));
		return super.list(form, model, pageable);
	}

}
