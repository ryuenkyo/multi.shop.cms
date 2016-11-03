package cn.wsalix.admin.web;

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
import cn.wsalix.admin.entity.Quick;
import cn.wsalix.admin.form.QuickForm;
import cn.wsalix.admin.repository.QuickRepository;
import cn.wsalix.admin.service.MenuService;
import cn.wsalix.admin.service.QuickService;
import cn.wsalix.annotation.Menu;
import cn.wsalix.observable.service.RegisterService;

//@Menu(code="admin:Quick",name="权限管理")
@Controller
@RequestMapping(value = "/admin/quick")
public class QuickAction extends
		CommonActionImpl<QuickForm, QuickService, QuickRepository, Quick> {
	private static final Logger logger = LoggerFactory
			.getLogger(QuickAction.class);
	@Autowired
	private RegisterService userRegisterService;

	@Autowired
	private QuickService quickService;
	@Autowired
	private MenuService menuService;

	@Override
	public QuickService getService() {
		return quickService;
	}

	@Menu(code = "admin:quick")
	@Override
	public ModelAndView toAdd(QuickForm form, BindingResult result, Model model) {
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView add(QuickForm form, BindingResult result, RedirectAttributes ra,Model model) {
		// TODO Auto-generated method stub
		return super.add(form, result,ra, model);
	}

	@Menu(code = "admin:quick")
	@Override
	public ModelAndView list(QuickForm form, BindingResult result, Model model, Pageable pageable) {
		// TODO Auto-generated method stub
		return super.list(form,result, model, pageable);
	}
	@Menu(code="admin:quick")
	@Override
	public ModelAndView toEdit(QuickForm form, BindingResult result,
			Model model) {
		// TODO Auto-generated method stub
		return super.toEdit(form, result, model);
	}

}
