package cn.wyx.service.impl;

import org.apache.commons.beanutils.BeanUtils;

import cn.wyx.dao.AboutDao;
import cn.wyx.model.About;
import cn.wyx.query.AboutQuery;
import cn.wyx.service.AboutService;

public class AboutServiceImpl extends BaseServiceImpl<About, AboutQuery> implements AboutService 
{	
	private AboutDao aboutDao;
	
	public void setAboutDao(AboutDao aboutDao) 
	{
		this.aboutDao = aboutDao;
		this.baseDao = aboutDao;
	}

	@Override
	public void updateAbout(About about)
	{
		About about1 = aboutDao.getObj(about.getAId());
		try 
		{
			//把user中的所有属性拷贝到user1中
			BeanUtils.copyProperties(about1, about);
		} catch (Exception e) 
		{
			e.printStackTrace();
		} 
		aboutDao.update(about1);		
	}
}
