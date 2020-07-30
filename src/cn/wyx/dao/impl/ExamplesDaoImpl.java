package cn.wyx.dao.impl;

import cn.wyx.dao.ExamplesDao;
import cn.wyx.model.Examples;
import cn.wyx.query.ExamplesQuery;

public class ExamplesDaoImpl extends BaseDaoImpl<Examples, ExamplesQuery> implements ExamplesDao 
{

	@Override
	public String createHql(ExamplesQuery equery) 
	{
		String hql = "from Examples t where 1=1 ";
		hql = hql + createHqlCondition(equery) + " order by t.id desc";	
		return hql;
	}

	@Override
	public String createHqlCount(ExamplesQuery equery) 
	{
		String hql = "select count(id) from Examples t where 1=1";
		hql = hql + createHqlCondition(equery);
		return hql;
	}

	@Override
	public String createHqlCondition(ExamplesQuery equery) 
	{
		String hql = "";	
			
		if (equery.getStatus() != null)
		{
			hql = hql + " and t.status = :status";
		}	
		
		return hql;
	}	
}
