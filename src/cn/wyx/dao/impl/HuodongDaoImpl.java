package cn.wyx.dao.impl;

import cn.wyx.dao.HuodongDao;
import cn.wyx.model.Huodong;
import cn.wyx.query.HuodongQuery;

public class HuodongDaoImpl extends BaseDaoImpl<Huodong, HuodongQuery> implements HuodongDao 
{

	@Override
	public String createHql(HuodongQuery equery) 
	{
		String hql = "from Huodong h where 1=1 ";	
		hql = hql + createHqlCondition(equery);// + " order by u.UId desc";
		return hql;
	}

	@Override
	public String createHqlCount(HuodongQuery q) 
	{
		String hql = "select count(HId) from Huodong h where 1=1";
		hql = hql + createHqlCondition(q);
		return hql;
	}

	@Override
	public String createHqlCondition(HuodongQuery q) 
	{
		String hql = "";
		return hql;
	}
	
}
