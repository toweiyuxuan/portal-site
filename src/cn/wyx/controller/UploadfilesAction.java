package cn.wyx.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import cn.wyx.configclass.Site;
import cn.wyx.model.Business;
import cn.wyx.model.Configs;
import cn.wyx.model.Uploadfiles;
import cn.wyx.query.UploadfilesQuery;
import cn.wyx.service.BusinessService;
import cn.wyx.service.ConfigsService;
import cn.wyx.service.UploadfilesService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class UploadfilesAction extends BaseAction 
{	
	private Uploadfiles uploadfiles;
	private UploadfilesService uploadfilesService;
	private UploadfilesQuery uploadfilesQuery = new UploadfilesQuery();
	
	private ConfigsService configsService;
	
	//接收上传文件
	private File upload;
	//文件名的接收 File属性名FileName:固定写法
	private String uploadFileName;
	private String uploadContentType;
	
	private String loaction;
	private Long loactionId;
	
	private BusinessService businessService;
	
	public String uploadfiles_list()
	{		
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = uploadfilesQuery.getPageNo();
		if(pageNo == null )
		{
			uploadfilesQuery.setPageNo(1);
		}		
		uploadfilesQuery.setType(1);
		Page page = uploadfilesService.queryObjByCondition(uploadfilesQuery, exclude);		
		context.put("page", page);
		return SUCCESS;
	}
	
	public String uploadfiles_filelist()
	{		
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = uploadfilesQuery.getPageNo();
		if(pageNo == null )
		{
			uploadfilesQuery.setPageNo(1);
		}		
		uploadfilesQuery.setType(2);
		Page page = uploadfilesService.queryObjByCondition(uploadfilesQuery, exclude);		
		context.put("page", page);
		return SUCCESS;
	}

	public void uploadfiles_input() throws IOException
	{
		Uploadfiles uploadfiles = new Uploadfiles();
		
		// 获得servletContext
		ServletContext sc = ServletActionContext.getServletContext();
		
		String suffix = uploadFileName.substring(uploadFileName.lastIndexOf("."));
			
		String fileName = UUID.randomUUID().toString();
			
		String basepath = "/upload/" + fileName + suffix;
		
		if(suffix.equals(".jpg") || suffix.equals(".png") || suffix.equals(".jpeg"))
		{
			uploadfiles.setType(1);
		}
		else
		{
			uploadfiles.setType(2);
		}
		
		uploadfiles.setName(uploadFileName);
		uploadfiles.setStatus(1);
		uploadfiles.setUrl(getSitePath()+"LDZX"+basepath);
		uploadfiles.setCreatedAt(new Timestamp(System.currentTimeMillis()));
		uploadfilesService.save(uploadfiles);
		
		String realPath = sc.getRealPath("/");
			
		//路径追加
		realPath = realPath + basepath;
		
		// 定义输入输出流
		FileUtils.copyFile(upload, new File(realPath));	
		
		response.getWriter().write("success");
	}
	
	//删除
	public void uploadfiles_del() throws IOException
	{
		uploadfilesService.delete(uploadfiles.getId());
		response.getWriter().write("success");
	}
	
	
	
	
	
	
	public String getSitePath()
	{
		String sitepath = "";
		Configs configs = configsService.getConfigsByKey("site");
		if(configs != null)
		{
			//拿到原来的json字符串
			String jsonString = configs.getValue();
			//转为json数组
			JSONObject jsonObj= JSONObject.fromObject(jsonString);
			//转为对象
			Site site1 =(Site)JSONObject.toBean(jsonObj, Site.class);
			sitepath = site1.getSitePath();
		}
		return sitepath;
	}
	//============================================setter and getter=====================================================

	public Uploadfiles getUploadfiles() {
		return uploadfiles;
	}

	public void setUploadfiles(Uploadfiles uploadfiles) {
		this.uploadfiles = uploadfiles;
	}

	public UploadfilesService getUploadfilesService() {
		return uploadfilesService;
	}

	public void setUploadfilesService(UploadfilesService uploadfilesService) {
		this.uploadfilesService = uploadfilesService;
	}

	public UploadfilesQuery getUploadfilesQuery() {
		return uploadfilesQuery;
	}

	public void setUploadfilesQuery(UploadfilesQuery uploadfilesQuery) {
		this.uploadfilesQuery = uploadfilesQuery;
	}

	public ConfigsService getConfigsService() {
		return configsService;
	}

	public void setConfigsService(ConfigsService configsService) {
		this.configsService = configsService;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getLoaction() {
		return loaction;
	}

	public void setLoaction(String loaction) {
		this.loaction = loaction;
	}

	public Long getLoactionId() {
		return loactionId;
	}

	public void setLoactionId(Long loactionId) {
		this.loactionId = loactionId;
	}

	public BusinessService getBusinessService() {
		return businessService;
	}

	public void setBusinessService(BusinessService businessService) {
		this.businessService = businessService;
	}
	
}