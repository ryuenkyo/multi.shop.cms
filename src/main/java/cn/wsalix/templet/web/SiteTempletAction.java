package cn.wsalix.templet.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.templet.entity.SiteTemplet;
import cn.wsalix.templet.form.SiteTempletForm;
import cn.wsalix.templet.repository.SiteTempletRepository;
import cn.wsalix.templet.service.SiteTempletService;

@Controller
@RequestMapping(value = "/templet/sitetemplet")
public class SiteTempletAction
		extends
		SimpleActionImpl<SiteTempletForm,SiteTempletService, SiteTempletRepository, SiteTemplet> {
	@Autowired
	private SiteTempletService siteTempletService;

	@Override
	public SiteTempletService getService() {
		return siteTempletService;
	}


	@RequiresPermissions("sitetemplet:new")
	@RequestMapping(value = "/addpage/{id}", method = RequestMethod.GET)
	public ModelAndView priPageAdd(@PathVariable Long id, Model model) {
		return new ModelAndView("redirect:/" + module() + "/templetpage"
				+ "/new/" + id);
	}

	@RequestMapping(value = "/{id}/viewpage", method = RequestMethod.GET)
	public ModelAndView view2Page(@PathVariable Long id, Model model) {
		SiteTemplet entity = getService().findById(id);
		//model.addAttribute("templetPages", entity.getSitePages());
		return new ModelAndView(module() + "/" + getService().module()
				+ "/view", "form", entity);
	}

	@RequestMapping(value = "/st/{id}/edit", method = RequestMethod.GET)
	public ModelAndView priUpdate2Page(@PathVariable Long id, Model model) {
		SiteTemplet entity = getService().findById(id);
		model.addAttribute("form", entity);
		//model.addAttribute("templetPages", entity.getSitePages());
		return new ModelAndView(module() + "/" + getService().module()
				+ "/edit", new ModelMap(entity));
	}

	@RequestMapping(value = "/p/{id}", method = RequestMethod.GET)
	public ModelAndView projectBySiteTemp(@PathVariable Long id, Model model) {
		//SiteTemplet entity = getService().findById(id);
		return new ModelAndView("redirect:/templet/prositetemplet/st/" + id);
	}

	@RequestMapping(value = "/page/{stId}/", method = RequestMethod.GET)
	public ModelAndView pageBySiteTemp(@PathVariable Long stId, Model model) {
		return new ModelAndView("redirect:/templet/sitepage/" + stId+"/");
	}

}