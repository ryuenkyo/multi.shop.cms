package cn.wsalix.biz.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.anlaser.web.impl.ParentActionImpl;
import cn.wsalix.annotation.Menu;
import cn.wsalix.biz.entity.Activity;
import cn.wsalix.biz.form.ActivityForm;
import cn.wsalix.biz.repository.ActivityRepository;
import cn.wsalix.biz.service.ActivityService;
//@Menu(code="biz:activity",name="活动管理",menuUrl="/biz/activity/list.do")
@Controller
@RequestMapping(value = "/biz/activity")
public class ActivityAction
		extends
		ParentActionImpl<ActivityForm, ActivityService, ActivityRepository, Activity> {

	@Autowired
	private ActivityService activityService;

	@Override
	public ActivityService getService() {
		return activityService;
	}
	@Menu(code="biz:activity")
	@Override
	public ModelAndView toAdd(ActivityForm form, BindingResult result,
			Model model) {
		// TODO Auto-generated method stub
		return super.toAdd(form, result, model);
	}
	@Menu(code="biz:activity")
	@Override
	public ModelAndView toEdit(ActivityForm form, BindingResult result,
			Model model) {
		// TODO Auto-generated method stub
		return super.toEdit(form, result, model);
	}
	@Menu(code="biz:activity")
	@Override
	public ModelAndView list(ActivityForm form,BindingResult result, Model model, Pageable pageable) {
		// TODO Auto-generated method stub
		return super.list(form, result,model, pageable);
	}


}