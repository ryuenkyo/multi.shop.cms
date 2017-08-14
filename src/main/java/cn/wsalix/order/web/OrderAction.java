package cn.wsalix.order.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.order.entity.Order;
import cn.wsalix.order.form.OrderForm;
import cn.wsalix.order.repository.OrderRepository;
import cn.wsalix.order.service.OrderService;
import cn.wsalix.order.status.OrderEnum;

@Controller
@RequestMapping(value = "/user/order")
public class OrderAction extends
		SimpleActionImpl<OrderForm, OrderService, OrderRepository, Order>{
	@Autowired
	private OrderService orderService;
	@Autowired
	private UserService userService;

	@Override
	public OrderService getService() {
		return orderService;
	}
	/*
	 * @RequestMapping(value = "/undisposed_list", method = RequestMethod.GET)
	 * public String undisposedList(OrderForm form,Model model) {
	 * form.setStatus(OrderEnum.untreatedOrder);
	 * model.addAttribute("menus",orderService.findAll()); return module() +
	 * "/undisposed_list"; }
	 * 
	 * @RequestMapping(value = "/today_list", method = RequestMethod.GET) public
	 * String todayList(OrderForm form,Model model) {
	 * form.setStatus(OrderEnum.untreatedOrder);
	 * model.addAttribute("menus",orderService.findAll()); return module() +
	 * "/today_list"; }
	 */

	/**
	 * 未处理的订单
	 */
	@RequestMapping(value = "/undisposed_list", method = RequestMethod.GET)
	public ModelAndView undisposedList(OrderForm form, BindingResult result, Model model,
			Pageable pageable) {
		form.setStatus(OrderEnum.pending);
		return super.list(form,result, model, pageable);
	}

	/**
	 * 今日订单
	 */
	@RequestMapping(value = "/today_list", method = RequestMethod.GET)
	public ModelAndView todayList(OrderForm form, BindingResult result, Model model, Pageable pageable) {
		// form.setStatus(OrderEnum.dayOrder);
		return super.list(form,result, model, pageable);
	}

	/**
	 * 所有订单
	 */
	@Override
	public ModelAndView list(OrderForm form, BindingResult result, Model model, Pageable pageable) {
		if (form.getUserId() != null && form.getUserId() != 0) {
			SysUser user = userService.findById(form.getUserId());
			model.addAttribute("user", user);
		}
		return super.list(form,result, model, pageable);
	}
	/**
	 * @param form
	 * @param model
	 * @param pageable
	 * @return
	 * 团购
	 */
	@RequestMapping(value = "/tuan", method = RequestMethod.GET)
	public ModelAndView tuanList(OrderForm form, BindingResult result, Model model,
			Pageable pageable) {
		form.setTuan(true);
		return super.list(form,result, model, pageable);
	}
}
