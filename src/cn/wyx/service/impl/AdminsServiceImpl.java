package cn.wyx.service.impl;

import cn.wyx.dao.AdminsDao;
import cn.wyx.model.Admins;
import cn.wyx.query.AdminsQuery;
import cn.wyx.service.AdminsService;

public class AdminsServiceImpl extends BaseServiceImpl<Admins, AdminsQuery> implements AdminsService 
{	
	private AdminsDao adminsDao;
	
	public void setAdminsDao(AdminsDao adminsDao) 
	{
		this.adminsDao = adminsDao;
		this.baseDao = adminsDao;
	}
	
	@Override
	public Admins getAdminsByUnameAndPWord(String username, String password)
	{
		return adminsDao.getAdminsByUnameAndPWord(username, password);
	}

	@Override
	public Admins getAdminsByUname(String username)
	{
		return adminsDao.getAdminsByUname(username);
	}
}
