package cn.wyx.service;

import cn.wyx.model.Configs;
import cn.wyx.query.ConfigsQuery;

public interface ConfigsService extends BaseService<Configs, ConfigsQuery> 
{
	public Configs getConfigsByKey(String configsKey);
}
