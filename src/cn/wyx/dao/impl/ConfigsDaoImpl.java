package cn.wyx.dao.impl;

import java.util.List;

import cn.wyx.dao.ConfigsDao;
import cn.wyx.model.Configs;
import cn.wyx.query.ConfigsQuery;

public class ConfigsDaoImpl extends BaseDaoImpl<Configs, ConfigsQuery> implements ConfigsDao 
{

	@Override
	public String createHql(ConfigsQuery equery) 
	{
		String hql = "from Configs t where 1=1 ";
		hql = hql + createHqlCondition(equery) + " order by t.id desc";	
		return hql;
	}

	@Override
	public String createHqlCount(ConfigsQuery equery) 
	{
		String hql = "select count(id) from Configs t where 1=1";
		hql = hql + createHqlCondition(equery);
		return hql;
	}

	@Override
	public String createHqlCondition(ConfigsQuery equery) 
	{
		String hql = "";	
			
		/*
		if (StringUtils.isNotBlank(equery.[getxxx]))
		{
			hql = hql + " and t.[xxx] like :[xxx]";
		}
		if (equery.[getxxx]() != null)
		{
			hql = hql + " and t.[xxx] = :[xxx]";
		}
		*/
		
		return hql;
	}

	@Override
	public Configs getConfigsByKey(String configsKey) 
	{
		Configs configs = null;
		String hql = "from Configs c where c.key = ?";
		List list = this.getHibernateTemplate().find(hql, configsKey);
		if(list.size() > 0)
		{
			configs = (Configs) list.get(0);
		}
		return configs;
	}	
}
