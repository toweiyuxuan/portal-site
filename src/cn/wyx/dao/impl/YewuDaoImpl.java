package cn.wyx.dao.impl;

import cn.wyx.dao.YewuDao;
import cn.wyx.model.Yewu;
import cn.wyx.query.YewuQuery;

public class YewuDaoImpl extends BaseDaoImpl<Yewu, YewuQuery> implements YewuDao 
{

	@Override
	public String createHql(YewuQuery equery) 
	{
		String hql = "from Yewu t where 1=1 ";		
		return hql;
	}

	@Override
	public String createHqlCount(YewuQuery q) 
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String createHqlCondition(YewuQuery q) 
	{
		// TODO Auto-generated method stub
		return null;
	}
	
}
