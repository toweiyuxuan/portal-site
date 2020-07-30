package cn.wyx.service;

import java.util.List;

import cn.wyx.utils.Page;

public interface BaseService<T, Q> 
{	
	public void save(T t);
	
	public void update(T t);
	
	public T getObj(Long long1);
	
	public void delete(Long id);
	
	public void delete(T t);
	
	public Page queryObjByCondition(Q q, List<String> exclude);
	
	public List<T> list();
	
	public List<T> queryObjByConditionNoPage(final Q q, final List<String> exclude );	
}
