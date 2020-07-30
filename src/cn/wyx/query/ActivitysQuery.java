package cn.wyx.query;

import cn.wyx.model.Activitys;

public class ActivitysQuery extends Activitys
{
	
	private Integer pageNo;	
	private Integer startNum;
	
	//============================================setter和getter方法=====================================================	
	public Integer getPageNo() 
	{
		return pageNo;
	}
	public void setPageNo(Integer pageNo) 
	{
		this.pageNo = pageNo;
	}
	public Integer getStartNum() 
	{
		return startNum;
	}
	public void setStartNum(Integer startNum) 
	{
		this.startNum = startNum;
	}
	
}
