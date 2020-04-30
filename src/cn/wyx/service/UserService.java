package cn.wyx.service;

import cn.wyx.model.User;
import cn.wyx.query.UserQuery;

public interface UserService extends BaseService<User, UserQuery> 
{
	public User getUserByUnameAndPWord(String username, String password);
	public void updateUser(User user);
}
