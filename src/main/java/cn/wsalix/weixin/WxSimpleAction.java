package cn.wsalix.weixin;

import cn.anlaser.entity.SimpleEntity;
import cn.anlaser.form.SimpleForm;
import cn.anlaser.repository.SimpleRepository;
import cn.anlaser.service.SimpleService;
import cn.anlaser.web.impl.SimpleActionImpl;

public abstract class WxSimpleAction<Form extends SimpleForm,Service extends SimpleService<Form,Repository, Entity>, Repository extends SimpleRepository<Entity>, Entity extends SimpleEntity>
		extends SimpleActionImpl<Form,Service, Repository, Entity> {

}
