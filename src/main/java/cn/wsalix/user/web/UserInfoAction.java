package cn.wsalix.user.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.config.FileServerConfig;
import cn.anlaser.form.UploadFileForm;
import cn.anlaser.type.FileTypeEnum;
import cn.anlaser.type.ImageTypeEnum;
import cn.anlaser.utils.HttpUtils;
import cn.anlaser.web.impl.BasicActionImpl;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.constant.Global;
import cn.wsalix.observable.service.FileUploadService;
import cn.wsalix.user.entity.UserInfo;
import cn.wsalix.user.form.UserInfoForm;
import cn.wsalix.user.repository.UserInfoRepository;
import cn.wsalix.user.service.UserCenterService;
import cn.wsalix.user.service.UserInfoService;

@Controller
@RequestMapping(value = "/user/user_info")
public class UserInfoAction
		extends
		BasicActionImpl<UserInfoForm, UserInfoService, UserInfoRepository, UserInfo> {
	@Autowired
	private UserService userService;
	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private UserCenterService userCenterService;

	@Override
	public UserInfoService getService() {
		return userInfoService;
	}

	@Override
	public ModelAndView edit(Long id, UserInfoForm form, BindingResult result,
			Model model) {
		super.edit(id, form, result, model);
		return new ModelAndView("redirect:/" + module() + "/edit"
				+ Global.urlSuffix + "?id=" + form.getId());
	}

	@Override
	public ModelAndView list(UserInfoForm form, Model model, Pageable pageable) {
		SysUser user = userService.findById(form.getUserId());
		model.addAttribute("user", user);
		model.addAttribute("userInfo", userInfoService.findByUser(user));
		model.addAttribute("userCenter", userCenterService.findByUser(user));
		return super.list(form, model, pageable);
	}

	@Autowired
	private FileUploadService fileUploadService;
	@Autowired
	private FileServerConfig fsConfig;

	@RequestMapping(value = "/avatar", method = RequestMethod.POST)
	public ModelAndView uploadAvatar(
			UserInfoForm form,
			@RequestParam(value = "fileName", required = false) MultipartFile fileName,
			Model model) throws Exception {
		UploadFileForm upForm = new UploadFileForm();
		upForm.setType(FileTypeEnum.image);
		upForm.setImageType(ImageTypeEnum.avatar);
		HttpUtils.uploadFile(fsConfig, fileName, upForm);
		upForm.setFkId(form.getUserId());
		fileUploadService.upload(upForm);
		UserInfo userInfo = userInfoService.findById(form.getUserId());
		model.addAttribute("form", userInfo);
		return new ModelAndView("redirect:/" + module() + "/edit"
				+ Global.urlSuffix + "?id=" + form.getId());
	}
}
