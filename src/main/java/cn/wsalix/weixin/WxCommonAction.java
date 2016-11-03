package cn.wsalix.weixin;

import org.springframework.data.jpa.domain.AbstractPersistable;

import cn.anlaser.form.CommonForm;
import cn.anlaser.repository.CommonRepository;
import cn.anlaser.service.CommonService;
import cn.anlaser.web.impl.CommonActionImpl;

public abstract class WxCommonAction<Form extends CommonForm, Service extends CommonService<Form, Repository, Entity>, Repository extends CommonRepository<Entity>, Entity extends AbstractPersistable<Long>>
		extends CommonActionImpl<Form, Service, Repository, Entity> {

}
