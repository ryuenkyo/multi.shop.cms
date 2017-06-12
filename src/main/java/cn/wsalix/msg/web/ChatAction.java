package cn.wsalix.msg.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.page.QueryPage;
import cn.anlaser.web.impl.CommonActionImpl;
import cn.wsalix.constant.Global;
import cn.wsalix.msg.entity.Chat;
import cn.wsalix.msg.repository.ChatRepository;
import cn.wsalix.msg.service.ChatService;
import cn.wsalix.user.form.ChatForm;

@Controller
@RequestMapping(value = "/user/chat")
public class ChatAction extends
		CommonActionImpl<ChatForm, ChatService, ChatRepository, Chat> {
	@Autowired
	private ChatService chatService;

	@Override
	public ChatService getService() {
		return chatService;
	}

	@RequestMapping(value = "/by_issue", method = RequestMethod.GET)
	public ModelAndView listByUserId(ChatForm form, Model model,
			Pageable pageable) {
		QueryPage<Chat> resPage = getService().findAll(form, pageable);
		model.addAttribute("queryLine", resPage.getQueryLine());
		model.addAttribute("resLst", resPage.getPage());
		model.addAttribute("pageSize", resPage.getPage().getContent().size());
		return new ModelAndView(module() + "/list");
	}
	@RequestMapping(value = "/send_chat", method = RequestMethod.GET)
	public ModelAndView sendChat(ChatForm form,  BindingResult result,
			Model model,
			Pageable pageable) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("userId")) {
					//throw Global.getException(commonException.getUserIdNull());
				}
				if (fieldError.getField().equals("productId")) {
					//throw Global.getException(commonException.getProductIdNull());
				}
				if (fieldError.getField().equals("content")) {
					//throw Global.getException(commonException.getContentNull());
				}
				
			}
		}
		chatService.sendClientChat(form);
		return new ModelAndView(module() + "/list");
	}
}
