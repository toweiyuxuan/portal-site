package cn.wyx.controller;

import cn.wyx.query.UsersQuery;
import cn.wyx.service.UsersService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class UsersAction extends BaseAction 
{	
	private UsersService usersService;
	private UsersQuery usersQuery = new UsersQuery();
	
	public String users_list()
	{		
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = usersQuery.getPageNo();
		if(pageNo == null )
		{
			usersQuery.setPageNo(1);
		}		
		Page page = usersService.queryObjByCondition(usersQuery, exclude);		
		context.put("page", page);		
		return SUCCESS;
	}

	public String users_input()
	{
		return SUCCESS;
	}
	
	//============================================setter and getter=====================================================
	public UsersQuery getUsersQuery() 
	{
		return usersQuery;
	}
	public void setUsersQuery(UsersQuery usersQuery)
	{
		this.usersQuery = usersQuery;
	}
	public UsersService getUsersService() 
	{
		return usersService;
	}
	public void setUsersService(UsersService usersService) 
	{
		this.usersService = usersService;
	}	
}
