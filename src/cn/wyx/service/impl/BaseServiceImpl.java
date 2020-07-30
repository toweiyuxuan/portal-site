package cn.wyx.service.impl;

import java.lang.reflect.Field;
import java.util.List;

import cn.wyx.dao.BaseDao;
import cn.wyx.service.BaseService;
import cn.wyx.utils.Page;

public class BaseServiceImpl<T, Q> implements BaseService<T, Q>
{
	BaseDao<T, Q> baseDao;

	@Override
	public void save(T t)
	{
		baseDao.save(t);
	}

	@Override
	public void update(T t)
	{
		baseDao.update(t);
	}

	@Override
	public T getObj(Long id)
	{
		return (T) baseDao.getObj(id);
	}

	@Override
	public void delete(Long id)
	{
		baseDao.delete(id);
	}

	@Override
	public void delete(T t)
	{
		baseDao.delete(t);
	}

	@Override
	public Page queryObjByCondition(Q q, List<String> exclude)
	{
		Page page = new Page();
		Class<? extends Object> class1 = q.getClass();
		try
		{
			Field field = class1.getDeclaredField("pageNo");
			field.setAccessible(true);
			Integer pageNo = (Integer) field.get(q);
			page.setPageNo(pageNo);
			int startNum = page.getStartNum();
			Field startNumField = class1.getDeclaredField("startNum");
			startNumField.setAccessible(true);
			startNumField.set(q, startNum);
			List<T> list = baseDao.queryObjByCondition(q, exclude);
			page.setList(list);
			Long count = baseDao.queryObjByConditionCount(q, exclude);
			page.setTotalCount(new Integer(count + ""));

		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return page;
	}


	@Override
	public List<T> list()
	{
		return baseDao.list();
	}

	@Override
	public List<T> queryObjByConditionNoPage(Q q, List<String> exclude) 
	{
		return baseDao.queryObjByConditionNoPage(q, exclude);
	}

}
