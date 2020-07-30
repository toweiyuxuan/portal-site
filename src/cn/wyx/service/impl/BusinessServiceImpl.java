package cn.wyx.service.impl;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;

import org.apache.commons.lang.StringUtils;

import cn.wyx.dao.BusinessDao;
import cn.wyx.dao.UploadfilesDao;
import cn.wyx.model.Business;
import cn.wyx.model.Uploadfiles;
import cn.wyx.query.BusinessQuery;
import cn.wyx.service.BusinessService;

public class BusinessServiceImpl extends BaseServiceImpl<Business, BusinessQuery> implements BusinessService 
{	
	private BusinessDao businessDao;
	
	private UploadfilesDao uploadfilesDao;
	
	/*@Override
	public List<Uploadfiles> getUploadfiles(Long id) 
	{
		//查询所有图片
		List<Uploadfiles> list = uploadfilesDao.list();
		
		Business business = businessDao.getObj(id);
		
		Set<Uploadfiles> uploadfiles = business.getUploadfile();
		
		for(Uploadfiles u : list)
		{
			for(Uploadfiles bu : uploadfiles)
			{
				if(u.getUploadfileId().intValue() == bu.getUploadfileId().intValue())
				{
					u.setSelect("yes");
				}
			}
		}
		return list;
	}

	@Override
	public void updateUploadfiles(Long id, String uploadfilesIds)
	{
		Business business = businessDao.getObj(id);
		Set<Uploadfiles> uploadfiles = business.getUploadfile();
		//把原有的清掉
		uploadfiles.clear();
		if(StringUtils.isNotBlank(uploadfilesIds))
		{
			String[] ids = uploadfilesIds.split(",");
			for(String uploadfilesId : ids)
			{
				//根据id获得要分配学科
				Uploadfiles uploadfile = uploadfilesDao.getObj(new Long(uploadfilesId));
				uploadfiles.add(uploadfile);
			}
		}					
	}*/
	
	//============================================setter and getter=====================================================

	public void setBusinessDao(BusinessDao businessDao) 
	{
		this.businessDao = businessDao;
		this.baseDao = businessDao;
	}

	public UploadfilesDao getUploadfilesDao() {
		return uploadfilesDao;
	}


	public void setUploadfilesDao(UploadfilesDao uploadfilesDao) {
		this.uploadfilesDao = uploadfilesDao;
	}


	public BusinessDao getBusinessDao() {
		return businessDao;
	}
}
