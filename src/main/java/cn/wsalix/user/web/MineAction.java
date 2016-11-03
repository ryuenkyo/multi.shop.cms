package cn.wsalix.user.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.annotation.Menu;
import cn.wsalix.shop.service.ProductService;
import cn.wsalix.user.entity.Mine;
import cn.wsalix.user.form.MineForm;
import cn.wsalix.user.repository.MineRepository;
import cn.wsalix.user.service.MineService;

//@Menu(code = "shop:my_product", name = "我的商品", menuUrl = "/shop/my_product/list.do")
@Controller
@RequestMapping(value = "/admin/mine")
public class MineAction
		extends
		SimpleActionImpl<MineForm, MineService, MineRepository, Mine> {
	@Autowired
	private ProductService productService;

	@Autowired
	private MineService mineService;

	@Override
	public MineService getService() {
		return mineService;
	}

	@ModelAttribute("prefix")
	public void prefix(Model model) {

	}
	@Menu(code="shop:my_product")
	@Override
	public ModelAndView toAdd(MineForm form, BindingResult result,
			Model model) {
		// TODO Auto-generated method stub
		return super.toAdd(form, result, model);
	}
	@Menu(code="shop:my_product")
	@Override
	public ModelAndView toEdit(MineForm form, BindingResult result,
			Model model) {
		// TODO Auto-generated method stub
		return super.toEdit(form, result, model);
	}
	@Menu(code="shop:my_product")
	@Override
	public ModelAndView list(MineForm form,BindingResult result, Model model, Pageable pageable) {
		// TODO Auto-generated method stub
		return super.list(form, result,model, pageable);
	}

}
