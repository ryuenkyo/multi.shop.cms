package cn.wsalix.weixin.web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.utils.CheckUtil;
import cn.anlaser.utils.FastJsonMapper;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.service.UserService;
import cn.wsalix.config.SysConfig;
import cn.wsalix.constant.Global;
import cn.wsalix.login.form.WxCodeForm;
import cn.wsalix.shop.init.ShopUserInit;
import cn.wsalix.weixin.entity.WxConfig;
import cn.wsalix.weixin.entity.WxMessage;
import cn.wsalix.weixin.entity.WxUser;
import cn.wsalix.weixin.service.WxConfigService;
import cn.wsalix.weixin.servlet.WeixinSupport;
import cn.wsalix.weixin.util.SignUtil;
import cn.wsalix.weixin.util.WxUtils;

@Controller
@RequestMapping(value = "/wx")
public class WeiXinAction extends WeixinSupport {
	private static final Logger logger = LoggerFactory
			.getLogger(WeiXinAction.class);
	@Autowired
	private UserService userService;
	@Autowired
	private WxConfigService wxConfigService;
	@Autowired
	private SysConfig sysConfig;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	@ResponseBody
	protected String jsonIndex(@PathVariable Long wxConfigId,
			HttpServletRequest request) {
		String paraLines = getInfo(request);
		WxConfig wxConfig = wxConfigService.findByUser(ShopUserInit.adminUser.getId());
		logger.info("weixin bind:" + paraLines);
		if (wxConfig != null && wxConfig.getWxToken() != null
				&& !wxConfig.getWxToken().equals("")
				&& isLegal(request, wxConfig)) {
			logger.info("weixin bind succ");
			// 绑定微信服务器成功
			return request.getParameter("echostr");
		} else {
			logger.info("weixin bind error");
			// 绑定微信服务器失败
			return "error";
		}
	}

	/**
	 * 绑定微信服务器
	 *
	 * @param request
	 *            请求
	 * @return 响应内容
	 */
	@RequestMapping(value = "/{wxConfigId}", method = RequestMethod.GET)
	@ResponseBody
	protected String jsonBnd(@PathVariable Long wxConfigId,
			HttpServletRequest request) {
		String paraLines = getInfo(request);
		logger.info("paraLines:" + paraLines + "|" + wxConfigId);
		logger.info("wxConfigService:" + wxConfigService);
		WxConfig wxConfig = wxConfigService.findById(wxConfigId);
		logger.info("weixin bind:" + paraLines);
		if (wxConfig != null && wxConfig.getWxToken() != null
				&& !wxConfig.getWxToken().equals("")
				&& isLegal(request, wxConfig)) {
			logger.info("weixin bind succ");
			// 绑定微信服务器成功
			return request.getParameter("echostr");
		} else {
			logger.info("weixin bind error");
			// 绑定微信服务器失败
			return "error";
		}
	}

	WxUtils wxUtils = new WxUtils();

	/**
	 * @param userId
	 * @param request
	 *            http 请求对象
	 * @param wxMessage
	 * @return 响应给微信服务器的消息报文
	 * @throws ServletException
	 *             异常
	 * @throws IOException
	 *             IO异常
	 */
	@RequestMapping(value = "/{wxConfigId}", method = RequestMethod.POST)
	@ResponseBody
	protected String jsonProcess(@PathVariable Long wxConfigId,
			HttpServletRequest request, WxMessage wxMessage)
			throws ServletException, IOException {
		logger.info("......................................" + wxConfigId);
		logger.info("weixin wxConfigId post:" + wxConfigId);
		String paraLines = getInfo(request);
		logger.info("weixin post:" + paraLines);
		String body = IOUtils.toString(request.getInputStream());
		logger.info("weixin body:" + body);
		WxConfig wxConfig = wxConfigService.findByConfigId(wxConfigId);
		if (wxConfig == null || wxConfig.getWxToken() == null
				|| wxConfig.getWxToken().equals("")
				|| !isLegal(request, wxConfig)) {
			logger.info("weixin mess error");
			return "mess error";
		}
		String encryptType = request.getParameter("encrypt_type");
		String msgSignature = request.getParameter("msg_signature");
		wxMessage.setEncryptType(encryptType);
		wxMessage.setMsgSignature(msgSignature);
		wxMessage.setWxConfig(wxConfig);
		// wxMessage.setBody(body);
		wxMessage.setXmlContent(body);
		return processRequest(wxMessage);
	}

