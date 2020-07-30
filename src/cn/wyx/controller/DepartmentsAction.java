package cn.wyx.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import cn.wyx.model.Activitys;
import cn.wyx.model.Business;
import cn.wyx.model.Departments;
import cn.wyx.query.DepartmentsQuery;
import cn.wyx.service.DepartmentsService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class DepartmentsAction extends BaseAction 
{	
	private Departments departments;
	private DepartmentsService departmentsService;
	private DepartmentsQuery departmentsQuery = new DepartmentsQuery();
	
	public String departments_list()
	{	
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = departmentsQuery.getPageNo();
		if(pageNo == null )
		{
			departmentsQuery.setPageNo(1);
		}		
		Page page = departmentsService.queryObjByCondition(departmentsQuery, exclude);
		context.put("page", page);	
		return SUCCESS;
	}

	public String departments_input()
	{
		return SUCCESS;
	}
	
	public void departments_add() throws IOException
	{
		departments.setStatus(0);
		departments.setCreatedAt(new Timestamp(System.currentTimeMillis()));
		departmentsService.save(departments);
		response.getWriter().write("success");
	}
	
	//禁用
	public void departments_forbid() throws IOException
	{
		Departments departments1 = departmentsService.getObj(departments.getId());
		departments1.setStatus(0);
		departmentsService.update(departments1);
		response.getWriter().write("success");
	}
	//启用
	public void departments_start() throws IOException
	{
		Departments departments1 = departmentsService.getObj(departments.getId());
		departments1.setStatus(1);
		departmentsService.update(departments1);
		response.getWriter().write("success");
	}
	//删除
	public void departments_del() throws IOException
	{
		departmentsService.delete(departments.getId());
		response.getWriter().write("success");
	}
	
	//编辑
	public String departments_edit()
	{
		ActionContext context = ActionContext.getContext();		
		Departments departments1 = departmentsService.getObj(departments.getId());
		context.put("departments", departments1);		
		return SUCCESS;
	}
	public void departments_upd() throws IOException
	{
		Departments departments1 = departmentsService.getObj(departments.getId());
		departments1.setName(departments.getName());
		departments1.setCover(departments.getCover());
		departments1.setIntroduction(departments.getIntroduction());
		departments1.setDescription(departments.getDescription());
		departmentsService.update(departments1);
		response.getWriter().write("success");
	}

	//配图
	public void departments_addPic() throws IOException
	{
		Departments departments1 = departmentsService.getObj(departments.getId());
		departments1.setPicture(departments.getPicture());
		departmentsService.update(departments1);
		response.getWriter().write("success");
	}

	//============================================setter and getter=====================================================

	public Departments getDepartments() {
		return departments;
	}

	public void setDepartments(Departments departments) {
		this.departments = departments;
	}

	public DepartmentsService getDepartmentsService() {
		return departmentsService;
	}

	public void setDepartmentsService(DepartmentsService departmentsService) {
		this.departmentsService = departmentsService;
	}

	public DepartmentsQuery getDepartmentsQuery() {
		return departmentsQuery;
	}

	public void setDepartmentsQuery(DepartmentsQuery departmentsQuery) {
		this.departmentsQuery = departmentsQuery;
	}
}