package cn.wyx.dao.impl;

import cn.wyx.dao.ContactDao;
import cn.wyx.model.Contact;
import cn.wyx.query.ContactQuery;

public class ContactDaoImpl extends BaseDaoImpl<Contact, ContactQuery> implements ContactDao 
{

	@Override
	public String createHql(ContactQuery equery) 
	{
		String hql = "from Contact t where 1=1 ";		
		return hql;
	}

	@Override
	public String createHqlCount(ContactQuery q) 
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String createHqlCondition(ContactQuery q) 
	{
		// TODO Auto-generated method stub
		return null;
	}
	
}
