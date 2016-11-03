package cn.wsalix.finance.web;

import java.util.List;

import javax.validation.Valid;

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
import cn.wsalix.finance.entity.CreditCard;
import cn.wsalix.finance.entity.Customer;
import cn.wsalix.finance.form.CreditCardForm;
import cn.wsalix.finance.repository.CreditCardRepository;
import cn.wsalix.finance.service.BankService;
import cn.wsalix.finance.service.CreditCardService;
import cn.wsalix.finance.service.CustomerService;
@Controller
@RequestMapping(value = "/finance/credit_card")
public class CreditCardAction
		extends
		SimpleActionImpl<CreditCardForm, CreditCardService, CreditCardRepository, CreditCard> {
	@Autowired
	private CreditCardService creditCardService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private BankService bankService;

	@Override
	public CreditCardService getService() {
		return creditCardService;
	}

	
	@Override
	public ModelAndView toAdd(@Valid CreditCardForm form, BindingResult result,
			Model model) {
		List<Bank> banks = bankService.findAll();
		model.addAttribute("banks", banks);

		if (form.getCustomerId() != null && form.getCustomerId() != 0) {
			Customer customer = customerService.findById(form.getCustomerId());
			model.addAttribute("customer", customer);
		}	
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView toEdit(@Valid CreditCardForm form, BindingResult result,
			Model model) {
		List<Bank> banks = bankService.findAll();
		model.addAttribute("banks", banks);

		if (form.getCustomerId() != null && form.getCustomerId() != 0) {
			Customer customer = customerService.findById(form.getCustomerId());
			model.addAttribute("customer", customer);
		}	
		return super.toEdit(form, result, model);
	}

	@Override
	public ModelAndView list(CreditCardForm form,BindingResult result, Model model, Pageable pageable) {
		if (form.getCustomerId() != null && form.getCustomerId() != 0) {
			Customer customer = customerService.findById(form.getCustomerId());
			model.addAttribute("customer", customer);
		}	
		return super.list(form,result, model, pageable);
	}

	/*@RequestMapping(value = "/add_by_customerId", method = RequestMethod.GET)
	public ModelAndView addByProductId(@Valid ProductPriceForm form, BindingResult result, Model model) {
		if (form.getProductId() != null && form.getProductId() != 0) {
			Product product = productService.findById(form.getProductId());
			model.addAttribute("product", product);
		}	
		
		model.addAttribute("typeLst", PriceEnum.values());
		return super.toAdd(form,result,model);
	}*/
}