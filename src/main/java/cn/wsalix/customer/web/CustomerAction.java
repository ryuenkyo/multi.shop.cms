package cn.wsalix.customer.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.finance.entity.Customer;
import cn.wsalix.finance.form.CustomerForm;
import cn.wsalix.finance.repository.CustomerRepository;
import cn.wsalix.finance.service.CustomerService;
import cn.wsalix.msg.service.ChatService;

@Controller
@RequestMapping(value = "/customer")
public class CustomerAction
		extends
		SimpleActionImpl<CustomerForm, CustomerService, CustomerRepository, Customer> {
	@Autowired
	private ChatService chatService;

	@Autowired
	private CustomerService customerService;

	@Override
	public CustomerService getService() {
		return customerService;
	}

	@RequestMapping(value = { "/", "", "/index" }, method = RequestMethod.GET)
	public ModelAndView indexPost(HttpServletRequest request, Model model) {
		return new ModelAndView("/customer/index");
	}
}
