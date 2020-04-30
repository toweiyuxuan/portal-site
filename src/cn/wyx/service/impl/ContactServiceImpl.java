package cn.wyx.service.impl;

import org.apache.commons.beanutils.BeanUtils;

import cn.wyx.dao.ContactDao;
import cn.wyx.model.About;
import cn.wyx.model.Contact;
import cn.wyx.query.ContactQuery;
import cn.wyx.service.ContactService;

public class ContactServiceImpl extends BaseServiceImpl<Contact, ContactQuery> implements ContactService 
{	
	private ContactDao contactDao;
	
	public void setContactDao(ContactDao contactDao) 
	{
		this.contactDao = contactDao;
		this.baseDao = contactDao;
	}

	@Override
	public void updateContact(Contact contact)
	{
		Contact contact1 = contactDao.getObj(contact.getCId());
		try 
		{
			//把user中的所有属性拷贝到user1中
			BeanUtils.copyProperties(contact1, contact);
		} catch (Exception e) 
		{
			e.printStackTrace();
		} 
		contactDao.update(contact1);	
	}
}
