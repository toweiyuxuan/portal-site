package cn.wyx.service;

import cn.wyx.model.Anli;
import cn.wyx.model.Fileup;
import cn.wyx.query.FileupQuery;

public interface FileupService extends BaseService<Fileup, FileupQuery> 
{
	public void updateFileup(Fileup fileup);
}
