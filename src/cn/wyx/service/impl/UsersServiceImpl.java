package cn.wyx.service.impl;

import cn.wyx.dao.UsersDao;
import cn.wyx.model.Users;
import cn.wyx.query.UsersQuery;
import cn.wyx.service.UsersService;

public class UsersServiceImpl extends BaseServiceImpl<Users, UsersQuery> implements UsersService 
{	
	private UsersDao usersDao;
	
	public void setUsersDao(UsersDao usersDao) 
	{
		this.usersDao = usersDao;
		this.baseDao = usersDao;
	}
}
