package cn.wsalix.templet.web;

import java.util.HashMap;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.annotation.Token;
import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.templet.entity.SiteTemplet;
import cn.wsalix.templet.entity.Templet;
import cn.wsalix.templet.entity.TempletPage;
import cn.wsalix.templet.form.TempletPageForm;
import cn.wsalix.templet.repository.TempletPageRepository;
import cn.wsalix.templet.service.SiteTempletService;
import cn.wsalix.templet.service.TempletPageService;
import cn.wsalix.templet.service.TempletService;
import cn.anlaser.utils.DynamicSpecifications;
import cn.anlaser.utils.SearchFilter;

@Controller
@RequestMapping(value = "/templet/templetpage")
public class TempletPageAction
		extends
		SimpleActionImpl<TempletPageForm,TempletPageService, TempletPageRepository, TempletPage> {
	@Autowired
	private TempletPageService templetPageService;
	@Autowired
	private SiteTempletService siteTempletService;
	@Autowired
	private TempletService templetService;

	@Override
	public TempletPageService getService() {
		return templetPageService;
	}

	@RequestMapping(value = "/{templetId}", method = RequestMethod.GET)
	public ModelAndView listByTemp(@PathVariable Long templetId, Model model,
			Pageable pageable) {
		Templet entity = templetService.findById(templetId);
		model.addAttribute("templet", entity);
		//
		Map<String, Object> searchParams = new HashMap<String, Object>();
		searchParams.put("EQ_templet.id", entity.getId());
		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		Specification<TempletPage> spec = DynamicSpecifications.bySearchFilter(
				filters.values(), TempletPage.class);
		return null;//return super.query(spec, model, pageable);
	}
	
	@RequestMapping(value = "/{templetId}", method = RequestMethod.POST)
	public ModelAndView queryByTemp(@PathVariable Long templetId, Model model,
			Pageable pageable) {
		Templet entity = templetService.findById(templetId);
		model.addAttribute("templet", entity);
		//
		Map<String, Object> searchParams = new HashMap<String, Object>();
		searchParams.put("EQ_templet.id", entity.getId());
		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		Specification<TempletPage> spec = DynamicSpecifications.bySearchFilter(
				filters.values(), TempletPage.class);

		return null;//super.query(spec, model, pageable);
	}
	@Token(save = true)
	@RequiresPermissions("templetpage:new")
	@RequestMapping(value = "/{id}/new", method = RequestMethod.GET)
	public ModelAndView priAdd1(@PathVariable Long id, Model model) {
		SiteTemplet entity = siteTempletService.findById(id);
		model.addAttribute("siteTemplet", entity);
		//model.addAttribute("templetPages", entity.getSitePages());
		return null;//return super.priAdd(model);
	}/*
	 * @Function(code="add",title = "%s新增", url = "add") public ModelAndView
	 * add2(TempletPage entity, BindingResult result) { SiteTemplet siteTemplet
	 * = siteTempletService.findById(entity.getSiteTempletId());
	 * entity.setSiteTemplet(siteTemplet); return super.add(entity, result); }
	 */
}