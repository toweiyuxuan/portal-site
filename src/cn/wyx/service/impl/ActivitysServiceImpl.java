package cn.wyx.service.impl;

import cn.wyx.dao.ActivitysDao;
import cn.wyx.model.Activitys;
import cn.wyx.query.ActivitysQuery;
import cn.wyx.service.ActivitysService;

public class ActivitysServiceImpl extends BaseServiceImpl<Activitys, ActivitysQuery> implements ActivitysService 
{	
	private ActivitysDao activitysDao;
	
	public void setActivitysDao(ActivitysDao activitysDao) 
	{
		this.activitysDao = activitysDao;
		this.baseDao = activitysDao;
	}
}
