package cn.wyx.service.impl;

import cn.wyx.dao.DepartmentsDao;
import cn.wyx.model.Departments;
import cn.wyx.query.DepartmentsQuery;
import cn.wyx.service.DepartmentsService;

public class DepartmentsServiceImpl extends BaseServiceImpl<Departments, DepartmentsQuery> implements DepartmentsService 
{	
	private DepartmentsDao departmentsDao;
	
	public void setDepartmentsDao(DepartmentsDao departmentsDao) 
	{
		this.departmentsDao = departmentsDao;
		this.baseDao = departmentsDao;
	}
}
