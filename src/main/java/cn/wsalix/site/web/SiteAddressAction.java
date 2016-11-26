package cn.wsalix.site.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.admin.BaseUser;
import cn.wsalix.biz.form.CategoryForm;
import cn.wsalix.constant.Global;
import cn.wsalix.exception.UserException;
import cn.wsalix.observable.service.AddressChangeService;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.user.entity.Address;
import cn.wsalix.user.form.AddressForm;
import cn.wsalix.user.service.AddressService;
import cn.wsalix.user.service.UserCenterService;
import cn.wsalix.user.service.UserInfoService;
import cn.wsalix.utils.UserUtils;

@Controller
@RequestMapping(value = "/site/address")
public class SiteAddressAction {

	@Autowired
	private AddressService addressService;
	@Autowired
	private AddressChangeService addressChangeService;

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

	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public ModelAndView list(AddressForm form, Model model) {
		BaseUser user = userUtils.getInUser();
		/*
		 * if (form.getUserId() != null) {//只允许查询当前用户，不需要查询 SysUser user =
		 * userService.findById(form.getUserId()); model.addAttribute("user",
		 * user); }
		 */
		form.setUserId(user.getId());
		model.addAttribute("address", addressService.findByForm(form));
		return new ModelAndView("/site/address/list");
	}

	/**
	 * 订单新增，处理用户电话订购等，用户不直接新增
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/add" }, method = RequestMethod.GET)
	public ModelAndView add(Model model) {
		Address obj = addressChangeService.createAddress();
		return new ModelAndView("redirect:/site/address/edit"
				+ Global.urlSuffix + "?id=" + obj.getId());
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.GET)
	public ModelAndView toEdit(AddressForm form, Model model) {
		if (form.getId() != null) {
			Address obj = addressService.findById(form.getId());
			model.addAttribute("form", obj);
		}
		return new ModelAndView("/site/address/edit");
	}

	@RequestMapping(value = { "/edit" }, method = RequestMethod.POST)
	public ModelAndView save(AddressForm form, Model model) {
		addressChangeService.change(form);
		return new ModelAndView("redirect:/site/address/list"
				+ Global.urlSuffix);
	}

	@RequestMapping(value = { "/del" }, method = RequestMethod.GET)
	public ModelAndView del(CategoryForm form, Model model) {
		addressService.delete(form.getId());
		return new ModelAndView("redirect:/site/address/list"
				+ Global.urlSuffix);
	}
}
