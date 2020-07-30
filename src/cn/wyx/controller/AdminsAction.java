package cn.wyx.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import cn.wyx.model.Admins;
import cn.wyx.model.Records;
import cn.wyx.query.AdminsQuery;
import cn.wyx.query.RecordsQuery;
import cn.wyx.service.AdminsService;
import cn.wyx.service.RecordsService;
import cn.wyx.utils.GetIP;
import cn.wyx.utils.MD5Utils;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class AdminsAction extends BaseAction 
{	
	private Admins admins;
	private AdminsService adminsService;
	private AdminsQuery adminsQuery = new AdminsQuery();
	
	private RecordsService recordsService;
	private RecordsQuery recordsQuery = new RecordsQuery();
	
	private String newpassword;
	
	//列表
	public String admins_list()
	{		
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = adminsQuery.getPageNo();
		if(pageNo == null )
		{
			adminsQuery.setPageNo(1);
		}		
		Page page = adminsService.queryObjByCondition(adminsQuery, exclude);		
		context.put("page", page);		
		return LIST;
	}

	//添加
	public String admins_input()
	{
		return INPUT;
	}
	public void admins_add() throws IOException
	{
		Admins admins1 = adminsService.getAdminsByUname(admins.getUsername());
		if(admins1 != null)
		{
			response.getWriter().write("have");
		}
		else
		{
			admins.setCreatedAt(new Timestamp(System.currentTimeMillis()));
			admins.setLevel(1);
			admins.setStatus(0);
			admins.setPassword(MD5Utils.md5(admins.getPassword()));
			adminsService.save(admins);
			response.getWriter().write("success");
		}
	}	
	
	//登录
	public void admins_login() throws IOException
	{		
		ActionContext context = ActionContext.getContext();
		
		//我们要给明文的密码做加密
		String newPass = MD5Utils.md5(admins.getPassword());
		Admins admins1 = adminsService.getAdminsByUnameAndPWord(admins.getUsername(), newPass);
		if(admins1 == null)
		{
			response.getWriter().write("fail");
		}
		else
		{
			Map<String, Object> session = context.getSession();
			//把用户的信息放入session中
			session.put("admin", admins1);
			
			Records records = new Records();
			records.setAddressIp(GetIP.getIpAddr(request));
			records.setLogin(admins.getUsername());
			records.setContent("登录成功！");
			records.setCreatedAt(new Timestamp(System.currentTimeMillis()));
			recordsService.save(records);		
			response.getWriter().write("success");
		}
	}
	
	//登陆成功
	public String admins_index()
	{
		return SUCCESS;
	}
	
	//首页
	public String admins_home()
	{
		ActionContext context = ActionContext.getContext();
		//查登录记录
		List<Records> recordsList = recordsService.queryObjByConditionNoPage(recordsQuery, exclude);
		if(recordsList.size() > 5)
		{
			recordsList = recordsList.subList(0,5);
		}
		context.put("recordsList", recordsList);
		return SUCCESS;
	}
	
	//注销
	public String admins_logout()
	{
		ActionContext context = ActionContext.getContext();		
		Map<String, Object> session = context.getSession();
		session.remove("admin");
		return NONE;
	}
	
	//禁用
	public void admins_forbid() throws IOException
	{
		Admins admins1 = adminsService.getObj(admins.getId());
		admins1.setStatus(0);
		adminsService.update(admins1);
		response.getWriter().write("success");
	}
	
	//启用
	public void admins_start() throws IOException
	{
		Admins admins1 = adminsService.getObj(admins.getId());
		admins1.setStatus(1);
		adminsService.update(admins1);
		response.getWriter().write("success");
	}
	
	//删除
	public void admins_del() throws IOException
	{
		adminsService.delete(admins.getId());
		response.getWriter().write("success");
	}
	
	//重置密码
	public void admins_resetpass() throws IOException
	{
		Admins admins1 = adminsService.getObj(admins.getId());
		admins1.setPassword(MD5Utils.md5("123456"));
		adminsService.update(admins1);
		response.getWriter().write("success");
	}
	
	//修改密码
	public void admins_updpass() throws IOException
	{
		Admins admins1 = adminsService.getObj(admins.getId());
		
		if(!admins1.getPassword().equals(MD5Utils.md5(admins.getPassword())))
		{
			response.getWriter().write("fail");
		}
		if(admins1.getPassword().equals(MD5Utils.md5(admins.getPassword())))
		{
			admins1.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
			admins1.setPassword(MD5Utils.md5(newpassword));
			adminsService.update(admins1);
			response.getWriter().write("success");
		}
	}
		
	
	//============================================setter and getter=====================================================
	public AdminsQuery getAdminsQuery() 
	{
		return adminsQuery;
	}
	public void setAdminsQuery(AdminsQuery adminsQuery)
	{
		this.adminsQuery = adminsQuery;
	}
	public AdminsService getAdminsService() 
	{
		return adminsService;
	}
	public void setAdminsService(AdminsService adminsService) 
	{
		this.adminsService = adminsService;
	}

	public Admins getAdmins() {
		return admins;
	}

	public void setAdmins(Admins admins) {
		this.admins = admins;
	}

	public RecordsService getRecordsService() {
		return recordsService;
	}

	public void setRecordsService(RecordsService recordsService) {
		this.recordsService = recordsService;
	}

	public RecordsQuery getRecordsQuery() {
		return recordsQuery;
	}

	public void setRecordsQuery(RecordsQuery recordsQuery) {
		this.recordsQuery = recordsQuery;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}		
}
