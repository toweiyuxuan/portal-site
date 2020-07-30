package cn.wyx.service.impl;

import cn.wyx.dao.ExamplesDao;
import cn.wyx.model.Examples;
import cn.wyx.query.ExamplesQuery;
import cn.wyx.service.ExamplesService;

public class ExamplesServiceImpl extends BaseServiceImpl<Examples, ExamplesQuery> implements ExamplesService 
{	
	private ExamplesDao examplesDao;
	
	public void setExamplesDao(ExamplesDao examplesDao) 
	{
		this.examplesDao = examplesDao;
		this.baseDao = examplesDao;
	}
}
