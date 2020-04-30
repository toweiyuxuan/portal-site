package cn.wyx.service;

import cn.wyx.model.About;
import cn.wyx.query.AboutQuery;

public interface AboutService extends BaseService<About, AboutQuery> 
{
	public void updateAbout(About about);
}
