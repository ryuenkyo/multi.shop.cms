package cn.wsalix.admin.web;

import javax.validation.Valid;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.anlaser.admin.BaseUser;
import cn.anlaser.web.impl.ParentActionImpl;
import cn.wsalix.admin.entity.SysMenu;
import cn.wsalix.admin.form.MenuForm;
import cn.wsalix.admin.form.MenuPermitForm;
import cn.wsalix.admin.repository.MenuRepository;
import cn.wsalix.admin.service.MenuPermitService;
import cn.wsalix.admin.service.MenuService;
import cn.wsalix.admin.service.PermitService;
import cn.wsalix.admin.status.MenuEnum;
import cn.wsalix.annotation.Menu;
import cn.wsalix.constant.Global;

@Controller
@RequestMapping(value = "/admin/menu")
@RequiresRoles("admin:menu")
public class MenuAction extends
		ParentActionImpl<MenuForm, MenuService, MenuRepository, SysMenu> {
	private static final Logger logger = LoggerFactory
			.getLogger(MenuAction.class);
	@Autowired
	private MenuService menuService;

	@Autowired
	private MenuPermitService menuPermitService;
	@Autowired
	private PermitService permitService;

	@Override
	public MenuService getService() {
		return menuService;
	}

	@Override
	public ModelAndView parentTop(MenuForm form, BindingResult result,
			Model model, Pageable pageable) {
		//form.setStatus(MenuEnum.invocation);
		return super.parentTop(form, result, model, pageable);
	}

	@Override
	public ModelAndView parentToAdd(MenuForm form, BindingResult result,
			Model model) {
		model.addAttribute("menuStatus", MenuEnum.values());
		return super.parentToAdd(form, result, model);
	}

	@Override
	public ModelAndView parentAdd(MenuForm form, BindingResult result,
			Model model) {
		// TODO Auto-generated method stub
		return super.parentAdd(form, result, model);
	}
	@Menu(code="admin:menu")
	@Override
	public ModelAndView toAdd(MenuForm form, BindingResult result, Model model) {
		model.addAttribute("menuStatus", MenuEnum.values());
		return super.toAdd(form, result, model);
	}

	@Override
	public ModelAndView add(MenuForm form, BindingResult result,RedirectAttributes ra, Model model) {
		// TODO Auto-generated method stub
		return super.add(form, result,ra, model);
	}

	@Override
	public ModelAndView delete(MenuForm form, BindingResult result, Model model) {
		// TODO Auto-generated method stub
		return super.delete(form, result, model);
	}
	@Menu(code="admin:menu")
	@Override
	public ModelAndView toEdit(MenuForm form, BindingResult result, Model model) {
		model.addAttribute("menuStatus", MenuEnum.values());
		return super.toEdit(form, result, model);
	}

	@Override
	public ModelAndView query(MenuForm form,BindingResult result, Model model, Pageable pageable) {
		model.addAttribute("menuStatus", MenuEnum.values());
		return super.query(form,result, model, pageable);
	}

	@Override
	public ModelAndView edit(Long id, MenuForm entity, BindingResult result,RedirectAttributes ra,
			Model model) {
		if (id == null || id == 0) {
			throw throwException(commonException.getIdNull());
		}
		SysMenu srcEntity = getService().findById(id);
		// Entity entity = BeanMapper.map(srcEntity, UserVO.class);
		menuService.edit(entity);
		if (srcEntity.getParent() != null) {
			return new ModelAndView("redirect:/" + module() + "/parent"
					+ Global.urlSuffix + "?parentId="
					+ srcEntity.getParent().getId());
		} else {
			return new ModelAndView("redirect:/" + module() + "/parent"
					+ Global.urlSuffix);
		}

	}

	@Override
	public ModelAndView listByParent(MenuForm form, BindingResult result,
			Model model, Pageable pageable) {
		model.addAttribute("menuStatus", MenuEnum.values());
		return super.listByParent(form, result, model, pageable);
	}

	@Menu(code="admin:menu")
	@Override
	public ModelAndView list(MenuForm form,BindingResult result, Model model, Pageable pageable) {
		model.addAttribute("menuStatus", MenuEnum.values());
		return super.list(form, result, model, pageable);
	}

	@RequestMapping(value = "/tree", method = RequestMethod.GET)
	public String tree(Model model) {
		model.addAttribute("menus", menuService.findAll());
		return module() + "/tree";
	}

	@RequestMapping(value = "/my_menu", method = RequestMethod.GET)
	public ModelAndView myMenu(Model model) {
		BaseUser user = userUtils.getInUser();
		model.addAttribute("menus", menuService.findMenusByUserId(user.getId()));
		return new ModelAndView("/menu/my");
	}

	/**
	 * @param roleId
	 * @param model
	 * @param pageable
	 * @return
	 */
	@RequestMapping(value = "/byrole", method = RequestMethod.GET)
	public ModelAndView findMenusByRoleId(@RequestParam("roleId") Long roleId,
			Model model, Pageable pageable) {
		return null;
	}

	/*@RequestMapping(value = "/menu_permit_list", method = RequestMethod.GET)
	public ModelAndView permitsByMenuId(@RequestParam("menuId") Long menuId,
			Model model, Pageable pageable) {
		SysMenu menu = getService().findById(menuId);
		model.addAttribute("menu", menu);
		MenuPermitForm menuPermitForm = new MenuPermitForm();
		menuPermitForm.setMenuId(menuId);
		QueryPage<MenuPermit> resPage = menuPermitService.findAll(menuPermitForm,
				pageable);
		model.addAttribute("resLst", resPage.getPage());
		return new ModelAndView(module() + "/menu_permit_list");
	}
*/
	@RequestMapping(value = "/permit_list", method = RequestMethod.GET)
	public ModelAndView permitsAdd(@RequestParam("menuId") Long menuId,
			Model model, Pageable pageable) {
		SysMenu menu = getService().findById(menuId);
		model.addAttribute("menu", menu);

		model.addAttribute("menuPermits", menuPermitService.findsByMenuId(menuId));
		return new ModelAndView(module() + "/permit_list");
	}
	@RequestMapping(value = "/permit_add", method = RequestMethod.GET)
	public ModelAndView permitToAdd(@RequestParam("menuId") Long menuId,
			Model model, Pageable pageable) {
		SysMenu menu = getService().findById(menuId);
		model.addAttribute("menu", menu);

		model.addAttribute("menuPermits", menuPermitService.findsByMenuId(menuId));
		return new ModelAndView(module() + "/permit_list");
	}
	@RequestMapping(value = "/permit/add", method = RequestMethod.GET)
	public @ResponseBody String menuPermitAdd(@Valid MenuPermitForm form,
			BindingResult result, Model model) {
		if (result.hasErrors()) {
			for (FieldError fieldError : result.getFieldErrors()) {
				if (fieldError.getField().equals("menuId")) {
					throw Global.getException("");
				}
				if (fieldError.getField().equals("permitId")) {
					throw Global.getException("");
				}
			}
		}
		//menuPermitService.add(form);
		return "";
	}
}
