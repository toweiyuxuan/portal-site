package cn.wyx.dao.impl;

import cn.wyx.dao.UploadfilesDao;
import cn.wyx.model.Uploadfiles;
import cn.wyx.query.UploadfilesQuery;

public class UploadfilesDaoImpl extends BaseDaoImpl<Uploadfiles, UploadfilesQuery> implements UploadfilesDao 
{

	@Override
	public String createHql(UploadfilesQuery equery) 
	{
		String hql = "from Uploadfiles t where 1=1 ";
		hql = hql + createHqlCondition(equery) + " order by t.id desc";	
		return hql;
	}

	@Override
	public String createHqlCount(UploadfilesQuery equery) 
	{
		String hql = "select count(id) from Uploadfiles t where 1=1";
		hql = hql + createHqlCondition(equery);
		return hql;
	}

	@Override
	public String createHqlCondition(UploadfilesQuery equery) 
	{
		String hql = "";	
		if (equery.getType() != null)
		{
			hql = hql + " and t.type = :type";
		}
		return hql;
	}	
}
