package cn.wsalix.shop.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.annotation.Menu;
import cn.wsalix.shop.entity.Shop;
import cn.wsalix.shop.form.ShopForm;
import cn.wsalix.shop.repository.ShopRepository;
import cn.wsalix.shop.service.ShopService;
//@Menu(code="shop:shop",name="店铺管理",menuUrl="/shop/shop/list.do")
@Controller
@RequestMapping(value = "/admin/shop")
public class ShopAction extends
		SimpleActionImpl<ShopForm,ShopService,ShopRepository,Shop>{
	@Autowired
	private ShopService shopService;

	@Override
	public ShopService getService() {
		return shopService;
	}
	@Menu(code="shop:shop")
	@Override
	public ModelAndView toAdd(ShopForm form, BindingResult result, Model model) {		
		return super.toAdd(form, result, model);
	}
	@Menu(code="shop:shop")
	@Override
	public ModelAndView toEdit(ShopForm form, BindingResult result, Model model) {
		// TODO Auto-generated method stub
		return super.toEdit(form, result, model);
	}
	@Menu(code="shop:shop")
	@Override
	public ModelAndView list(ShopForm form,BindingResult result, Model model, Pageable pageable) {
		// TODO Auto-generated method stub
		return super.list(form,result, model, pageable);
	}

}
