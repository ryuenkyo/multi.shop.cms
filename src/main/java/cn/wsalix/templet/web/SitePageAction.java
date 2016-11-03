package cn.wsalix.templet.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.annotation.Token;
import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.templet.entity.SitePage;
import cn.wsalix.templet.entity.SiteTemplet;
import cn.wsalix.templet.form.SitePageForm;
import cn.wsalix.templet.repository.SitePageRepository;
import cn.wsalix.templet.service.SitePageService;
import cn.wsalix.templet.service.SiteTempletService;

@Controller
@RequestMapping(value = "/templet/sitepage")
public class SitePageAction extends
		SimpleActionImpl<SitePageForm,SitePageService, SitePageRepository, SitePage> {
	@Autowired
	private SitePageService sitePageService;
	@Autowired
	private SiteTempletService siteTempletService;

	@Override
	public SitePageService getService() {
		return sitePageService;
	}

	@RequestMapping(value = "/{stId}", method = RequestMethod.GET)
	public ModelAndView listByStId(@PathVariable Long stId, Model model,
			Pageable pageable) {
		SiteTemplet siteTemplet = siteTempletService.findById(stId);
		model.addAttribute("siteTemplet", siteTemplet);
		Page<SitePage> sitePages = sitePageService.findByStId(stId, pageable);
		model.addAttribute("resPage", sitePages);
		return new ModelAndView(module() + "/" + getService().module()
				+ "/list");
	}

	/**
	 * @param stId
	 * @param model
	 * @return 基于站点新增
	 */
	@Token(save = true)
	@RequestMapping(value = "/{stId}/save", method = RequestMethod.GET)
	public ModelAndView priAdd(@PathVariable Long stId, Model model) {
		SiteTemplet siteTemplet = siteTempletService.findById(stId);
		model.addAttribute("siteTemplet", siteTemplet);
		// model.addAttribute("templetPages",
		// siteTemplet.getTemplet().getTempletPages());
		return null;//super.priAdd(model);
	}

	@Token(remove = true)
	@RequestMapping(value = "/{siteId}/save", method = RequestMethod.POST)
	public ModelAndView save(@PathVariable Long siteId, SitePage entity,
			BindingResult result) {
		SiteTemplet siteTemplet = siteTempletService.findById(siteId);
		if (result.hasErrors()) {
			return new ModelAndView("redirect:/" + module() + "/"
					+ getService().module() + "/save");
		} else {
			//entity.setSiteTemplet(siteTemplet);
			//entity = getService().save(entity);
			return new ModelAndView("redirect:/" + module() + "/"
					+ getService().module() + "/" + entity.getId() + "/view");
		}
	}

	@Token(save = true)
	@RequestMapping(value = "/{stId}/{menuStruId}/save", method = RequestMethod.GET)
	public ModelAndView priAddBySiteAndMenu(@PathVariable Long stId,
			@PathVariable Long menuStruId, Model model) {
		SiteTemplet siteTemplet = siteTempletService.findById(stId);
		model.addAttribute("siteTemplet", siteTemplet);
		/*SysMenuStructure menuStructure = menuStructureService
				.findById(menuStruId);
		model.addAttribute("menuStructure", menuStructure);
		return super.priAdd(model);*/
		return null;//
	}

	@Token(remove = true)
	@RequestMapping(value = "/{stId}/{menuStruId}/save", method = RequestMethod.POST)
	public ModelAndView saveBySiteAndMenu(@PathVariable Long stId,
			@PathVariable Long menuStruId, SitePage entity, BindingResult result) {
		SiteTemplet siteTemplet = siteTempletService.findById(stId);
		if (result.hasErrors()) {
			return new ModelAndView("redirect:/" + module() + "/"
					+ getService().module() + "/save");
		} else {
/*			SysMenuStructure menuStructure = menuStructureService
					.findById(menuStruId);
			entity.setMenuStructure(menuStructure);
			entity.setSiteTemplet(siteTemplet);
			entity = getService().save(entity);*/
			return new ModelAndView("redirect:/" + module() + "/"
					+ getService().module() + "/" + entity.getId() + "/view");
		}
	}
	@ResponseBody
	@RequestMapping(value = "/{sitePageId}/{tempFile}/", method = RequestMethod.GET)
	public String updateMenuSite(@PathVariable Long sitePageId,
			@PathVariable String tempFile, Model model) {
		sitePageService.saveTempFileById(sitePageId,tempFile);
		return "ok";
	}
	@RequestMapping(value = "/place/{id}", method = RequestMethod.GET)
	public ModelAndView placeByPageId(@PathVariable Long id, Model model) {
		return new ModelAndView("redirect:/templet/siteplace/page/" + id);
	}
}