package cn.wsalix.msg.web;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.annotation.Menu;
import cn.wsalix.msg.entity.Message;
import cn.wsalix.msg.form.MessageForm;
import cn.wsalix.msg.repository.MessageRepository;
import cn.wsalix.msg.service.MessageService;
import cn.wsalix.observable.service.SendService;
//@Menu(code="shop:mess",name="消息管理",menuUrl="/store/mess/list.do")
@Controller
@RequestMapping(value = "/admin/mess")
public class MessageAction extends
		SimpleActionImpl<MessageForm, MessageService, MessageRepository, Message>{
	private static final Logger logger = LoggerFactory
			.getLogger(MessageAction.class);

	@Autowired
	private MessageService messageService;
	@Autowired
	private SendService sendService;

	@Override
	public MessageService getService() {
		return messageService;
	}
	
	@Override
	public String module() {
		return "shop/mess";
	}
	@Menu(code="shop:mess")
	@Override
	public ModelAndView toEdit(MessageForm form, BindingResult result,
			Model model) {
		// TODO Auto-generated method stub
		return super.toEdit(form, result, model);
	}
	@Menu(code="shop:mess")
	@Override
	public ModelAndView list(MessageForm form,BindingResult result, Model model, Pageable pageable) {
		model.addAttribute("type", form.getType());
		model.addAttribute("form", getService().findObjForm(form));
		return super.list(form,result, model, pageable);
	}
	@Menu(code="shop:mess")
	@Override
	public ModelAndView toAdd(@Valid MessageForm form, BindingResult result,
			Model model) {
		model.addAttribute("type", form.getType());
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("fkId")) {
					throw throwException(commonException.getIdNull());
				}
			}
		}
		model.addAttribute("form", getService().findObjForm(form));
		return super.toAdd(form, result, model);
	}
	@ResponseBody
	@RequestMapping(value = "/push_mess", method = RequestMethod.GET)
	public String generateFile(MessageForm form, BindingResult result,
			Model model) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("id")) {
					throw throwException(commonException.getIdNull());
				}
			}
		}
		sendService.sendMess(form);
		return "ok";
	}
	
}
