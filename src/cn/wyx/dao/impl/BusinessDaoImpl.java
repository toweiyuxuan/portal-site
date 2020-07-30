package cn.wyx.dao.impl;

import cn.wyx.dao.BusinessDao;
import cn.wyx.model.Business;
import cn.wyx.query.BusinessQuery;

public class BusinessDaoImpl extends BaseDaoImpl<Business, BusinessQuery> implements BusinessDao 
{

	@Override
	public String createHql(BusinessQuery equery) 
	{
		String hql = "from Business t where 1=1 ";
		hql = hql + createHqlCondition(equery) + " order by t.id desc";	
		return hql;
	}

	@Override
	public String createHqlCount(BusinessQuery equery) 
	{
		String hql = "select count(id) from Business t where 1=1";
		hql = hql + createHqlCondition(equery);
		return hql;
	}

	@Override
	public String createHqlCondition(BusinessQuery equery) 
	{
		String hql = "";	
			
		if (equery.getStatus() != null)
		{
			hql = hql + " and t.status = :status";
		}
		
		return hql;
	}	
}
