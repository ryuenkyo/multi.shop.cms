package cn.wsalix.templet.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.service.CommonService;
import cn.anlaser.service.SimpleService;
import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.admin.entity.SysMenu;
import cn.wsalix.admin.entity.SysUser;
import cn.wsalix.admin.service.MenuService;
import cn.wsalix.biz.service.ArticleService;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.constant.Global;
import cn.wsalix.templet.entity.PageData;
import cn.wsalix.templet.form.PageDataForm;
import cn.wsalix.templet.repository.PageDataRepository;
import cn.wsalix.templet.service.PageDataService;
import cn.wsalix.templet.service.SiteTempletService;
import cn.anlaser.utils.DynamicSpecifications;
import cn.anlaser.utils.SearchFilter;
import cn.anlaser.utils.SearchFilter.Operator;

@Controller
@RequestMapping(value = "/templet/pagedata")
public class PageDataAction extends
		SimpleActionImpl<PageDataForm,PageDataService,PageDataRepository,PageData > {
	@Autowired
	private PageDataService pageDataService;
	@Autowired
	private SiteTempletService siteTempletService;
	@Autowired
	private CategoryService categoryService;

	@Override
	public PageDataService getService() {
		return pageDataService;
	}

	@RequestMapping(value = "/place/{id}", method = RequestMethod.GET)
	public ModelAndView placeByPageId(@PathVariable Long id, Model model) {
		return new ModelAndView("redirect:/templet/sitePlace/page/" + id);
	}

	@Autowired
	private ArticleService articleService;
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/{code}/code", method = RequestMethod.GET)
	public ModelAndView pageDataSelectByCode(@PathVariable String code, Model model) {
		PageData pageData = pageDataService.findByCodeOne(code);
		Object instance = Global.getBean(pageData.getBeanName());
/*
		if (!pageData.isSingle()) {
			Page<?> items = categoryService.findByCode(new PageRequest(0, 20),
					pageData.getParaName());
			model.addAttribute("items", items);
		} else {
			if (instance instanceof SimpleService) {
				SimpleService simpleService = (SimpleService) instance;
				Page<?> items = simpleService
						.findByPage(new PageRequest(0, 20));
				model.addAttribute("items", items);
			} else if (instance instanceof CommonService) {
				CommonService commonService = (CommonService) instance;
				Page<?> items = commonService
						.findByPage(new PageRequest(0, 20));
				model.addAttribute("items", items);
			}
		}*/
		return new ModelAndView("/templet/pagedata/select");
	}
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView pageDataSelect(@PathVariable Long id, Model model) {
		PageData pageData = pageDataService.findById(id);
		Object instance = Global.getBean(pageData.getBeanName());

		/*if (!pageData.isSingle()) {
			Page<?> items = categoryService.findByCode(new PageRequest(0, 20),
					pageData.getParaName());
			model.addAttribute("items", items);
		} else {
			if (instance instanceof SimpleService) {
				SimpleService simpleService = (SimpleService) instance;
				Page<?> items = simpleService
						.findByPage(new PageRequest(0, 20));
				model.addAttribute("items", items);
			} else if (instance instanceof CommonService) {
				CommonService commonService = (CommonService) instance;
				Page<?> items = commonService
						.findByPage(new PageRequest(0, 20));
				model.addAttribute("items", items);
			}
		}*/
		return new ModelAndView("/templet/pagedata/select");
	}

	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/{id}", method = RequestMethod.POST)
	public ModelAndView pageDataSelectPost(@PathVariable Long id, Model model,
			Pageable pageable, @RequestParam String name) {
		PageData pageData = pageDataService.findById(id);
		Object instance = Global.getBean(pageData.getBeanName());
		if (instance instanceof SimpleService) {
			if (instance instanceof MenuService) {
				MenuService menuService = (MenuService) instance;
				Page<SysMenu> items = findPageAll(menuService, pageable, name,
						SysMenu.class);
				model.addAttribute("items", items);
			}

		} else if (instance instanceof CommonService) {
			/*if (instance instanceof SysUserService) {
				SysUserService userService = (SysUserService) instance;
				Page<SysUser> items = findPageAll(userService, pageable, name,
						SysUser.class);
				model.addAttribute("items", items);
			}*/
		}
		return new ModelAndView("/templet/pagedata/select");
	}

	private <T> Page<T> findPageAll(SimpleService simpleService,
			Pageable pageable, String name, Class<T> clazz) {
		Map<String, Object> searchParams = new HashMap<String, Object>();

		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		filters.put("name", new SearchFilter("name", Operator.LIKE, name));

		Specification<T> spec = DynamicSpecifications.bySearchFilter(
				filters.values(), clazz);
		//Page<T> items = simpleService.findAll(spec, pageable);
		return null;//items;
	}

	private <T> Page<T> findPageAll(CommonService commonService,
			Pageable pageable, String name, Class<T> clazz) {
		Map<String, Object> searchParams = new HashMap<String, Object>();

		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		filters.put("name", new SearchFilter("name", Operator.LIKE, name));

		Specification<T> spec = DynamicSpecifications.bySearchFilter(
				filters.values(), clazz);
		//Page<T> items = commonService.findAll(spec, pageable);
		return null;//items;
	}

}