package cn.wsalix.msg.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.anlaser.web.impl.CommonActionImpl;
import cn.wsalix.msg.entity.Issue;
import cn.wsalix.msg.repository.IssueRepository;
import cn.wsalix.msg.service.IssueService;
import cn.wsalix.user.form.IssueForm;

@Controller
@RequestMapping(value = "/user/issue")
public class IssueAction extends
		CommonActionImpl<IssueForm, IssueService, IssueRepository, Issue> {
	@Autowired
	private IssueService issueService;

	@Override
	public IssueService getService() {
		return issueService;
	}

}
