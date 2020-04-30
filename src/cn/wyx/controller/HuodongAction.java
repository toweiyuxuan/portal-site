package cn.wyx.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import cn.wyx.dao.AnliDao;
import cn.wyx.dao.HuodongDao;
import cn.wyx.model.Anli;
import cn.wyx.model.Huodong;
import cn.wyx.query.AnliQuery;
import cn.wyx.query.HuodongQuery;
import cn.wyx.service.AnliService;
import cn.wyx.service.HuodongService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class HuodongAction extends BaseAction 
{	
	private Huodong huodong;
	private HuodongDao huodongDao;
	private HuodongService huodongService;
	
	private HuodongQuery query = new HuodongQuery();
	
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
	
	public String huodong_list()
	{	
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = query.getPageNo();
		if(pageNo == null )
		{
			query.setPageNo(1);
		}
		Page page = huodongService.queryObjByCondition(query, exclude);		
		context.put("page", page);	
		return SUCCESS;
	}
	
	public String huodong_edit()
	{		
		ActionContext context = ActionContext.getContext();	
		huodong = huodongService.getObj(huodong.getHId());
		context.put("huodong", huodong);		
		return SUCCESS;
	}
	
	public String huodong_input()
	{	
		return SUCCESS;
	}
	
	//删
	public void huodong_detele() throws IOException
	{
		//删除对应发布信息
		huodongService.delete(huodong.getHId());		
		response.getWriter().write("success");
	}
	
	//编辑（修改）
	public void ajax_h_update() throws IOException
	{		
		Huodong huodong1 = huodongDao.getObj(huodong.getHId());
		
		// 获得servletContext
		ServletContext sc = ServletActionContext.getServletContext();	
		
		//第一张
		if(upload1 != null)
		{			
			String suffix = upload1FileName.substring(upload1FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/hpupload/" + fileName + suffix;
			
			huodong.setHPhoto1(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload1, new File(realPath));
			
		}
		else
		{
			huodong.setHPhoto1(huodong1.getHPhoto1());
		}
		
		//第二张
		if(upload2 != null)
		{			
			String suffix = upload2FileName.substring(upload2FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/hpupload/" + fileName + suffix;
			
			huodong.setHPhoto2(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload2, new File(realPath));
			
		}
		else
		{
			huodong.setHPhoto2(huodong1.getHPhoto2());
		}
		
		//第三张
		if(upload3 != null)
		{			
			String suffix = upload3FileName.substring(upload3FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/hpupload/" + fileName + suffix;
			
			huodong.setHPhoto3(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload3, new File(realPath));
			
		}
		else
		{
			huodong.setHPhoto3(huodong1.getHPhoto3());
		}
				
		huodongService.updateHuodong(huodong);
		
		response.getWriter().write("success");
	}
	
	
	//编辑（修改）
	public void ajax_h_add() throws IOException
	{		
		
		// 获得servletContext
		ServletContext sc = ServletActionContext.getServletContext();	
		
		//第一张
		if(upload1 != null)
		{			
			String suffix = upload1FileName.substring(upload1FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/hpupload/" + fileName + suffix;
			
			huodong.setHPhoto1(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload1, new File(realPath));
			
		}
		
		
		//第二张
		if(upload2 != null)
		{			
			String suffix = upload2FileName.substring(upload2FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/hpupload/" + fileName + suffix;
			
			huodong.setHPhoto2(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload2, new File(realPath));
			
		}
		
		
		//第三张
		if(upload3 != null)
		{			
			String suffix = upload3FileName.substring(upload3FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/hpupload/" + fileName + suffix;
			
			huodong.setHPhoto3(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload3, new File(realPath));
			
		}
			
		huodong.setHDate(new Date());
		huodongService.save(huodong);
		
		response.getWriter().write("success");
	}
	
	//前台
	public String huodong_details()
	{	
		ActionContext context = ActionContext.getContext();		
		Huodong huodong1 = huodongDao.getObj(huodong.getHId());
		context.put("huodong", huodong1);	
		return SUCCESS;
	}
	
	//============================================setter and getter=====================================================

	public Huodong getHuodong()
	{
		return huodong;
	}

	public void setHuodong(Huodong huodong)
	{
		this.huodong = huodong;
	}

	public HuodongDao getHuodongDao()
	{
		return huodongDao;
	}

	public void setHuodongDao(HuodongDao huodongDao)
	{
		this.huodongDao = huodongDao;
	}

	public HuodongService getHuodongService()
	{
		return huodongService;
	}

	public void setHuodongService(HuodongService huodongService)
	{
		this.huodongService = huodongService;
	}

	public HuodongQuery getQuery()
	{
		return query;
	}

	public void setQuery(HuodongQuery query)
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
