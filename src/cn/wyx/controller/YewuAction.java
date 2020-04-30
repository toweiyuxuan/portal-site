package cn.wyx.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import cn.wyx.dao.YewuDao;
import cn.wyx.model.Yewu;

import cn.wyx.service.YewuService;

import com.opensymphony.xwork2.ActionContext;

public class YewuAction extends BaseAction 
{	
	private Yewu yewu;
	private YewuDao yewuDao;
	private YewuService yewuService;
	
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
	
	public String yewu_list()
	{		
		ActionContext context = ActionContext.getContext();	
		yewu = yewuService.getObj(1);
		context.put("yewu", yewu);		
		return SUCCESS;
	}
	
	public String yewu_edit()
	{		
		ActionContext context = ActionContext.getContext();	
		yewu = yewuService.getObj(yewu.getYId());
		context.put("yewu", yewu);		
		return SUCCESS;
	}
	
	//编辑（修改）
	public void ajax_y_update() throws IOException
	{		
		Yewu yewu1 = yewuDao.getObj(yewu.getYId());
		
		// 获得servletContext
		ServletContext sc = ServletActionContext.getServletContext();	
		
		//第一张
		if(upload1 != null)
		{			
			String suffix = upload1FileName.substring(upload1FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/ypupload/" + fileName + suffix;
			
			yewu.setYPhoto1(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload1, new File(realPath));
			
		}
		else
		{
			yewu.setYPhoto1(yewu1.getYPhoto1());
		}
		
		//第二张
		if(upload2 != null)
		{			
			String suffix = upload2FileName.substring(upload2FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/ypupload/" + fileName + suffix;
			
			yewu.setYPhoto2(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload2, new File(realPath));
			
		}
		else
		{
			yewu.setYPhoto2(yewu1.getYPhoto2());
		}
		
		//第三张
		if(upload3 != null)
		{			
			String suffix = upload3FileName.substring(upload3FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/ypupload/" + fileName + suffix;
			
			yewu.setYPhoto3(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload3, new File(realPath));
			
		}
		else
		{
			yewu.setYPhoto3(yewu1.getYPhoto3());
		}
				
		yewuService.updateYewu(yewu);
		
		response.getWriter().write("success");
	}

	
	//============================================setter and getter=====================================================
	
	public Yewu getYewu()
	{
		return yewu;
	}

	public void setYewu(Yewu yewu)
	{
		this.yewu = yewu;
	}

	public YewuDao getYewuDao()
	{
		return yewuDao;
	}

	public void setYewuDao(YewuDao yewuDao)
	{
		this.yewuDao = yewuDao;
	}

	public YewuService getYewuService()
	{
		return yewuService;
	}

	public void setYewuService(YewuService yewuService)
	{
		this.yewuService = yewuService;
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
