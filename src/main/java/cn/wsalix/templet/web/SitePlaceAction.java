package cn.wsalix.templet.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.templet.entity.SitePlace;
import cn.wsalix.templet.form.SitePlaceForm;
import cn.wsalix.templet.repository.SitePlaceRepository;
import cn.wsalix.templet.service.PageDataService;
import cn.wsalix.templet.service.SitePagePlaceService;
import cn.wsalix.templet.service.SitePageService;
import cn.wsalix.templet.service.SitePlaceService;
import cn.wsalix.templet.service.SiteTempletService;

@Controller
@RequestMapping(value = "/templet/siteplace")
public class SitePlaceAction extends
		SimpleActionImpl<SitePlaceForm,SitePlaceService, SitePlaceRepository, SitePlace> {
	@Autowired
	private SitePageService sitePageService;
	@Autowired
	private SitePlaceService sitePlaceService;
	@Autowired
	private SitePagePlaceService sitePagePlaceService;
	@Autowired
	private SiteTempletService siteTempletService;
	@Autowired
	private PageDataService pageDataService;
	@Override
	public SitePlaceService getService() {
		return sitePlaceService;
	}

	@RequestMapping(value = "/place/{id}", method = RequestMethod.GET)
	public ModelAndView placeByPageId(@PathVariable Long id, Model model) {
		return new ModelAndView("redirect:/templet/page/" + id);
	}
}