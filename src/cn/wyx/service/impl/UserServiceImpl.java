package cn.wyx.service.impl;

import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;

import cn.wyx.dao.UserDao;
import cn.wyx.model.User;
import cn.wyx.query.UserQuery;
import cn.wyx.service.UserService;

public class UserServiceImpl extends BaseServiceImpl<User, UserQuery> implements UserService 
{	
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) 
	{
		this.userDao = userDao;
		this.baseDao = userDao;
	}

	@Override
	public User getUserByUnameAndPWord(String username, String password)
	{
		return userDao.getUserByUnameAndPWord(username, password);
	}

	@Override
	public void updateUser(User user)
	{
		User user1 = userDao.getObj(user.getUId());
		try
		{
			BeanUtils.copyProperties(user1, user);
		} catch (IllegalAccessException | InvocationTargetException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		userDao.update(user1);				
	}	
}
