package cn.wyx.dao;

import cn.wyx.model.Configs;
import cn.wyx.query.ConfigsQuery;

public interface ConfigsDao extends BaseDao<Configs, ConfigsQuery> 
{
	public Configs getConfigsByKey(String configsKey);
}
