package cn.wsalix.trade.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/trade")
public class TradeAction {

	@RequestMapping(value = { "/", "", "/index" }, method = RequestMethod.GET)
	public ModelAndView indexPost(HttpServletRequest request, Model model) {
		return new ModelAndView("/trade/index");
	}

}
