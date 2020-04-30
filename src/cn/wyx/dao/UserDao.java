package cn.wyx.dao;

import cn.wyx.model.User;
import cn.wyx.query.UserQuery;

public interface UserDao extends BaseDao<User, UserQuery> 
{
	public User getUserByUnameAndPWord(String username, String password);
}
