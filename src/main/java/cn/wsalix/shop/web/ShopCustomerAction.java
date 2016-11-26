package cn.wsalix.shop.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.status.DataEnum;
import cn.anlaser.web.impl.CommonActionImpl;
import cn.wsalix.admin.entity.SysMenu;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.form.UserForm;
import cn.wsalix.admin.repository.UserRepository;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.admin.web.UserAction;
import cn.wsalix.annotation.Menu;
import cn.wsalix.constant.Global;
import cn.wsalix.observable.service.RegisterService;
import cn.wsalix.shop.init.ShopRoleInit;

//@Menu(code="shop:customer",name="客户管理")
@Controller
@RequestMapping(value = "/admin/customer")
public class ShopCustomerAction extends
		CommonActionImpl<UserForm, UserService, UserRepository, SysUser> {
	private static final Logger logger = LoggerFactory
			.getLogger(UserAction.class);
	@Autowired
	private RegisterService registerService;

	@Autowired
	private UserService userService;

	@Override
	public UserService getService() {
		return userService;
	}

	@Override
	public String module() {
		return "/shop/customer";
	}

	@Override
	public void previous(HttpServletRequest request, Model model, UserForm form) {
		Menu annotation = this.getClass().getAnnotation(Menu.class);
		if (annotation != null) {
			SysMenu menu = new SysMenu();
			menu.setCode(annotation.code());
			/*
			 * if(form.getRegType()!=null){ switch(form.getRegType()){ case
			 * normal: menu.setCode("shop:customer:normal"); break; case qq:
			 * break; case sina: break; case weixin:
			 * menu.setCode("shop:customer:weixin"); break; default: break; } }
			 */
			model.addAttribute("currMenu", menu);
		}
		model.addAttribute("dataEnums", DataEnum.values());
	}

	@Menu(code = "shop:customer")
	@Override
	public ModelAndView list(UserForm form, BindingResult result, Model model,
			Pageable pageable) {
		form.setRoleId(ShopRoleInit.employeeRole.getId());
		//form.setUserType(UserTypeEnum.normal);
		// form.setThirdType(UserRegTypeEnum.normal);
		// form.setThirdType(UserRegTypeEnum.qq);
		// form.setThirdType(UserRegTypeEnum.weixin);
		return super.list(form, result, model, pageable);
	}

	@Override
	public ModelAndView add(UserForm form, BindingResult result,
			RedirectAttributes ra, Model model) {
		getService().add(form);
		return new ModelAndView("redirect:/shop/customer/list"
				+ Global.urlSuffix);
	}

	@Override
	public ModelAndView edit(Long id, UserForm form, BindingResult result,
			RedirectAttributes ra, Model model) {
		if (id == null || id == 0) {
			throw throwException(commonException.getIdNull());
		}
		// Entity srcEntity = getService().findById(id);
		// Entity entity = BeanMapper.map(srcEntity, UserVO.class);
		getService().edit(form);
		return new ModelAndView("redirect:/shop/customer/list"
				+ Global.urlSuffix);
	}

}
