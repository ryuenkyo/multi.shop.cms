package cn.wsalix.user.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.web.impl.CommonActionImpl;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.constant.Global;
import cn.wsalix.observable.service.AddressChangeService;
import cn.wsalix.user.entity.Address;
import cn.wsalix.user.form.AddressForm;
import cn.wsalix.user.repository.AddressRepository;
import cn.wsalix.user.service.AddressService;
import cn.wsalix.user.service.UserCenterService;
import cn.wsalix.user.service.UserInfoService;

@Controller
@RequestMapping(value = "/user/address")
public class AddressAction
		extends
		CommonActionImpl<AddressForm, AddressService, AddressRepository, Address> {
	@Autowired
	private AddressService addressService;
	@Autowired
	private AddressChangeService addressChangeService;
	@Autowired
	private UserService userService;
	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private UserCenterService userCenterService;

	@Override
	public AddressService getService() {
		return addressService;
	}

	@Override
	public ModelAndView list(@Valid AddressForm form, BindingResult result,
			Model model, Pageable pageable) {
		if (form.getUserId() != null && form.getUserId() != 0) {
			SysUser user = userService.findById(form.getUserId());
			model.addAttribute("user", user);
			model.addAttribute("userInfo", userInfoService.findByUser(user));
			model.addAttribute("userCenter", userCenterService.findByUser(user));
		}
		return super.list(form, result, model, pageable);
	}

	@Override
	public ModelAndView add(@Valid AddressForm form, BindingResult result,
			RedirectAttributes ra, Model model) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("name")) {
					throw Global.getException(commonException.getNameNull());
				}
				if (fieldError.getField().equals("userId")) {
					throw Global.getException(commonException.getUserIdNull());
				}
				if (fieldError.getField().equals("phone")) {
					throw Global.getException(commonException
							.getParentCatNull());
				}
				if (fieldError.getField().equals("province")) {
					throw Global.getException(commonException
							.getParentCatNull());
				}
				if (fieldError.getField().equals("street")) {
					throw Global.getException(commonException
							.getParentCatNull());
				}
			}
		}
		addressChangeService.change(form);
		// super.add(form, result, model);
		if (form.getUserId() != null && form.getUserId() != 0) {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix + "?userId=" + form.getUserId());
		}
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

	@RequestMapping(value = "/by_userid", method = RequestMethod.GET)
	public ModelAndView listByUserId(AddressForm form, BindingResult result,
			Model model, Pageable pageable) {
		SysUser user = userService.findById(form.getUserId());
		model.addAttribute("user", user);
		model.addAttribute("userInfo", userInfoService.findByUser(user));
		model.addAttribute("userCenter", userCenterService.findByUser(user));
		return super.list(form, result, model, pageable);
	}

	@Override
	public ModelAndView toEdit(AddressForm form, BindingResult result,
			Model model) {
		Address address = addressService.findById(form.getId());
		SysUser user = userService.findById(address.getUserId());
		model.addAttribute("user", user);
		model.addAttribute("userInfo", userInfoService.findByUser(user));
		model.addAttribute("userCenter", userCenterService.findByUser(user));
		return super.toEdit(form, result, model);
	}

	@Override
	public ModelAndView edit(Long id, @Valid AddressForm form,
			BindingResult result, RedirectAttributes ra, Model model) {
		if (id == null || id == 0) {
			throw throwException(commonException.getIdNull());
		}
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("name")) {
					throw Global.getException(commonException.getNameNull());
				}
				if (fieldError.getField().equals("userId")) {
					throw Global.getException(commonException.getUserIdNull());
				}
				if (fieldError.getField().equals("phone")) {
					throw Global.getException(commonException
							.getParentCatNull());
				}
				if (fieldError.getField().equals("province")) {
					throw Global.getException(commonException
							.getParentCatNull());
				}
				if (fieldError.getField().equals("street")) {
					throw Global.getException(commonException
							.getParentCatNull());
				}
			}
		}
		addressChangeService.change(form);
		Address entity = addressChangeService.getAddress();
		// Address entity = addressService.findById(id);
		// Entity entity = BeanMapper.map(srcEntity, UserVO.class);
		// addressService.edit(form);
		if (entity.getUserId() != null && entity.getUserId() != 0) {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix + "?userId=" + entity.getUserId());
		}
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

	@Override
	public ModelAndView delete(AddressForm form, BindingResult result,
			Model model) {
		Address entity = addressService.findById(form.getId());
		super.delete(form, result, model);
		if (entity.getUserId() != null && entity.getUserId() != 0) {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix + "?userId=" + entity.getUserId());
		}
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

}
