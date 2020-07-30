package cn.wyx.controller;

import java.io.IOException;
import java.sql.Timestamp;

import cn.wyx.model.Business;
import cn.wyx.model.Examples;
import cn.wyx.query.ExamplesQuery;
import cn.wyx.service.ExamplesService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class ExamplesAction extends BaseAction 
{	
	private Examples examples;
	private ExamplesService examplesService;
	private ExamplesQuery examplesQuery = new ExamplesQuery();
	
	public String examples_list()
	{		
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = examplesQuery.getPageNo();
		if(pageNo == null )
		{
			examplesQuery.setPageNo(1);
		}		
		Page page = examplesService.queryObjByCondition(examplesQuery, exclude);		
		context.put("page", page);		
		return SUCCESS;
	}

	public String examples_input()
	{
		return SUCCESS;
	}
	
	public void examples_add() throws IOException
	{
		examples.setStatus(0);
		examples.setCreatedAt(new Timestamp(System.currentTimeMillis()));
		examplesService.save(examples);
		response.getWriter().write("success");
	}
	
	//禁用
	public void examples_forbid() throws IOException
	{
		Examples examples1 = examplesService.getObj(examples.getId());
		examples1.setStatus(0);
		examplesService.update(examples1);
		response.getWriter().write("success");
	}
	//启用
	public void examples_start() throws IOException
	{
		Examples examples1 = examplesService.getObj(examples.getId());
		examples1.setStatus(1);
		examplesService.update(examples1);
		response.getWriter().write("success");
	}
	//删除
	public void examples_del() throws IOException
	{
		examplesService.delete(examples.getId());
		response.getWriter().write("success");
	}
	
	//编辑
	public String examples_edit()
	{
		ActionContext context = ActionContext.getContext();		
		Examples examples1 = examplesService.getObj(examples.getId());
		context.put("examples", examples1);		
		return SUCCESS;
	}
	public void examples_upd() throws IOException
	{
		Examples examples1 = examplesService.getObj(examples.getId());
		examples1.setName(examples.getName());
		examples1.setCover(examples.getCover());
		examples1.setIntroduction(examples.getIntroduction());
		examples1.setDescription(examples.getDescription());
		examplesService.update(examples1);
		response.getWriter().write("success");
	}

	//配图
	public void examples_addPic() throws IOException
	{
		Examples examples1 = examplesService.getObj(examples.getId());
		examples1.setPicture(examples.getPicture());
		examplesService.update(examples1);
		response.getWriter().write("success");
	}

	//============================================setter and getter=====================================================
	
	
	public Examples getExamples() {
		return examples;
	}

	public void setExamples(Examples examples) {
		this.examples = examples;
	}

	public ExamplesService getExamplesService() {
		return examplesService;
	}

	public void setExamplesService(ExamplesService examplesService) {
		this.examplesService = examplesService;
	}

	public ExamplesQuery getExamplesQuery() {
		return examplesQuery;
	}

	public void setExamplesQuery(ExamplesQuery examplesQuery) {
		this.examplesQuery = examplesQuery;
	}
	
}