	private String getInfo(HttpServletRequest request) {
		StringBuffer retBuff = new StringBuffer();
		retBuff.append(request.getRequestURI());
		int i = 0;
		Map<String, String[]> resMaps = request.getParameterMap();
		for (Map.Entry<String, String[]> reqMap : resMaps.entrySet()) {
			if (i++ == 0) {
				retBuff.append("?" + reqMap.getKey() + "="
						+ getVal(reqMap.getValue()));
			} else {
				retBuff.append("&" + reqMap.getKey() + "="
						+ getVal(reqMap.getValue()));
			}
		}
		return retBuff.toString();
	}

	private String getVal(String[] values) {
		StringBuffer valBuff = new StringBuffer();
		for (String val : values) {
			valBuff.append("," + val);
		}
		return valBuff.substring(1);
	}

	@RequestMapping(value = { "/{wxConfigId}/redirect_uri" }, method = RequestMethod.GET)
	public ModelAndView redirectUri(@PathVariable Long wxConfigId,
			@Valid WxCodeForm form, BindingResult result, Model model,
			HttpServletRequest request) {
		logger.info("GET register[code]:" + form.getCode());
		WxConfig wxConfig = null;
		if (wxConfigId != null && wxConfigId != 0) {
			wxConfig = wxConfigService.findByConfigId(wxConfigId);
		} else {
			wxConfig = wxConfigService.findByUser(ShopUserInit.adminUser.getId());
		}
		String paraLines = getInfo(request);
		logger.info("redirect_uri:" + paraLines);
		register(wxConfig, form);
		return new ModelAndView("site/register");
	}

