package cn.wyx.dao.impl;

import cn.wyx.dao.FileupDao;
import cn.wyx.model.Fileup;
import cn.wyx.query.FileupQuery;

public class FileupDaoImpl extends BaseDaoImpl<Fileup, FileupQuery> implements FileupDao 
{

	@Override
	public String createHql(FileupQuery equery) 
	{
		String hql = "from Fileup f where 1=1 ";	
		hql = hql + createHqlCondition(equery);// + " order by u.UId desc";
		return hql;
	}

	@Override
	public String createHqlCount(FileupQuery q) 
	{
		String hql = "select count(FId) from Fileup f where 1=1";
		hql = hql + createHqlCondition(q);
		return hql;
	}

	@Override
	public String createHqlCondition(FileupQuery q) 
	{
		String hql = "";
		return hql;
	}
	
}
