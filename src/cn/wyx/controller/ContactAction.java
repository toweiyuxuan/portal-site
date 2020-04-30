package cn.wyx.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import cn.wyx.dao.ContactDao;
import cn.wyx.model.Contact;

import cn.wyx.service.ContactService;

import com.opensymphony.xwork2.ActionContext;

public class ContactAction extends BaseAction 
{	
	private Contact contact;
	private ContactDao contactDao;
	private ContactService contactService;
	
	//用于接收图片
	private File upload1;
	
	//文件名的接收 File属性名FileName:固定写法
	private String upload1FileName;
	
	private String upload1ContentType;
	
	public String contact_list()
	{		
		ActionContext context = ActionContext.getContext();	
		contact = contactService.getObj(1);
		context.put("contact", contact);		
		return SUCCESS;
	}
	
	public String contact_edit()
	{		
		ActionContext context = ActionContext.getContext();	
		contact = contactService.getObj(contact.getCId());
		context.put("contact", contact);		
		return SUCCESS;
	}
	
	//编辑（修改）
	public void ajax_c_update() throws IOException
	{		
		Contact contact1 = contactDao.getObj(contact.getCId());
		
		// 获得servletContext
		ServletContext sc = ServletActionContext.getServletContext();	
		
		//第一张
		if(upload1 != null)
		{			
			String suffix = upload1FileName.substring(upload1FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/cpupload/" + fileName + suffix;
			
			contact.setCWeixin(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload1, new File(realPath));
			
		}
		else
		{
			contact.setCWeixin(contact1.getCWeixin());
		}
		
		contactService.updateContact(contact);
		
		response.getWriter().write("success");
	}
	
	//============================================setter and getter=====================================================

	public Contact getContact()
	{
		return contact;
	}

	public void setContact(Contact contact)
	{
		this.contact = contact;
	}

	public ContactDao getContactDao()
	{
		return contactDao;
	}

	public void setContactDao(ContactDao contactDao)
	{
		this.contactDao = contactDao;
	}

	public ContactService getContactService()
	{
		return contactService;
	}

	public void setContactService(ContactService contactService)
	{
		this.contactService = contactService;
	}

	public File getUpload1()
	{
		return upload1;
	}

	public void setUpload1(File upload1)
	{
		this.upload1 = upload1;
	}

	public String getUpload1FileName()
	{
		return upload1FileName;
	}

	public void setUpload1FileName(String upload1FileName)
	{
		this.upload1FileName = upload1FileName;
	}

	public String getUpload1ContentType()
	{
		return upload1ContentType;
	}

	public void setUpload1ContentType(String upload1ContentType)
	{
		this.upload1ContentType = upload1ContentType;
	}

}
