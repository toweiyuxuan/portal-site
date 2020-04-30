package cn.wyx.service.impl;

import org.apache.commons.beanutils.BeanUtils;

import cn.wyx.dao.HuodongDao;
import cn.wyx.model.About;
import cn.wyx.model.Huodong;
import cn.wyx.query.HuodongQuery;
import cn.wyx.service.HuodongService;

public class HuodongServiceImpl extends BaseServiceImpl<Huodong, HuodongQuery> implements HuodongService 
{	
	private HuodongDao huodongDao;
	
	public void setHuodongDao(HuodongDao huodongDao) 
	{
		this.huodongDao = huodongDao;
		this.baseDao = huodongDao;
	}

	@Override
	public void updateHuodong(Huodong huodong)
	{
		Huodong huodong1 = huodongDao.getObj(huodong.getHId());
		huodong.setHDate(huodong1.getHDate());
		try 
		{
			//把user中的所有属性拷贝到user1中
			BeanUtils.copyProperties(huodong1, huodong);
		} catch (Exception e) 
		{
			e.printStackTrace();
		} 
		huodongDao.update(huodong1);
	}
}
