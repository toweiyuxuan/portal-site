package cn.wyx.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Collections;
import java.util.List;

import net.sf.json.JSONObject;
import cn.wyx.configclass.Site;
import cn.wyx.model.Business;
import cn.wyx.model.Uploadfiles;
import cn.wyx.query.BusinessQuery;
import cn.wyx.service.BusinessService;
import cn.wyx.service.UploadfilesService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class BusinessAction extends BaseAction 
{	
	private Business business;
	private BusinessService businessService;
	private BusinessQuery businessQuery = new BusinessQuery();
	
	//属性定义,用于接收页面传过来的值
	private String uploadfilesIds;
	
	public String business_list()
	{		
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = businessQuery.getPageNo();
		if(pageNo == null )
		{
			businessQuery.setPageNo(1);
		}		
		Page page = businessService.queryObjByCondition(businessQuery, exclude);
		context.put("page", page);	
		return SUCCESS;
	}
	
	
	
	
	
	public String business_input()
	{
		return SUCCESS;
	}
	
	public void business_add() throws IOException
	{
		business.setStatus(0);
		business.setCreatedAt(new Timestamp(System.currentTimeMillis()));
		businessService.save(business);
		response.getWriter().write("success");
	}
	
	//禁用
	public void business_forbid() throws IOException
	{
		Business business1 = businessService.getObj(business.getId());
		business1.setStatus(0);
		businessService.update(business1);
		response.getWriter().write("success");
	}
	//启用
	public void business_start() throws IOException
	{
		Business business1 = businessService.getObj(business.getId());
		business1.setStatus(1);
		businessService.update(business1);
		response.getWriter().write("success");
	}
	//删除
	public void business_del() throws IOException
	{
		businessService.delete(business.getId());
		response.getWriter().write("success");
	}
	
	//编辑
	public String business_edit()
	{
		ActionContext context = ActionContext.getContext();		
		Business business1 = businessService.getObj(business.getId());
		context.put("business", business1);		
		return SUCCESS;
	}
	public void business_upd() throws IOException
	{
		Business business1 = businessService.getObj(business.getId());
		business1.setName(business.getName());
		business1.setCover(business.getCover());
		business1.setIntroduction(business.getIntroduction());
		business1.setDescription(business.getDescription());
		businessService.update(business1);
		response.getWriter().write("success");
	}

	//配图
	public void business_addPic() throws IOException
	{
		Business business1 = businessService.getObj(business.getId());
		business1.setPicture(business.getPicture());
		businessService.update(business1);
		response.getWriter().write("success");
	}

	//============================================setter and getter=====================================================
	
	public Business getBusiness() {
		return business;
	}

	public void setBusiness(Business business) {
		this.business = business;
	}

	public BusinessService getBusinessService() {
		return businessService;
	}

	public void setBusinessService(BusinessService businessService) {
		this.businessService = businessService;
	}

	public BusinessQuery getBusinessQuery() {
		return businessQuery;
	}

	public void setBusinessQuery(BusinessQuery businessQuery) {
		this.businessQuery = businessQuery;
	}

	public String getUploadfilesIds() {
		return uploadfilesIds;
	}

	public void setUploadfilesIds(String uploadfilesIds) {
		this.uploadfilesIds = uploadfilesIds;
	}
	
}	