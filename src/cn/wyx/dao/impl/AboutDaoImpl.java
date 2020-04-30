package cn.wyx.dao.impl;

import cn.wyx.dao.AboutDao;
import cn.wyx.model.About;
import cn.wyx.query.AboutQuery;

public class AboutDaoImpl extends BaseDaoImpl<About, AboutQuery> implements AboutDao 
{

	@Override
	public String createHql(AboutQuery equery) 
	{
		String hql = "from About a where 1=1 ";	
		hql = hql + createHqlCondition(equery);// + " order by u.UId desc";
		return hql;
	}

	@Override
	public String createHqlCount(AboutQuery q) 
	{
		String hql = "select count(AId) from About a where 1=1";
		hql = hql + createHqlCondition(q);
		return hql;
	}

	@Override
	public String createHqlCondition(AboutQuery q) 
	{
		String hql = "";
		return hql;
	}
	
}
