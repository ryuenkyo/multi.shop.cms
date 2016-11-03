package cn.wsalix.biz.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.web.impl.CommonActionImpl;
import cn.wsalix.biz.entity.Article;
import cn.wsalix.biz.entity.Category;
import cn.wsalix.biz.form.ArticleForm;
import cn.wsalix.biz.repository.ArticleRepository;
import cn.wsalix.biz.service.ArticleService;
import cn.wsalix.biz.service.CategoryService;
import cn.wsalix.config.AppConfig;
import cn.wsalix.constant.Global;
import cn.wsalix.observable.service.ArtChangeService;
import cn.wsalix.status.ActEnum;

@Controller
@RequestMapping(value = "/biz/article")
public class ArticleAction
		extends
		CommonActionImpl<ArticleForm, ArticleService, ArticleRepository, Article> {

	@Autowired
	private ArticleService articleService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ArtChangeService artChangeService;

	@Override
	public ArticleService getService() {
		return articleService;
	}
	@RequestMapping(value = "/cat_add", method = RequestMethod.GET)
	public @ResponseBody String addCat(@RequestParam("catId") Long catId,
			@RequestParam("adId") Long adId, Model model) {
		Category category = categoryService.findById(catId);
		articleService.addCat(adId, category);
		return "";
	}
	@Override
	public ModelAndView toAdd(ArticleForm form, BindingResult result,
			Model model) {
		Article article = articleService.getNew();
		model.addAttribute("form", article);
		model.addAttribute("statusLst", ActEnum.values());
		if (form.getCatId() == null) {
			model.addAttribute("catLst", categoryService
					.findSubsByCode(AppConfig.articleCat.getCode()));
		} else {
			model.addAttribute("cat",
					categoryService.findById(form.getCatId()));
		}
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView toEdit(ArticleForm form, BindingResult result,
			Model model) {
		model.addAttribute("statusLst", ActEnum.values());
		if (form.getCatId() == null) {
			model.addAttribute("typeLst", categoryService
					.findSubsByCode(AppConfig.articleCat.getCode()));
		} else {
			model.addAttribute("type",
					categoryService.findById(form.getCatId()));
		}
		return super.toEdit(form, result, model);
	}

	@Override
	public ModelAndView add(ArticleForm form, BindingResult result,
			RedirectAttributes ra, Model model) {
		// TODO Auto-generated method stub
		// return super.add(form, result, ra, model);
		artChangeService.Change(form);
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

	@Override
	public ModelAndView edit(Long id, ArticleForm form, BindingResult result,
			RedirectAttributes ra, Model model) {
		// TODO Auto-generated method stub
		// return super.edit(id, form, result, ra, model);
		artChangeService.Change(form);
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

	@Override
	public ModelAndView list(ArticleForm form, BindingResult result,
			Model model, Pageable pageable) {
		// TODO Auto-generated method stub
		return super.list(form, result, model, pageable);
	}

	@Override
	public ModelAndView delete(ArticleForm form, BindingResult result,
			Model model) {
		// TODO Auto-generated method stub
		return super.delete(form, result, model);
	}

}