	@RequestMapping(value = { "/{wxConfigId}/wx_register" }, method = RequestMethod.GET)
	public ModelAndView wxRegister(@PathVariable Long wxConfigId,
			@Valid WxCodeForm form, BindingResult result, Model model) {
		logger.info("register[code]:" + form.getCode());
		WxConfig wxConfig = null;
		if (wxConfigId != null && wxConfigId != 0) {
			wxConfig = wxConfigService.findByConfigId(wxConfigId);
		} else {
			wxConfig = wxConfigService.findByUser(ShopUserInit.adminUser.getId());
		}
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("code")) {
					logger.info("register:" + oauth2(wxConfig, "wx_register"));
					return new ModelAndView("redirect:"
							+ oauth2(wxConfig, "wx_register"));
				}
			}
		}
		register(wxConfig, form);
		return new ModelAndView("redirect:/site/user/index" + Global.urlSuffix);
	}

	@RequestMapping(value = { "/{wxConfigId}/reg" }, method = RequestMethod.GET)
	public ModelAndView reg(@PathVariable Long wxConfigId,
			@Valid WxCodeForm form, BindingResult result, Model model) {
		logger.info("register[code]:" + form.getCode());
		WxConfig wxConfig = null;
		if (wxConfigId != null && wxConfigId != 0) {
			wxConfig = wxConfigService.findByConfigId(wxConfigId);
		} else {
			wxConfig = wxConfigService.findByUser(ShopUserInit.adminUser.getId());
		}
		if (form.getCode() == null) {
			logger.info("register:" + oauth2(wxConfig, "reg"));
			return new ModelAndView("redirect:" + oauth2(wxConfig, "reg"));
		}
		return new ModelAndView("site/register");
	}

	@RequestMapping("/custom/{id}")
	public String custom(Model model, @PathVariable("id") Integer id,
			String code) {
		if (CheckUtil.isEmpty(id)) {
			if (CheckUtil.isEmpty(code)) {
				return "redirect:https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx66c979e3ea61ad89&redirect_uri=http%3A%2F%2Fwx.bocommlife.com%2Fcr%2Fcustom%2F0.html&response_type=code&scope=snsapi_userinfo&state=123#wech";
			} else {
				// TODO opendid
				String url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=wx66c979e3ea61ad89&secret=563903d45c5bded7bfadf3fe6b3dba7b&grant_type=authorization_code&code="
						+ code;

				String reponse = "";// Request.Get(url).execute().returnContent().asString();
				String openid = reponse.substring(
						reponse.indexOf("openid\":\"") + 9,
						reponse.lastIndexOf("\","));
				logger.info("openid====" + openid);
				// User user = userMapper.findByOpenId(openid);
				// id = user.getId();

			}
		}
		return "";
	}

	/**
	 * @param wxConfigId
	 * @param form
	 * @param result
	 * @param model
	 * @param request
	 * @return 微信用户， 1，注册，生成个人信息页 2，修改电话，生成静态页 3，发布个人需求，生成静态页
	 */
	@RequestMapping(value = { "/{wxConfigId}/index" }, method = RequestMethod.GET)
	public ModelAndView wxIndex(@PathVariable Long wxConfigId,
			@Valid WxCodeForm form, BindingResult result, Model model,
			HttpServletRequest request) {
		logger.info("register[code]:" + form.getCode());
		WxConfig wxConfig = null;
		if (wxConfigId != null && wxConfigId != 0) {
			wxConfig = wxConfigService.findByConfigId(wxConfigId);
		} else {
			wxConfig = wxConfigService.findByUser(ShopUserInit.adminUser.getId());
		}
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("code")) {
					logger.info("register:" + oauth2(wxConfig, "register"));
					return new ModelAndView("redirect:"
							+ oauth2(wxConfig, "register"));
				}
			}
		}
		SysUser user = register(wxConfig, form);
		return new ModelAndView("redirect:/" + wxConfigId + "/index"
				+ Global.urlSuffix);
	}

	@RequestMapping(value = { "/{wxConfigId}/user_center" }, method = RequestMethod.GET)
	public ModelAndView register(@PathVariable Long wxConfigId,
			@Valid WxCodeForm form, BindingResult result, Model model) {
		logger.info("register[code]:" + form.getCode());
		WxConfig wxConfig = null;
		if (wxConfigId != null && wxConfigId != 0) {
			wxConfig = wxConfigService.findByConfigId(wxConfigId);
		} else {
			wxConfig = wxConfigService.findByUser(ShopUserInit.adminUser.getId());
		}
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("code")) {
					logger.info("register:" + oauth2(wxConfig, "register"));
					return new ModelAndView("redirect:"
							+ oauth2(wxConfig, "register"));
				}
			}
		}
		SysUser user = register(wxConfig, form);
		return new ModelAndView("redirect:/user_center" + Global.urlSuffix);
		/*
		 * model.addAttribute("user", user); model.addAttribute("wxUser",
		 * user.getWxUser()); return new ModelAndView("site/index");
		 */
	}

	@RequestMapping(value = { "/{wxConfigId}/demo_user_center" }, method = RequestMethod.GET)
	public ModelAndView oauth2(Model model) {
		String userInfo = "{\"openid\":\"ok4hzwmAR7yeJPsAOpcHFG9n9o7I\",\"nickname\":\"杨增鹰\",\"sex\":1,\"language\":\"zh_CN\",\"city\":\"Pudong New District\",\"province\":\"Shanghai\",\"country\":\"CN\",\"headimgurl\":\"http://wx.qlogo.cn/mmopen/FCRcxicX1FSRpzufFGwStSvxNo9mvDKo6wok4DInZK7R9OGRiaoegjDgdcxtW81p6eO4SB1yotiaXmhjmjaDUPFQgmicGflqoTSo/0\",\"privilege\":[]}";
		WxUser wxUser = FastJsonMapper.fromJson(userInfo, WxUser.class);
		/*
		 * model.addAttribute("wxUser", wxUser); return new
		 * ModelAndView("site/user_center");
		 */
		return new ModelAndView("redirect:/user_center" + Global.urlSuffix);
		/* model.addAttribute("user", user);* */
	}

	protected boolean isLegal(HttpServletRequest request, WxConfig wxConfig) {
		String signature = request.getParameter("signature");
		String timestamp = request.getParameter("timestamp");
		String nonce = request.getParameter("nonce");
		return SignUtil.checkSignature(wxConfig.getWxToken(), signature,
				timestamp, nonce);
	}
}
