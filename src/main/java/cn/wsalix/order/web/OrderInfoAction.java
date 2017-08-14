package cn.wsalix.order.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.anlaser.web.impl.BasicActionImpl;
import cn.wsalix.order.entity.OrderInfo;
import cn.wsalix.order.form.OrderInfoForm;
import cn.wsalix.order.repository.OrderInfoRepository;
import cn.wsalix.order.service.OrderInfoService;

@Controller
@RequestMapping(value = "/user/order_info")
public class OrderInfoAction
		extends
		BasicActionImpl<OrderInfoForm, OrderInfoService, OrderInfoRepository, OrderInfo> {
	@Autowired
	private OrderInfoService orderInfoService;

	@Override
	public OrderInfoService getService() {
		return orderInfoService;
	}

}
