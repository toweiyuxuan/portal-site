package cn.wyx.dao.impl;

import cn.wyx.dao.DepartmentsDao;
import cn.wyx.model.Departments;
import cn.wyx.query.DepartmentsQuery;

public class DepartmentsDaoImpl extends BaseDaoImpl<Departments, DepartmentsQuery> implements DepartmentsDao 
{

	@Override
	public String createHql(DepartmentsQuery equery) 
	{
		String hql = "from Departments t where 1=1 ";
		hql = hql + createHqlCondition(equery) + " order by t.id desc";	
		return hql;
	}

	@Override
	public String createHqlCount(DepartmentsQuery equery) 
	{
		String hql = "select count(id) from Departments t where 1=1";
		hql = hql + createHqlCondition(equery);
		return hql;
	}

	@Override
	public String createHqlCondition(DepartmentsQuery equery) 
	{
		String hql = "";
		
		if (equery.getStatus() != null)
		{
			hql = hql + " and t.status = :status";
		}	
		
		return hql;
	}	
}
