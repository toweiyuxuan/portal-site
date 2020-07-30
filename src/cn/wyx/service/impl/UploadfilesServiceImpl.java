package cn.wyx.service.impl;

import cn.wyx.dao.UploadfilesDao;
import cn.wyx.model.Uploadfiles;
import cn.wyx.query.UploadfilesQuery;
import cn.wyx.service.UploadfilesService;

public class UploadfilesServiceImpl extends BaseServiceImpl<Uploadfiles, UploadfilesQuery> implements UploadfilesService 
{	
	private UploadfilesDao uploadfilesDao;
	
	public void setUploadfilesDao(UploadfilesDao uploadfilesDao) 
	{
		this.uploadfilesDao = uploadfilesDao;
		this.baseDao = uploadfilesDao;
	}
}
