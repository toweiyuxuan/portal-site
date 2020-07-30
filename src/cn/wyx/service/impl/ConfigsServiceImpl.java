package cn.wyx.service.impl;

import cn.wyx.dao.ConfigsDao;
import cn.wyx.model.Configs;
import cn.wyx.query.ConfigsQuery;
import cn.wyx.service.ConfigsService;

public class ConfigsServiceImpl extends BaseServiceImpl<Configs, ConfigsQuery> implements ConfigsService 
{	
	private ConfigsDao configsDao;
	
	public void setConfigsDao(ConfigsDao configsDao) 
	{
		this.configsDao = configsDao;
		this.baseDao = configsDao;
	}

	@Override
	public Configs getConfigsByKey(String configsKey) 
	{
		// TODO Auto-generated method stub
		return configsDao.getConfigsByKey(configsKey);
	}
}
