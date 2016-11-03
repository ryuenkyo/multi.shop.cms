package cn.wsalix.biz.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.anlaser.web.impl.SimpleActionImpl;
import cn.wsalix.biz.entity.Sponsor;
import cn.wsalix.biz.form.SponsorForm;
import cn.wsalix.biz.repository.SponsorRepository;
import cn.wsalix.biz.service.SponsorService;

@Controller
@RequestMapping(value = "/biz/sponsor")
public class SponsorAction
		extends
		SimpleActionImpl<SponsorForm, SponsorService, SponsorRepository, Sponsor> {

	@Autowired
	private SponsorService sponsorService;

	@Override
	public SponsorService getService() {
		return sponsorService;
	}


}