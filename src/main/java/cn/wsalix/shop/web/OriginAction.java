package cn.wsalix.shop.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.config.FileServerConfig;
import cn.anlaser.form.UploadFileForm;
import cn.anlaser.type.FileTypeEnum;
import cn.anlaser.type.ImageTypeEnum;
import cn.anlaser.utils.HttpUtils;
import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.annotation.Menu;
import cn.wsalix.constant.Global;
import cn.wsalix.shop.entity.Origin;
import cn.wsalix.shop.entity.Product;
import cn.wsalix.shop.form.OriginForm;
import cn.wsalix.shop.repository.OriginRepository;
import cn.wsalix.shop.service.OriginService;
import cn.wsalix.shop.service.ProductService;
//@Menu(code="shop:origin",name="产地管理",menuUrl="/shop/origin/list.do")
@Controller
@RequestMapping(value = "/admin/origin")
public class OriginAction extends
		SimpleActionImpl<OriginForm,OriginService,OriginRepository,Origin> {
	@Autowired
	private FileServerConfig fsConfig;
	@Autowired
	private OriginService originService;
	@Autowired
	private ProductService productService;

	@Override
	public OriginService getService() {
		return originService;
	}
	@Menu(code="shop:origin")
	@Override
	public ModelAndView list(OriginForm form, BindingResult result,Model model, Pageable pageable) {
		if (form.getProductId() != null && form.getProductId() != 0) {
			Product product = productService.findById(form.getProductId());
			model.addAttribute("product", product);
		}
		return super.list(form,result, model, pageable);
	}
	@Menu(code="shop:origin")
	@Override
	public ModelAndView toAdd(OriginForm form, BindingResult result, Model model) {
		Origin origin = originService.getNew();
		model.addAttribute("form", origin);
		return super.toAdd(form, result, model);
	}
	@Menu(code="shop:origin")
	@Override
	public ModelAndView toEdit(OriginForm form, BindingResult result,
			Model model) {
		// TODO Auto-generated method stub
		return super.toEdit(form, result, model);
	}
	@RequestMapping(value = "/add_logo", method = RequestMethod.GET)
	public ModelAndView addLogo(@Valid OriginForm form, BindingResult result,Model model) {
		if (form.getProductId() != null && form.getProductId() != 0) {
			Product product = productService.findById(form.getProductId());
			model.addAttribute("product", product);
		}	
		return super.toAdd(form,result,model);
	}
	
	@Transactional
	@RequestMapping(value = "/add_logo", method = RequestMethod.POST)
	public ModelAndView addLogo(OriginForm form,@RequestParam(value = "fileName", required = false) MultipartFile fileName) {
		if(fileName!=null){
			UploadFileForm upForm = new UploadFileForm();
			upForm.setFkId(form.getId());
			upForm.setType(FileTypeEnum.image);
			upForm.setImageType(ImageTypeEnum.origin);
			HttpUtils.uploadFile(fsConfig, fileName, upForm);
			form.setLogo(upForm.getHttpUrl());			
		}		
		//entity.setBrandLogo(entity.getBrandLogo());
		originService.add(form);
		if (form.getProductId() != null && form.getProductId() != 0) {
			return new ModelAndView("redirect:/" + module() + "/list"
					+ Global.urlSuffix + "?productId=" + form.getProductId());
		}
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

	@RequestMapping(value = "/edit_logo", method = RequestMethod.GET)
	public ModelAndView editLogo(OriginForm form,BindingResult result, Model model) {
		return super.toEdit(form,result, model);
	}
	@Transactional
	@RequestMapping(value = "/edit_logo", method = RequestMethod.POST)
	public ModelAndView editLogo(@RequestParam("id") Long id,OriginForm form,@RequestParam(value = "fileName", required = false) MultipartFile fileName) {
		if(fileName!=null){
			UploadFileForm upForm = new UploadFileForm();
			upForm.setFkId(form.getId());
			upForm.setType(FileTypeEnum.image);
			upForm.setImageType(ImageTypeEnum.origin);
			HttpUtils.uploadFile(fsConfig, fileName, upForm);
			form.setLogo(upForm.getHttpUrl());	
		}		

		originService.edit(form);
		if(form.isToProduct()){
			return new ModelAndView("redirect:/shop/product/origin"
					+ Global.urlSuffix + "?id=" + form.getProductId());
		}
		return new ModelAndView("redirect:/" + module() + "/list"
				+ Global.urlSuffix);
	}

}
