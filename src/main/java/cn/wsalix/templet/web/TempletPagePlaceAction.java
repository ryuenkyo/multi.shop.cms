package cn.wsalix.templet.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.templet.entity.SiteTemplet;
import cn.wsalix.templet.entity.TempletPagePlace;
import cn.wsalix.templet.form.TempletPagePlaceForm;
import cn.wsalix.templet.repository.TempletPagePlaceRepository;
import cn.wsalix.templet.service.SiteTempletService;
import cn.wsalix.templet.service.TempletPagePlaceService;

@Controller
@RequestMapping(value = "/templet/templetplace")
public class TempletPagePlaceAction extends
		SimpleActionImpl<TempletPagePlaceForm,TempletPagePlaceService, TempletPagePlaceRepository, TempletPagePlace> {
	@Autowired
	private TempletPagePlaceService templetPlaceService;
	@Autowired
	private SiteTempletService siteTempletService;

	@Override
	public TempletPagePlaceService getService() {
		return templetPlaceService;
	}


	//@RequiresPermissions("templetpage:new")
	@RequestMapping(value = "/{id}/new", method = RequestMethod.GET)
	public ModelAndView priAdd1(@PathVariable Long id, Model model) {
		SiteTemplet entity = siteTempletService.findById(id);
		model.addAttribute("siteTemplet", entity);
		//model.addAttribute("templetPages", entity.getSitePages());
		return null;//return super.priAdd(model);
	}/*
	@Function(code="add",title = "%s新增", url = "add")
	public ModelAndView add2(TempletPage entity, BindingResult result) {
		SiteTemplet siteTemplet = siteTempletService.findById(entity.getSiteTempletId());
		entity.setSiteTemplet(siteTemplet);
		return super.add(entity, result);
	}*/
}