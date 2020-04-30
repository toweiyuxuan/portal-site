package cn.wyx.controller;

import java.io.IOException;
import java.util.Map;

import cn.wyx.model.User;
import cn.wyx.query.UserQuery;
import cn.wyx.service.UserService;
import cn.wyx.utils.MD5Utils;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class UserAction extends BaseAction 
{	
	private String updatepassword;
	
	private User user;
	private UserService userService;
	
	
	private UserQuery query = new UserQuery();
	
	//查询
	public String user_list()
	{		
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = query.getPageNo();
		if(pageNo == null )
		{
			query.setPageNo(1);
		}		
		Page page = userService.queryObjByCondition(query, exclude);		
		context.put("page", page);	
		return SUCCESS;
	}
	
	//编辑
	public String user_edit()
	{	
		return SUCCESS;
	}
	
	//修改密码
	public void ajax_u_updatepass() throws IOException
	{
		User user1 = userService.getObj(1);
		if(!MD5Utils.md5(user.getUPassword()).equals(user1.getUPassword()))
		{
			response.getWriter().write("fail");
		}
		if(MD5Utils.md5(user.getUPassword()).equals(user1.getUPassword()))
		{
			user1.setUPassword(MD5Utils.md5(updatepassword));
			userService.updateUser(user1);
			response.getWriter().write("success");
			ajax_u_logout();
		}
	}
	
	//登录
	public void ajax_u_login() throws IOException
	{		
		ActionContext context = ActionContext.getContext();
		User user1 = userService.getUserByUnameAndPWord(user.getUName(), MD5Utils.md5(user.getUPassword()));
		if(user1 == null)
		{
			response.getWriter().write("fail");
		}
		else
		{
			Map<String, Object> session2 = context.getSession();
			//把用户的信息放入session中
			session2.put("user", user1);
			response.getWriter().write("success");
		}		
	}
	
	//注销
	public String ajax_u_logout()
	{
		ActionContext context = ActionContext.getContext();		
		Map<String, Object> session2 = context.getSession();
		session2.remove("user");
		return MAIN;
	}
	
	
	
	//============================================setter and getter=====================================================
	
	public UserQuery getQuery() 
	{
		return query;
	}
	public void setQuery(UserQuery query)
	{
		this.query = query;
	}

	public UserService getUserService() 
	{
		return userService;
	}
	public void setUserService(UserService userService) 
	{
		this.userService = userService;
	}

	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}

	public String getUpdatepassword()
	{
		return updatepassword;
	}

	public void setUpdatepassword(String updatepassword)
	{
		this.updatepassword = updatepassword;
	}
	
}
