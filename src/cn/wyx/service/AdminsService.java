package cn.wyx.service;

import cn.wyx.model.Admins;
import cn.wyx.query.AdminsQuery;

public interface AdminsService extends BaseService<Admins, AdminsQuery> 
{
	public Admins getAdminsByUname(String username);
	public Admins getAdminsByUnameAndPWord(String username, String password);
}
