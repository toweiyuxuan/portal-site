package cn.wyx.service;

import cn.wyx.model.About;
import cn.wyx.model.Yewu;
import cn.wyx.query.YewuQuery;

public interface YewuService extends BaseService<Yewu, YewuQuery> 
{
	public void updateYewu(Yewu yewu);
}
