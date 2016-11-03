package cn.wsalix.templet.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.templet.entity.ProSiteTemplet;
import cn.wsalix.templet.entity.SiteInfo;
import cn.wsalix.templet.entity.SiteTemplet;
import cn.wsalix.templet.entity.Templet;
import cn.wsalix.templet.form.ProSiteTempletForm;
import cn.wsalix.templet.repository.ProSiteTempletRepository;
import cn.wsalix.templet.service.ProSiteTempletService;
import cn.wsalix.templet.service.ProjectService;
import cn.wsalix.templet.service.SiteInfoService;
import cn.wsalix.templet.service.SiteTempletService;
import cn.wsalix.templet.service.TempletService;
import cn.anlaser.utils.DynamicSpecifications;
import cn.anlaser.utils.SearchFilter;

@Controller
@RequestMapping(value = "/templet/prositetemplet")
public class ProSiteTempletAction
		extends
		SimpleActionImpl<ProSiteTempletForm,ProSiteTempletService, ProSiteTempletRepository,ProSiteTemplet > {
	@Autowired
	private ProSiteTempletService proSiteTempletService;
	@Autowired
	private ProjectService projectService;
	@Autowired
	private SiteTempletService siteTempletService;
	@Autowired
	private SiteInfoService siteService;
	@Autowired
	private TempletService templetService;

	@Override
	public ProSiteTempletService getService() {
		return proSiteTempletService;
	}

	@RequestMapping(value = "/{siteId}/", method = RequestMethod.GET)
	public ModelAndView getBySiteId(@PathVariable Long siteId,
			ProSiteTemplet proSiteTemplet, Model model, Pageable pageable) {
		SiteInfo siteInfo = siteService.findById(siteId);
		model.addAttribute("site", siteInfo);

		Map<String, Object> searchParams = new HashMap<String, Object>();
		searchParams.put("EQ_siteInfo.id", siteId);
		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		Specification<ProSiteTemplet> spec = DynamicSpecifications
				.bySearchFilter(filters.values(), ProSiteTemplet.class);
		return null;//return super.query(spec, model, pageable);
	}

	@RequestMapping(value = "/{siteId}/bak", method = RequestMethod.GET)
	public ModelAndView getBySiteId1(@PathVariable Long siteId, Model model,
			Pageable pageable) {
		SiteInfo siteInfo = siteService.findById(siteId);
		model.addAttribute("site", siteInfo);

		/*
		 * Map<String, Object> searchParams = new HashMap<String, Object>();
		 * searchParams.put("EQ_siteInfo.id", siteId); Map<String, SearchFilter>
		 * filters = SearchFilter.parse(searchParams);
		 * Specification<ProSiteTemplet> spec = DynamicSpecifications
		 * .bySearchFilter(filters.values(), ProSiteTemplet.class); return
		 * super.query(spec, model, pageable);
		 */
/*
		ProSiteTemplet proSiteTemplet = proSiteTempletService
				.findBySiteIdOne(siteInfo);
		model.addAttribute("proSiteTemplet", proSiteTemplet);*/
		Map<String, Object> searchParams = new HashMap<String, Object>();
		// searchParams.put("EQ_siteInfo.id", siteId);
		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		Specification<Templet> spec = DynamicSpecifications.bySearchFilter(
				filters.values(), Templet.class);

		/*Page<Templet> resPage = templetService.findAll(spec, pageable);
		model.addAttribute("resPage", resPage);
*/
		return new ModelAndView(module() + "/" + getService().module()
				+ "/list");
	}

	@RequestMapping(value = "/{siteId}/{tempId}", method = RequestMethod.GET)
	@ResponseBody
	public String changeTemp(@PathVariable Long siteId,
			@PathVariable Long tempId) {
		//proSiteTempletService.save(siteId, tempId);
		return "{'status':'1','message':'ok'}";
	}

	@RequestMapping(value = "/{siteId}/", method = RequestMethod.POST)
	public ModelAndView postBySiteId(@PathVariable Long siteId,
			ProSiteTemplet proSiteTemplet, Model model, Pageable pageable) {
		/*SiteInfo siteInfo = siteService.findById(siteId);
		model.addAttribute("site", siteInfo);
*/
		Map<String, Object> searchParams = new HashMap<String, Object>();
		searchParams.put("EQ_siteInfo.id", siteId);
		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		Specification<ProSiteTemplet> spec = DynamicSpecifications
				.bySearchFilter(filters.values(), ProSiteTemplet.class);
		return null;//return super.query(spec, model, pageable);
	}

	@RequestMapping(value = "/{siteId}/save", method = RequestMethod.GET)
	public ModelAndView priSave(@PathVariable Long siteId, Model model) {
		SiteInfo siteInfo = siteService.findById(siteId);
		model.addAttribute("site", siteInfo);

		model.addAttribute("siteTemplets", siteTempletService.findAll());

		return new ModelAndView(module() + "/" + getService().module() + "/new");
	}

	@RequestMapping(value = "/{siteId}/{id}/edit", method = RequestMethod.GET)
	public ModelAndView priEdit(@PathVariable Long siteId,
			@PathVariable Long id, Model model) {
		return new ModelAndView("redirect:/" + module() + "/prositetemplet/"
				+ id + "/edit/");
	}


	@RequestMapping(value = "/{siteId}/{id}/View", method = RequestMethod.GET)
	public ModelAndView priView(@PathVariable Long siteId,
			@PathVariable Long id, Model model) {
		return new ModelAndView("redirect:/" + module() + "/prositetemplet/"
				+ id + "/view/");
	}

	@RequestMapping(value = "/st/{id}", method = RequestMethod.GET)
	public ModelAndView listByStId(@PathVariable Long id, Model model) {
		List<ProSiteTemplet> proSiteTemplets = proSiteTempletService
				.findByStId(id);
		model.addAttribute("proSiteTemplets", proSiteTemplets);
		return new ModelAndView(module() + "/" + getService().module()
				+ "/prolist");
	}

	@RequestMapping(value = "/new/{id}", method = RequestMethod.GET)
	public ModelAndView priAdd(@PathVariable Long id, Model model) {
		/*APProject entity = projectService.findById(id);
		model.addAttribute("project", entity);*/
		model.addAttribute("siteTemples", siteTempletService.findAll());
		return null;//return super.priAdd(model);
	}

/*	@Override
	public ModelAndView add(ProSiteTemplet entity, BindingResult result) {
		SiteInfo siteInfo = siteService.findById(entity.getSiteId());
		entity.setProject(siteInfo.getProject());
		SiteTemplet siteTemplet = siteTempletService.findById(entity
				.getSiteTempletId());
		entity.setSiteTemplet(siteTemplet);
		return super.add(entity, result);
	}*/

	@RequestMapping(value = "/viewsitetemplet/{id}", method = RequestMethod.GET)
	public ModelAndView viewSiteTemplet(@PathVariable Long id, Model model) {
		SiteTemplet siteTemplet = siteTempletService.findById(id);
		return new ModelAndView("redirect:/" + module() + "/sitetemplet/"
				+ siteTemplet.getId() + "/view/");
	}

	@RequestMapping(value = "/addpage/{id}", method = RequestMethod.GET)
	public ModelAndView priPageAdd(@PathVariable Long id, Model model) {
		return new ModelAndView("redirect:/" + module() + "/templetpage"
				+ "/new/" + id);
	}

}