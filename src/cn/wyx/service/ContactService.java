package cn.wyx.service;

import cn.wyx.model.About;
import cn.wyx.model.Contact;
import cn.wyx.query.ContactQuery;

public interface ContactService extends BaseService<Contact, ContactQuery> 
{
	public void updateContact(Contact contact);
}
