package cn.wyx.service;

import cn.wyx.model.Anli;
import cn.wyx.model.Huodong;
import cn.wyx.query.HuodongQuery;

public interface HuodongService extends BaseService<Huodong, HuodongQuery> 
{
	public void updateHuodong(Huodong huodong);
}
