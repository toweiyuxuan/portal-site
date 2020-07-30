package cn.wyx.dao.impl;

import cn.wyx.dao.DocumentsDao;
import cn.wyx.model.Documents;
import cn.wyx.query.DocumentsQuery;

public class DocumentsDaoImpl extends BaseDaoImpl<Documents, DocumentsQuery> implements DocumentsDao 
{

	@Override
	public String createHql(DocumentsQuery equery) 
	{
		String hql = "from Documents t where 1=1 ";
		hql = hql + createHqlCondition(equery) + " order by t.id desc";	
		return hql;
	}

	@Override
	public String createHqlCount(DocumentsQuery equery) 
	{
		String hql = "select count(id) from Documents t where 1=1";
		hql = hql + createHqlCondition(equery);
		return hql;
	}

	@Override
	public String createHqlCondition(DocumentsQuery equery) 
	{
		String hql = "";	
			
		if (equery.getStatus() != null)
		{
			hql = hql + " and t.status = :status";
		}	
		
		return hql;
	}	
}
