package cn.wyx.dao.impl;

import cn.wyx.dao.RecordsDao;
import cn.wyx.model.Records;
import cn.wyx.query.RecordsQuery;

public class RecordsDaoImpl extends BaseDaoImpl<Records, RecordsQuery> implements RecordsDao 
{

	@Override
	public String createHql(RecordsQuery equery) 
	{
		String hql = "from Records t where 1=1 ";
		hql = hql + createHqlCondition(equery) + " order by t.id desc";	
		return hql;
	}

	@Override
	public String createHqlCount(RecordsQuery equery) 
	{
		String hql = "select count(id) from Records t where 1=1";
		hql = hql + createHqlCondition(equery);
		return hql;
	}

	@Override
	public String createHqlCondition(RecordsQuery equery) 
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
}
