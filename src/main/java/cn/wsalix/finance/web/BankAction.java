package cn.wsalix.finance.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.admin.entity.SysMenu;
import cn.wsalix.finance.entity.Bank;
import cn.wsalix.finance.form.BankForm;
import cn.wsalix.finance.repository.BankRepository;
import cn.wsalix.finance.service.BankService;
import cn.wsalix.finance.service.CreditCardService;
import cn.wsalix.finance.service.CustomerService;

@Controller
@RequestMapping(value = "/finance/bank")
public class BankAction
		extends
		SimpleActionImpl<BankForm, BankService, BankRepository, Bank> {
	@Autowired
	private BankService BankService;
	@Autowired
	private CreditCardService creditCardService;
	@Autowired
	private CustomerService customerService;
	@Override
	public BankService getService() {
		return BankService;
	}

	@RequiresRoles("finance:bank")
	@Override
	public ModelAndView toAdd(BankForm form, BindingResult result,
			Model model) {

		return super.toAdd(form, result, model);
	}
	@RequiresPermissions("finance:bank:edit")
	@Override
	public ModelAndView toEdit(BankForm form, BindingResult result,
			Model model) {

		return super.toEdit(form, result, model);
	}

}
