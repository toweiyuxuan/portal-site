package cn.wyx.dao.impl;

import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import cn.wyx.dao.UserDao;
import cn.wyx.model.User;
import cn.wyx.query.UserQuery;

public class UserDaoImpl extends BaseDaoImpl<User, UserQuery> implements UserDao 
{

	@Override
	public String createHql(UserQuery equery) 
	{
		String hql = "from User u where 1=1 ";	
		hql = hql + createHqlCondition(equery);// + " order by u.UId desc";
		return hql;
	}

	@Override
	public String createHqlCount(UserQuery q) 
	{
		String hql = "select count(UId) from User u where 1=1";
		hql = hql + createHqlCondition(q);
		return hql;
	}

	@Override
	public String createHqlCondition(UserQuery q) 
	{
		String hql = "";
		return hql;
	}

	@Override
	public User getUserByUnameAndPWord(final String username, final String password)
	{
		final String hql = "from User u where u.UName = :UName and u.UPassword = :UPassword";
		User user = this.getHibernateTemplate().execute(new HibernateCallback<User>() 
		{
			@Override
			public User doInHibernate(Session session) throws HibernateException,SQLException 
			{
				Query query = session.createQuery(hql);
				query.setParameter("UName",username);
				query.setParameter("UPassword",password);
				return (User) query.uniqueResult();
			}
		});
		return user;
	}
	
}
