package cn.wyx.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import cn.wyx.dao.AnliDao;
import cn.wyx.model.Anli;
import cn.wyx.query.AnliQuery;
import cn.wyx.service.AnliService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class AnliAction extends BaseAction 
{	
	private Anli anli;
	private AnliDao anliDao;
	private AnliService anliService;
	
	private AnliQuery query = new AnliQuery();
	
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
	
	public String anli_list()
	{	
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = query.getPageNo();
		if(pageNo == null )
		{
			query.setPageNo(1);
		}
		Page page = anliService.queryObjByCondition(query, exclude);		
		context.put("page", page);	
		return SUCCESS;
	}
	
	//前台
	public String lanli_list()
	{	
		ActionContext context = ActionContext.getContext();		
		
		//查询所有案例				
		List<Anli> baselist = anliService.list();
		
		
		List<Anli> list = new ArrayList<Anli>();
		
		// 创建一个大的集合，里面存储查询对象的属性对象和他父类的属性对象
		List<Object> List = new ArrayList<Object>();
		
		
		if(!baselist.isEmpty())
		{
			for(int i=0;i < baselist.size();i++)
			{
				
				list.add(baselist.get(i));
				
				if((i+1)%3==0)
				{
					List.add(list);
					list = new ArrayList<Anli>();
				}
				if((i+1) == baselist.size())
				{
					List.add(list);
				}
	        }
		}
		context.put("List", List);	
		return SUCCESS;
	}
	//前台
	public String anli_details()
	{	
		ActionContext context = ActionContext.getContext();		
		Anli anli1 = anliDao.getObj(anli.getAId());
		context.put("anli", anli1);	
		return SUCCESS;
	}
	
	
	
	
	public String anli_edit()
	{		
		ActionContext context = ActionContext.getContext();	
		anli = anliService.getObj(anli.getAId());
		context.put("anli", anli);		
		return SUCCESS;
	}
	
	public String anli_input()
	{	
		return SUCCESS;
	}
	
	//删
	public void anli_detele() throws IOException
	{
		//删除对应发布信息
		anliService.delete(anli.getAId());		
		response.getWriter().write("success");
	}
	
	//编辑（修改）
	public void ajax_an_update() throws IOException
	{		
		Anli anli1 = anliDao.getObj(anli.getAId());
		
		// 获得servletContext
		ServletContext sc = ServletActionContext.getServletContext();	
		
		//第一张
		if(upload1 != null)
		{			
			String suffix = upload1FileName.substring(upload1FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/aapupload/" + fileName + suffix;
			
			anli.setAPhoto1(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload1, new File(realPath));
			
		}
		else
		{
			anli.setAPhoto1(anli1.getAPhoto1());
		}
		
		//第二张
		if(upload2 != null)
		{			
			String suffix = upload2FileName.substring(upload2FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/aapupload/" + fileName + suffix;
			
			anli.setAPhoto2(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload2, new File(realPath));
			
		}
		else
		{
			anli.setAPhoto2(anli1.getAPhoto2());
		}
		
		//第三张
		if(upload3 != null)
		{			
			String suffix = upload3FileName.substring(upload3FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/aapupload/" + fileName + suffix;
			
			anli.setAPhoto3(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload3, new File(realPath));
			
		}
		else
		{
			anli.setAPhoto3(anli1.getAPhoto3());
		}
				
		anliService.updateAnli(anli);
		
		response.getWriter().write("success");
	}
	
	
	//新增
	public void ajax_an_add() throws IOException
	{		
		
		// 获得servletContext
		ServletContext sc = ServletActionContext.getServletContext();	
		
		//第一张
		if(upload1 != null)
		{			
			String suffix = upload1FileName.substring(upload1FileName.lastIndexOf("."));
			
			String fileName = UUID.randomUUID().toString();
			
			String basepath = "/aapupload/" + fileName + suffix;
			
			anli.setAPhoto1(basepath);
			
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
			
			String basepath = "/aapupload/" + fileName + suffix;
			
			anli.setAPhoto2(basepath);
			
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
			
			String basepath = "/aapupload/" + fileName + suffix;
			
			anli.setAPhoto3(basepath);
			
			String realPath = sc.getRealPath("/");
			
			//路径追加
			realPath = realPath + basepath;
			
			// 定义输入输出流
			FileUtils.copyFile(upload3, new File(realPath));
			
		}
						
		anliService.save(anli);
		
		response.getWriter().write("success");
	}
	
	//============================================setter and getter=====================================================

	public Anli getAnli()
	{
		return anli;
	}

	public void setAnli(Anli anli)
	{
		this.anli = anli;
	}

	public AnliDao getAnliDao()
	{
		return anliDao;
	}

	public void setAnliDao(AnliDao anliDao)
	{
		this.anliDao = anliDao;
	}

	public AnliService getAnliService()
	{
		return anliService;
	}

	public void setAnliService(AnliService anliService)
	{
		this.anliService = anliService;
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

	public AnliQuery getQuery()
	{
		return query;
	}

	public void setQuery(AnliQuery query)
	{
		this.query = query;
	}

}
