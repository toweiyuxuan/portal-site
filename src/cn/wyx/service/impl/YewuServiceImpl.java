package cn.wyx.service.impl;

import org.apache.commons.beanutils.BeanUtils;

import cn.wyx.dao.YewuDao;
import cn.wyx.model.About;
import cn.wyx.model.Yewu;
import cn.wyx.query.YewuQuery;
import cn.wyx.service.YewuService;

public class YewuServiceImpl extends BaseServiceImpl<Yewu, YewuQuery> implements YewuService 
{	
	private YewuDao yewuDao;
	
	public void setYewuDao(YewuDao yewuDao) 
	{
		this.yewuDao = yewuDao;
		this.baseDao = yewuDao;
	}

	@Override
	public void updateYewu(Yewu yewu)
	{
		Yewu yewu1 = yewuDao.getObj(yewu.getYId());
		try 
		{
			//把user中的所有属性拷贝到user1中
			BeanUtils.copyProperties(yewu1, yewu);
		} catch (Exception e) 
		{
			e.printStackTrace();
		} 
		yewuDao.update(yewu1);	
	}
}
