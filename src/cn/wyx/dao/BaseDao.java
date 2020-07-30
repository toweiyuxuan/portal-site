package cn.wyx.dao;

import java.util.List;

public interface BaseDao<T, Q>
{
	public void save(T t);

	public void update(T t);

	public T getObj(Long id);

	public void delete(Long id);

	public void delete(T t);
	
	public List<T> queryObjByCondition(final Q q, final List<String> exclude);
	
	public List<T> list();
	
	public Long queryObjByConditionCount(final Q q, final List<String> exclude);
	
	public List<T> queryObjByConditionNoPage(final Q q, final List<String> exclude );
}
