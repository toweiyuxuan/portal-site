package cn.wyx.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import cn.wyx.configclass.About;
import cn.wyx.configclass.Carousel;
import cn.wyx.configclass.Link;
import cn.wyx.configclass.Site;
import cn.wyx.model.Configs;
import cn.wyx.query.ConfigsQuery;
import cn.wyx.service.ConfigsService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class ConfigsAction extends BaseAction 
{	
	private Link link;
	private Site site;
	private About about;
	
	private ConfigsService configsService;
	private ConfigsQuery query = new ConfigsQuery();
	
	//==============================================================友情链接开始==============================================================================
	//添加跳转
	public String configs_tolinkadd()
	{
		return SUCCESS;
	}
	//添加
	public void configs_linkadd() throws IOException
	{
		Configs configs = configsService.getConfigsByKey("link");
		if(configs == null)
		{
			link.setNumber(System.currentTimeMillis()+"");
			
			List<Link> linkList = new ArrayList<Link>();
			linkList.add(link);
			
			//把poster对象转为Jsonn对象
			JSONArray jsonObject = JSONArray.fromObject(linkList);
			String jsonStr = jsonObject.toString();
			
			//创建一个新的配置对象
			Configs configs1 = new  Configs();
			configs1.setValue(jsonStr);
			configs1.setKey("link");
			
			//保存
			configs1.setCreatedAt(new Timestamp(System.currentTimeMillis()));
			configsService.save(configs1);
			
			response.getWriter().write("success");
		}
		else
		{
			//拿到原来的json字符串
			String jsonString = configs.getValue();
			//转为json数组
			JSONArray jsonArr = JSONArray.fromObject(jsonString);
			//再转为poster的对象数组
			ArrayList<Link> linkList = (ArrayList<Link>) JSONArray.toCollection(jsonArr, Link.class);
	        
			link.setNumber(System.currentTimeMillis()+"");
			linkList.add(link);
			
			//把poster对象转为Jsonn对象
			JSONArray jsonObject = JSONArray.fromObject(linkList);
			String jsonStr = jsonObject.toString();
			
			//更新
			configs.setValue(jsonStr);
			configs.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
			configsService.update(configs);
			
			response.getWriter().write("success");
		}	
	}
	//删除
	public void configs_linkdel() throws IOException
	{
		Configs configs = configsService.getConfigsByKey("link");
		//拿到原来的json字符串
		String jsonString = configs.getValue();
		//转为json数组
		JSONArray jsonArr = JSONArray.fromObject(jsonString);
		//再转为poster的对象数组
		@SuppressWarnings("unchecked")
		ArrayList<Link> linkList = (ArrayList<Link>) JSONArray.toCollection(jsonArr, Link.class);
		
		for(int i=0; i<linkList.size();i++)
		{
			if(linkList.get(i).getNumber().equals(link.getNumber()))
			{
				linkList.remove(i);
			}
		}
		
		//把poster对象转为Jsonn对象
		JSONArray jsonObject = JSONArray.fromObject(linkList);
		String jsonStr = jsonObject.toString();
		
		//更新
		configs.setValue(jsonStr);
		configsService.update(configs);
		response.getWriter().write("success");
	}
	//==============================================================友情链接结束==============================================================================
	
	
	
	//==============================================================站点设置开始==============================================================================
	//跳转
	public String configs_site()
	{
		ActionContext context = ActionContext.getContext();
		
		Configs configs = configsService.getConfigsByKey("site");
		if(configs != null)
		{
			String jsonString = configs.getValue();
			
			JSONObject jsonObj = JSONObject.fromObject(jsonString);
			
			Site site1 = (Site)JSONObject.toBean(jsonObj, Site.class);
			
			JSONObject site2 = JSONObject.fromObject(site1);
			
			context.put("site", site2);
		}
		else
		{
			Site site1 = new Site();
			JSONObject site2 = JSONObject.fromObject(site1);
			context.put("site", site2);
		}
		
		//查友情链接
		Configs configs1 = configsService.getConfigsByKey("link");
		if(configs1 != null)
		{
			String jsonString = configs1.getValue();
			JSONArray jsonArr = JSONArray.fromObject(jsonString);
			ArrayList<Link> linkList = (ArrayList<Link>) JSONArray.toCollection(jsonArr, Link.class);
			context.put("linkList", linkList);
		}
				
		return SUCCESS;
	}
	@SuppressWarnings("unchecked")
	public void configs_siteupd() throws IOException
	{		
		Configs configs = configsService.getConfigsByKey("site");
		if(configs == null)
		{
			//把对象转为Jsonn对象
			JSONObject jsonObject = JSONObject.fromObject(site);
			String jsonStr = jsonObject.toString();
			
			//创建一个新的配置对象
			Configs configs1 = new  Configs();
			configs1.setValue(jsonStr);
			configs1.setKey("site");
			
			//保存
			configs1.setCreatedAt(new Timestamp(System.currentTimeMillis()));
			configsService.save(configs1);
			
			response.getWriter().write("success");
		}
		else
		{
			//拿到原来的json字符串
			String jsonString = configs.getValue();
			//转为json数组
			JSONObject jsonObj= JSONObject.fromObject(jsonString);
			//转为订单超时对象
			Site site1 =(Site)JSONObject.toBean(jsonObj, Site.class);
	        //把新的设置上
			site1.setCasenumber(site.getCasenumber());
			site1.setCopyright(site.getCopyright());
			site1.setEmail(site.getEmail());
			site1.setQrcode(site.getQrcode());
			site1.setTel(site.getTel());
			site1.setSitePath(site.getSitePath());
			
			//把对象转为Json对象
			JSONObject jsonObject = JSONObject.fromObject(site1);
			String jsonStr = jsonObject.toString();
			
			//更新
			configs.setValue(jsonStr);
			configs.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
			configsService.update(configs);
			
			response.getWriter().write("updata");
		}		
	}	
	//==============================================================站点设置结束==============================================================================
	
	
	
	//==============================================================关于开始==============================================================================
	//跳转
	public String configs_about()
	{
		Configs configs = configsService.getConfigsByKey("about");
		if(configs != null)
		{
			String jsonString = configs.getValue();
			
			JSONObject jsonObj = JSONObject.fromObject(jsonString);
			
			About about1 = (About)JSONObject.toBean(jsonObj, About.class);
			
			ActionContext context = ActionContext.getContext();
			
			JSONObject about2 = JSONObject.fromObject(about1);
			
			context.put("about", about2);
		}
		else
		{
			ActionContext context = ActionContext.getContext();
			About about1 = new About();
			JSONObject about2 = JSONObject.fromObject(about1);
			context.put("about", about2);
		}
		return SUCCESS;
	}
	@SuppressWarnings("unchecked")
	public void configs_aboutupd() throws IOException
	{		
		Configs configs = configsService.getConfigsByKey("about");
		if(configs == null)
		{
			//把对象转为Jsonn对象
			JSONObject jsonObject = JSONObject.fromObject(about);
			String jsonStr = jsonObject.toString();
			
			//创建一个新的配置对象
			Configs configs1 = new  Configs();
			configs1.setValue(jsonStr);
			configs1.setKey("about");
			
			//保存
			configs1.setCreatedAt(new Timestamp(System.currentTimeMillis()));
			configsService.save(configs1);
			
			response.getWriter().write("success");
		}
		else
		{
			//拿到原来的json字符串
			String jsonString = configs.getValue();
			//转为json数组
			JSONObject jsonObj= JSONObject.fromObject(jsonString);
			//转为对象
			About about1 = (About)JSONObject.toBean(jsonObj, About.class);
	        //把新的设置上
			about1.setIntroduce(about.getIntroduce());
			about1.setAddress(about.getAddress());
			about1.setEmail(about.getEmail());
			about1.setQrcode(about.getQrcode());
			about1.setPhone(about.getPhone());
			
			//把对象转为Json对象
			JSONObject jsonObject = JSONObject.fromObject(about1);
			String jsonStr = jsonObject.toString();
			
			//更新
			configs.setValue(jsonStr);
			configs.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
			configsService.update(configs);
			
			response.getWriter().write("updata");
		}		
	}	
	//==============================================================关于结束==============================================================================
	
	
	
	
	
	
	
	
	
	
	
	
	//============================================setter and getter=====================================================
	public ConfigsQuery getQuery() 
	{
		return query;
	}
	public void setQuery(ConfigsQuery query)
	{
		this.query = query;
	}
	public ConfigsService getConfigsService() 
	{
		return configsService;
	}
	public void setConfigsService(ConfigsService configsService) 
	{
		this.configsService = configsService;
	}
	public Link getLink() {
		return link;
	}
	public void setLink(Link link) {
		this.link = link;
	}
	public Site getSite() {
		return site;
	}
	public void setSite(Site site) {
		this.site = site;
	}

	public About getAbout() {
		return about;
	}

	public void setAbout(About about) {
		this.about = about;
	}
	
}