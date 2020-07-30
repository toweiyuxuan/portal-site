package cn.wyx.dao;

import cn.wyx.model.Admins;
import cn.wyx.query.AdminsQuery;

public interface AdminsDao extends BaseDao<Admins, AdminsQuery> 
{
	public Admins getAdminsByUname(String username);
	public Admins getAdminsByUnameAndPWord(String username, String password);
}
