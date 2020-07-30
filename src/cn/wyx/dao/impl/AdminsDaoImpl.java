package cn.wyx.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import cn.wyx.dao.AdminsDao;
import cn.wyx.model.Admins;
import cn.wyx.query.AdminsQuery;

public class AdminsDaoImpl extends BaseDaoImpl<Admins, AdminsQuery> implements AdminsDao 
{

	@Override
	public String createHql(AdminsQuery equery) 
	{
		String hql = "from Admins t where 1=1 ";
		hql = hql + createHqlCondition(equery) + " order by t.id desc";	
		return hql;
	}

	@Override
	public String createHqlCount(AdminsQuery equery) 
	{
		String hql = "select count(id) from Admins t where 1=1";
		hql = hql + createHqlCondition(equery);
		return hql;
	}

	@Override
	public String createHqlCondition(AdminsQuery equery) 
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

	@Override
	public Admins getAdminsByUname(String username) 
	{
		Admins admins = null;
		String hql = "from Admins a where a.username = ?";
		List list = this.getHibernateTemplate().find(hql, username);
		if(list.size() > 0)
		{
			admins = (Admins) list.get(0);
		}
		return admins;
	}

	@Override
	public Admins getAdminsByUnameAndPWord(final String username, final String password) 
	{
		final String hql = "from Admins a where a.username = :username and a.password = :password";
		Admins admins = this.getHibernateTemplate().execute(new HibernateCallback<Admins>() 
		{
			@Override
			public Admins doInHibernate(Session session) throws HibernateException,SQLException 
			{
				Query query = session.createQuery(hql);
				query.setParameter("username",username);
				query.setParameter("password",password);
				return (Admins) query.uniqueResult();
			}
		});
		return admins;
	}	
}
