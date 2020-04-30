package cn.wyx.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import cn.wyx.dao.AboutDao;
import cn.wyx.model.About;

import cn.wyx.service.AboutService;


import com.opensymphony.xwork2.ActionContext;

public class AboutAction extends BaseAction 
{	
	private About about;
	private AboutDao aboutDao;
	private AboutService aboutService;
	
	//用于接收图片
	private File upload1;
	private File upload2;
	private File upload3;
	
	//文件名的接收 File属性名FileName:固定写法
	private String upload1FileName;
	private String upload2FileName;
	private String upload3FileName;
	
	private String upload1ContentType;
	private String upload2ContentType;
	private String upload3ContentType;
	
	public String about_list()
	{		
		ActionContext context = ActionContext.getContext();	
		about = aboutService.getObj(1);
		context.put("about", about);		
		return SUCCESS;
	}
	
	public String about_edit()
	{		
		ActionContext context = ActionContext.getContext();	
		about = aboutService.getObj(about.getAId());
		context.put("about", about);		
		return SUCCESS;
	}
	
	//编辑（修改）
	public void ajax_a_update() throws IOException
	{		
		About about1 = aboutDao.getObj(about.getAId());
		
		// 获得servletContext
		ServletContext sc = ServletActionContext.getServletContext();	
		
		//第一张
		if(upload1 != null)
		{			
			String suffix = upload1FileName.substring(upload1FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/apupload/" + fileName + suffix;
			
			about.setAPhoto1(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload1, new File(realPath));
			
		}
		else
		{
			about.setAPhoto1(about1.getAPhoto1());
		}
		
		//第二张
		if(upload2 != null)
		{			
			String suffix = upload2FileName.substring(upload2FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/apupload/" + fileName + suffix;
			
			about.setAPhoto2(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload2, new File(realPath));
			
		}
		else
		{
			about.setAPhoto2(about1.getAPhoto2());
		}
		
		//第三张
		if(upload3 != null)
		{			
			String suffix = upload3FileName.substring(upload3FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/apupload/" + fileName + suffix;
			
			about.setAPhoto3(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload3, new File(realPath));
			
		}
		else
		{
			about.setAPhoto3(about1.getAPhoto3());
		}
				
		aboutService.updateAbout(about);
		
		response.getWriter().write("success");
	}
		
	//============================================setter and getter=====================================================
	
	public AboutService getAboutService() 
	{
		return aboutService;
	}
	public void setAboutService(AboutService aboutService) 
	{
		this.aboutService = aboutService;
	}

	public About getAbout()
	{
		return about;
	}

	public void setAbout(About about)
	{
		this.about = about;
	}

	public AboutDao getAboutDao()
	{
		return aboutDao;
	}

	public void setAboutDao(AboutDao aboutDao)
	{
		this.aboutDao = aboutDao;
	}

	public File getUpload1()
	{
		return upload1;
	}

	public void setUpload1(File upload1)
	{
		this.upload1 = upload1;
	}

	public File getUpload2()
	{
		return upload2;
	}

	public void setUpload2(File upload2)
	{
		this.upload2 = upload2;
	}

	public File getUpload3()
	{
		return upload3;
	}

	public void setUpload3(File upload3)
	{
		this.upload3 = upload3;
	}

	public String getUpload1FileName()
	{
		return upload1FileName;
	}

	public void setUpload1FileName(String upload1FileName)
	{
		this.upload1FileName = upload1FileName;
	}

	public String getUpload2FileName()
	{
		return upload2FileName;
	}

	public void setUpload2FileName(String upload2FileName)
	{
		this.upload2FileName = upload2FileName;
	}

	public String getUpload3FileName()
	{
		return upload3FileName;
	}

	public void setUpload3FileName(String upload3FileName)
	{
		this.upload3FileName = upload3FileName;
	}

	public String getUpload1ContentType()
	{
		return upload1ContentType;
	}

	public void setUpload1ContentType(String upload1ContentType)
	{
		this.upload1ContentType = upload1ContentType;
	}

	public String getUpload2ContentType()
	{
		return upload2ContentType;
	}

	public void setUpload2ContentType(String upload2ContentType)
	{
		this.upload2ContentType = upload2ContentType;
	}

	public String getUpload3ContentType()
	{
		return upload3ContentType;
	}

	public void setUpload3ContentType(String upload3ContentType)
	{
		this.upload3ContentType = upload3ContentType;
	}

}
