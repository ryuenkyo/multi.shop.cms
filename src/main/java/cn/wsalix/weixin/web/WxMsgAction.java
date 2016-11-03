package cn.wsalix.weixin.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.wsalix.admin.entity.SysMenu;
import cn.wsalix.weixin.WxCommonAction;
import cn.wsalix.weixin.entity.WxMessage;
import cn.wsalix.weixin.form.WxMessageForm;
import cn.wsalix.weixin.repository.WxMessageRepository;
import cn.wsalix.weixin.service.WxMessageService;

@Controller
@RequestMapping(value = "/weixin/message")
public class WxMsgAction extends
		WxCommonAction<WxMessageForm,WxMessageService, WxMessageRepository, WxMessage> {
	@Autowired
	private WxMessageService wxMessageService;

	@Override
	public WxMessageService getService() {
		return wxMessageService;
	}
	@RequestMapping(value = "/{id}", method = RequestMethod.POST)
	public ModelAndView item(@PathVariable Long id, Model model) {		
		WxMessage entity = wxMessageService.findById(id);
		model.addAttribute("form", entity);
		return new ModelAndView(module() + "/item");
	}

}
