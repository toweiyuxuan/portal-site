package cn.wyx.dao.impl;

import cn.wyx.dao.UsersDao;
import cn.wyx.model.Users;
import cn.wyx.query.UsersQuery;

public class UsersDaoImpl extends BaseDaoImpl<Users, UsersQuery> implements UsersDao 
{

	@Override
	public String createHql(UsersQuery equery) 
	{
		String hql = "from Users t where 1=1 ";
		hql = hql + createHqlCondition(equery) + " order by t.id desc";	
		return hql;
	}

	@Override
	public String createHqlCount(UsersQuery equery) 
	{
		String hql = "select count(id) from Users t where 1=1";
		hql = hql + createHqlCondition(equery);
		return hql;
	}

	@Override
	public String createHqlCondition(UsersQuery equery) 
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
