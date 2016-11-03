package cn.wsalix.finance.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.finance.entity.Customer;
import cn.wsalix.finance.form.CustomerForm;
import cn.wsalix.finance.repository.CustomerRepository;
import cn.wsalix.finance.service.CustomerService;
@Controller
@RequestMapping(value = "/finance/customer")
public class CustomerAction
		extends
		SimpleActionImpl<CustomerForm, CustomerService, CustomerRepository, Customer> {
	@Autowired
	private CustomerService customerService;

	@Override
	public CustomerService getService() {
		return customerService;
	}

}