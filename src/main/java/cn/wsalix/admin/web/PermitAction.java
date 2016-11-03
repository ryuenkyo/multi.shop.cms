package cn.wsalix.admin.web;

import javax.validation.Valid;

import org.apache.shiro.authz.annotation.RequiresRoles;
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

import cn.anlaser.web.impl.CommonActionImpl;
import cn.wsalix.admin.entity.Permit;
import cn.wsalix.admin.form.PermitForm;
import cn.wsalix.admin.repository.PermitRepository;
import cn.wsalix.admin.service.MenuService;
import cn.wsalix.admin.service.PermitService;
import cn.wsalix.annotation.Menu;
import cn.wsalix.observable.service.RegisterService;

//@Menu(code="admin:permit",name="权限管理")
@Controller
@RequestMapping(value = "/admin/permit")
@RequiresRoles("admin:permit")
public class PermitAction extends
		CommonActionImpl<PermitForm, PermitService, PermitRepository, Permit> {
	private static final Logger logger = LoggerFactory
			.getLogger(PermitAction.class);
	@Autowired
	private RegisterService userRegisterService;

	@Autowired
	private PermitService permitService;
	@Autowired
	private MenuService menuService;

	@Override
	public PermitService getService() {
		return permitService;
	}

	@Menu(code = "admin:permit")
	@Override
	public ModelAndView toAdd(@Valid PermitForm form, BindingResult result, Model model) {
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView add(@Valid PermitForm form, BindingResult result,RedirectAttributes ra, Model model) {
		// TODO Auto-generated method stub
		return super.add(form, result,ra, model);
	}

	@Menu(code = "admin:permit")
	@Override
	public ModelAndView list(@Valid PermitForm form, BindingResult result,Model model, Pageable pageable) {
		// TODO Auto-generated method stub
		return super.list(form, result,model, pageable);
	}
	@Menu(code="admin:permit")
	@Override
	public ModelAndView toEdit(@Valid PermitForm form, BindingResult result,
			Model model) {
		// TODO Auto-generated method stub
		return super.toEdit(form, result, model);
	}

}
