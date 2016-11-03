package cn.wsalix.finance.web;

import java.util.List;

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
import cn.wsalix.finance.entity.CardWaste;
import cn.wsalix.finance.entity.CreditCard;
import cn.wsalix.finance.entity.Customer;
import cn.wsalix.finance.form.CardWasteForm;
import cn.wsalix.finance.repository.CardWasteRepository;
import cn.wsalix.finance.service.BankService;
import cn.wsalix.finance.service.CardWasteService;
import cn.wsalix.finance.service.CreditCardService;
import cn.wsalix.finance.service.CustomerService;

@Controller
@RequestMapping(value = "/finance/card_waste")
public class CardWasteAction
		extends
		SimpleActionImpl<CardWasteForm, CardWasteService, CardWasteRepository, CardWaste> {
	@Autowired
	private CardWasteService cardWasteService;
	@Autowired
	private CreditCardService creditCardService;
	@Autowired
	private CustomerService customerService;

	@Override
	public CardWasteService getService() {
		return cardWasteService;
	}


	@Override
	public ModelAndView toAdd(CardWasteForm form, BindingResult result,
			Model model) {
	
		if (form.getCustomerId() != null && form.getCustomerId() != 0) {
			Customer customer = customerService.findById(form.getCustomerId());
			model.addAttribute("customer", customer);
		}
		if (form.getCardId() != null && form.getCardId() != 0) {
			CreditCard creditCard = creditCardService
					.findById(form.getCardId());
			model.addAttribute("creditCard", creditCard);
		}
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView toEdit(CardWasteForm form, BindingResult result,
			Model model) {
		if (form.getCustomerId() != null && form.getCustomerId() != 0) {
			Customer customer = customerService.findById(form.getCustomerId());
			model.addAttribute("customer", customer);
		}
		if (form.getCardId() != null && form.getCardId() != 0) {
			CreditCard creditCard = creditCardService
					.findById(form.getCardId());
			model.addAttribute("creditCard", creditCard);
		}
		return super.toEdit(form, result, model);
	}

	@Override
	public ModelAndView list(CardWasteForm form, BindingResult result, Model model, Pageable pageable) {
		if (form.getCustomerId() != null && form.getCustomerId() != 0) {
			Customer customer = customerService.findById(form.getCustomerId());
			model.addAttribute("customer", customer);
		}
		if (form.getCardId() != null && form.getCardId() != 0) {
			CreditCard creditCard = creditCardService
					.findById(form.getCardId());
			model.addAttribute("creditCard", creditCard);
		}
		return super.list(form,result, model, pageable);
	}

}
