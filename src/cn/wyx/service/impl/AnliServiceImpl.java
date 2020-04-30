package cn.wyx.service.impl;

import org.apache.commons.beanutils.BeanUtils;

import cn.wyx.dao.AnliDao;
import cn.wyx.model.About;
import cn.wyx.model.Anli;
import cn.wyx.query.AnliQuery;
import cn.wyx.service.AnliService;

public class AnliServiceImpl extends BaseServiceImpl<Anli, AnliQuery> implements AnliService 
{	
	private AnliDao anliDao;
	
	public void setAnliDao(AnliDao anliDao) 
	{
		this.anliDao = anliDao;
		this.baseDao = anliDao;
	}

	@Override
	public void updateAnli(Anli anli)
	{
		Anli anli1 = anliDao.getObj(anli.getAId());
		try 
		{
			//把user中的所有属性拷贝到user1中
			BeanUtils.copyProperties(anli1, anli);
		} catch (Exception e) 
		{
			e.printStackTrace();
		} 
		anliDao.update(anli1);
	}
}
