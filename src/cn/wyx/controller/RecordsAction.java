package cn.wyx.controller;

import cn.wyx.query.RecordsQuery;
import cn.wyx.service.RecordsService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class RecordsAction extends BaseAction 
{	
	private RecordsService recordsService;
	private RecordsQuery recordsQuery = new RecordsQuery();
	
	public String records_list()
	{		
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = recordsQuery.getPageNo();
		if(pageNo == null )
		{
			recordsQuery.setPageNo(1);
		}		
		Page page = recordsService.queryObjByCondition(recordsQuery, exclude);		
		context.put("page", page);		
		return SUCCESS;
	}

	public String records_input()
	{
		return SUCCESS;
	}
	
	//============================================setter and getter=====================================================
	public RecordsQuery getRecordsQuery() 
	{
		return recordsQuery;
	}
	public void setRecordsQuery(RecordsQuery recordsQuery)
	{
		this.recordsQuery = recordsQuery;
	}
	public RecordsService getRecordsService() 
	{
		return recordsService;
	}
	public void setRecordsService(RecordsService recordsService) 
	{
		this.recordsService = recordsService;
	}	
}
