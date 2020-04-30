package cn.wyx.service;

import cn.wyx.model.About;
import cn.wyx.model.Anli;
import cn.wyx.query.AnliQuery;

public interface AnliService extends BaseService<Anli, AnliQuery> 
{
	public void updateAnli(Anli anli);
}
