package cn.wyx.dao.impl;

import cn.wyx.dao.ActivitysDao;
import cn.wyx.model.Activitys;
import cn.wyx.query.ActivitysQuery;

public class ActivitysDaoImpl extends BaseDaoImpl<Activitys, ActivitysQuery> implements ActivitysDao 
{

	@Override
	public String createHql(ActivitysQuery equery) 
	{
		String hql = "from Activitys t where 1=1 ";
		hql = hql + createHqlCondition(equery) + " order by t.id desc";	
		return hql;
	}

	@Override
	public String createHqlCount(ActivitysQuery equery) 
	{
		String hql = "select count(id) from Activitys t where 1=1";
		hql = hql + createHqlCondition(equery);
		return hql;
	}

	@Override
	public String createHqlCondition(ActivitysQuery equery) 
	{
		String hql = "";
		
		if (equery.getStatus() != null)
		{
			hql = hql + " and t.status = :status";
		}		
		
		return hql;
	}	
}
