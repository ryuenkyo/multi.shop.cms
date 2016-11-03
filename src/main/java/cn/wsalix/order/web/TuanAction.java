package cn.wsalix.order.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.BasicActionImpl;
import cn.wsalix.config.AppConfig;
import cn.wsalix.freemarker.FreemarkerUtil;
import cn.wsalix.order.entity.MasterTuan;
import cn.wsalix.order.repository.TuanRepository;
import cn.wsalix.order.service.TuanService;
import cn.wsalix.status.TuanEnum;
import cn.wsalix.user.form.TuanForm;

@Controller
@RequestMapping(value = "/user/tuan")
public class TuanAction extends
		BasicActionImpl<TuanForm, TuanService, TuanRepository, MasterTuan> {
	@Autowired
	private TuanService tuanService;

	@Override
	public TuanService getService() {
		return tuanService;
	}

	@RequestMapping(value = "/list_by_product", method = RequestMethod.GET)
	public ModelAndView listByProduct(TuanForm form, Model model,
			Pageable pageable) {
		return super.list(form, model, pageable);
	}

	@RequestMapping(value = "/curr_list", method = RequestMethod.GET)
	public ModelAndView currList(TuanForm form, Model model, Pageable pageable) {
		form.setStatus(TuanEnum.underway);
		return super.list(form, model, pageable);
	}

	@RequestMapping(value = "/succ_list", method = RequestMethod.GET)
	public ModelAndView succList(TuanForm form, Model model, Pageable pageable) {
		form.setStatus(TuanEnum.succ);
		return super.list(form, model, pageable);
	}

	@RequestMapping(value = "/fail_list", method = RequestMethod.GET)
	public ModelAndView failList(TuanForm form, Model model, Pageable pageable) {
		form.setStatus(TuanEnum.fail);
		return super.list(form, model, pageable);
	}

	@Autowired
	private AppConfig appConfig;
	@Autowired
	private FreemarkerUtil freemarkerUtil;

	@RequestMapping(value = "/build_file", method = RequestMethod.GET)
	public ModelAndView generateFile(TuanForm form, BindingResult result,
			Model model) {
		String htmlPath = tuanService.buildHtml(form.getId());
		model.addAttribute("webUrl", appConfig.getHttpPrix() + htmlPath);
		return new ModelAndView(module() + "/build_file");
	}
}
