package cn.wsalix.biz.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.anlaser.web.impl.ParentActionImpl;
import cn.wsalix.biz.entity.Area;
import cn.wsalix.biz.form.AreaForm;
import cn.wsalix.biz.repository.AreaRepository;
import cn.wsalix.biz.service.AreaService;

@Controller
@RequestMapping(value = "/biz/area")
public class AreaActionImpl extends
		ParentActionImpl<AreaForm,AreaService,AreaRepository,Area> {
	@Autowired
	private AreaService areaService;

	@Override
	public AreaService getService() {
		return areaService;
	}

}
