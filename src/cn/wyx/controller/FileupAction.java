package cn.wyx.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.struts2.ServletActionContext;

import cn.wyx.dao.AnliDao;
import cn.wyx.dao.FileupDao;
import cn.wyx.dao.HuodongDao;
import cn.wyx.model.Anli;
import cn.wyx.model.Fileup;
import cn.wyx.model.Huodong;
import cn.wyx.query.AnliQuery;
import cn.wyx.query.FileupQuery;
import cn.wyx.query.HuodongQuery;
import cn.wyx.service.AnliService;
import cn.wyx.service.FileupService;
import cn.wyx.service.HuodongService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class FileupAction extends BaseAction 
{	
	private Fileup fileup;
	private FileupDao fileupDao;
	private FileupService fileupService;
	
	private FileupQuery query = new FileupQuery();
	
	//用于下载
	private InputStream inputStream;
	private int fileLength;
	private String fileName;
	
	//用于上传
	private File upload1;
	private String upload1FileName;
	private String upload1ContentType;
	
	public String fileup_list()
	{	
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = query.getPageNo();
		if(pageNo == null )
		{
			query.setPageNo(1);
		}
		Page page = fileupService.queryObjByCondition(query, exclude);		
		context.put("page", page);	
		return SUCCESS;
	}
	
	public String fileup_edit()
	{		
		ActionContext context = ActionContext.getContext();	
		fileup = fileupService.getObj(fileup.getFId());
		context.put("fileup", fileup);		
		return SUCCESS;
	}
	
	public String fileup_input()
	{	
		return SUCCESS;
	}
	
	//删
	public void fileup_detele() throws IOException
	{
		//删除对应发布信息
		fileupService.delete(fileup.getFId());		
		response.getWriter().write("success");
	}
	
	//编辑（修改）
	public void ajax_f_update() throws IOException
	{		
		Fileup fileup1 = fileupDao.getObj(fileup.getFId());
		
		// 获得servletContext
		ServletContext sc = ServletActionContext.getServletContext();	
		
		//第一个
		if(upload1 != null)
		{			
			String suffix = upload1FileName.substring(upload1FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/fpupload/" + fileName + suffix;
			
			fileup.setFFile(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload1, new File(realPath));
			
		}
		else
		{
			fileup.setFFile(fileup1.getFFile());
		}
				
		fileupService.updateFileup(fileup);
		
		response.getWriter().write("success");
	}
	
	
	//编辑（修改）
	public void ajax_f_add() throws IOException
	{		
		
		// 获得servletContext
		ServletContext sc = ServletActionContext.getServletContext();	
		
		//第一个
		if(upload1 != null)
		{			
			String suffix = upload1FileName.substring(upload1FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/fpupload/" + fileName + suffix;
			
			fileup.setFFile(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload1, new File(realPath));
			
		}
		fileup.setFDate(new Date());			
		fileupService.save(fileup);
		
		response.getWriter().write("success");
	}


	public String filedown() throws Exception
	{
		ServletContext sc = ServletActionContext.getServletContext();
		
		Fileup fileup1 = fileupDao.getObj(fileup.getFId());
		
		String realPath = sc.getRealPath(fileup1.getFFile());
		// 实例化输入流
		inputStream = new FileInputStream(realPath);
		// 给fileName赋值
		fileName = FilenameUtils.getName(realPath);
		// 对文件名做编码
		fileName = URLEncoder.encode(fileName, "UTF-8");
		// 给文件大小赋值
		fileLength = inputStream.available();
		
		return SUCCESS;
	}

	
	//============================================setter and getter=====================================================

	public Fileup getFileup()
	{
		return fileup;
	}

	public void setFileup(Fileup fileup)
	{
		this.fileup = fileup;
	}

	public FileupDao getFileupDao()
	{
		return fileupDao;
	}

	public void setFileupDao(FileupDao fileupDao)
	{
		this.fileupDao = fileupDao;
	}

	public FileupService getFileupService()
	{
		return fileupService;
	}

	public void setFileupService(FileupService fileupService)
	{
		this.fileupService = fileupService;
	}

	public FileupQuery getQuery()
	{
		return query;
	}

	public void setQuery(FileupQuery query)
	{
		this.query = query;
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

	public InputStream getInputStream()
	{
		return inputStream;
	}

	public void setInputStream(InputStream inputStream)
	{
		this.inputStream = inputStream;
	}

	public int getFileLength()
	{
		return fileLength;
	}

	public void setFileLength(int fileLength)
	{
		this.fileLength = fileLength;
	}

	public String getFileName()
	{
		return fileName;
	}

	public void setFileName(String fileName)
	{
		this.fileName = fileName;
	}
	
}
