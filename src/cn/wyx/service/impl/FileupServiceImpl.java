package cn.wyx.service.impl;

import org.apache.commons.beanutils.BeanUtils;

import cn.wyx.dao.FileupDao;
import cn.wyx.model.Anli;
import cn.wyx.model.Fileup;
import cn.wyx.query.FileupQuery;
import cn.wyx.service.FileupService;

public class FileupServiceImpl extends BaseServiceImpl<Fileup, FileupQuery> implements FileupService 
{	
	private FileupDao fileupDao;
	
	public void setFileupDao(FileupDao fileupDao) 
	{
		this.fileupDao = fileupDao;
		this.baseDao = fileupDao;
	}

	@Override
	public void updateFileup(Fileup fileup)
	{
		Fileup fileup1 = fileupDao.getObj(fileup.getFId());
		fileup.setFDate(fileup1.getFDate());
		try 
		{
			//把user中的所有属性拷贝到user1中
			BeanUtils.copyProperties(fileup1, fileup);
		} catch (Exception e) 
		{
			e.printStackTrace();
		} 
		fileupDao.update(fileup1);
	}
}
