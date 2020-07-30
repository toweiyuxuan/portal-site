package cn.wyx.service.impl;

import cn.wyx.dao.RecordsDao;
import cn.wyx.model.Records;
import cn.wyx.query.RecordsQuery;
import cn.wyx.service.RecordsService;

public class RecordsServiceImpl extends BaseServiceImpl<Records, RecordsQuery> implements RecordsService 
{	
	private RecordsDao recordsDao;
	
	public void setRecordsDao(RecordsDao recordsDao) 
	{
		this.recordsDao = recordsDao;
		this.baseDao = recordsDao;
	}
}
