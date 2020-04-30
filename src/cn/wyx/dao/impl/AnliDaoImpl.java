package cn.wyx.dao.impl;

import cn.wyx.dao.AnliDao;
import cn.wyx.model.Anli;
import cn.wyx.query.AnliQuery;

public class AnliDaoImpl extends BaseDaoImpl<Anli, AnliQuery> implements AnliDao 
{

	@Override
	public String createHql(AnliQuery equery) 
	{
		String hql = "from Anli a where 1=1 ";	
		hql = hql + createHqlCondition(equery);// + " order by u.UId desc";
		return hql;
	}

	@Override
	public String createHqlCount(AnliQuery q) 
	{
		String hql = "select count(AId) from Anli a where 1=1";
		hql = hql + createHqlCondition(q);
		return hql;
	}

	@Override
	public String createHqlCondition(AnliQuery q) 
	{
		String hql = "";
		return hql;
	}
	
}
