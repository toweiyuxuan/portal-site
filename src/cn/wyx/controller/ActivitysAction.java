package cn.wyx.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import cn.wyx.model.Activitys;
import cn.wyx.model.Business;
import cn.wyx.query.ActivitysQuery;
import cn.wyx.service.ActivitysService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class ActivitysAction extends BaseAction 
{	
	private Activitys activitys;
	private ActivitysService activitysService;
	private ActivitysQuery activitysQuery = new ActivitysQuery();
	
	public String activitys_list()
	{		
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = activitysQuery.getPageNo();
		if(pageNo == null )
		{
			activitysQuery.setPageNo(1);
		}		
		Page page = activitysService.queryObjByCondition(activitysQuery, exclude);		
		context.put("page", page);		
		return SUCCESS;
	}


	public String activitys_input()
	{
		return SUCCESS;
	}
	
	public void activitys_add() throws IOException
	{
		activitys.setStatus(0);
		activitys.setCreatedAt(new Timestamp(System.currentTimeMillis()));
		activitysService.save(activitys);
		response.getWriter().write("success");
	}
	
	//禁用
	public void activitys_forbid() throws IOException
	{
		Activitys activitys1 = activitysService.getObj(activitys.getId());
		activitys1.setStatus(0);
		activitysService.update(activitys1);
		response.getWriter().write("success");
	}
	//启用
	public void activitys_start() throws IOException
	{
		Activitys activitys1 = activitysService.getObj(activitys.getId());
		activitys1.setStatus(1);
		activitysService.update(activitys1);
		response.getWriter().write("success");
	}
	//删除
	public void activitys_del() throws IOException
	{
		activitysService.delete(activitys.getId());
		response.getWriter().write("success");
	}
	
	//编辑
	public String activitys_edit()
	{
		ActionContext context = ActionContext.getContext();		
		Activitys activitys1 = activitysService.getObj(activitys.getId());
		context.put("activitys", activitys1);		
		return SUCCESS;
	}
	public void activitys_upd() throws IOException
	{
		Activitys activitys1 = activitysService.getObj(activitys.getId());
		activitys1.setName(activitys.getName());
		activitys1.setCover(activitys.getCover());
		activitys1.setIntroduction(activitys.getIntroduction());
		activitys1.setDescription(activitys.getDescription());
		activitysService.update(activitys1);
		response.getWriter().write("success");
	}
	

	//配图
	public void activitys_addPic() throws IOException
	{
		Activitys activitys1 = activitysService.getObj(activitys.getId());
		activitys1.setPicture(activitys.getPicture());
		activitysService.update(activitys1);
		response.getWriter().write("success");
	}

	//============================================setter and getter=====================================================
	
	public Activitys getActivitys() {
		return activitys;
	}

	public void setActivitys(Activitys activitys) {
		this.activitys = activitys;
	}

	public ActivitysService getActivitysService() {
		return activitysService;
	}

	public void setActivitysService(ActivitysService activitysService) {
		this.activitysService = activitysService;
	}

	public ActivitysQuery getActivitysQuery() {
		return activitysQuery;
	}

	public void setActivitysQuery(ActivitysQuery activitysQuery) {
		this.activitysQuery = activitysQuery;
	}

}