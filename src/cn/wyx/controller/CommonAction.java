package cn.wyx.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.apache.poi.ss.usermodel.Picture;

import com.opensymphony.xwork2.ActionContext;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import cn.wyx.configclass.About;
import cn.wyx.configclass.Carousel;
import cn.wyx.configclass.Link;
import cn.wyx.configclass.Site;
import cn.wyx.model.Activitys;
import cn.wyx.model.Business;
import cn.wyx.model.Examples;
import cn.wyx.model.Configs;
import cn.wyx.model.Departments;
import cn.wyx.model.Documents;
import cn.wyx.model.Uploadfiles;
import cn.wyx.query.ActivitysQuery;
import cn.wyx.query.BusinessQuery;
import cn.wyx.query.ExamplesQuery;
import cn.wyx.query.DepartmentsQuery;
import cn.wyx.query.DocumentsQuery;
import cn.wyx.service.ActivitysService;
import cn.wyx.service.BusinessService;
import cn.wyx.service.ExamplesService;
import cn.wyx.service.ConfigsService;
import cn.wyx.service.DepartmentsService;
import cn.wyx.service.DocumentsService;

public class CommonAction extends BaseAction 
{
	private ConfigsService configsService;
	
	private Departments departments;
	private DepartmentsService departmentsService;
	private DepartmentsQuery departmentsQuery = new DepartmentsQuery();
	
	private Business business;
	private BusinessService businessService;
	private BusinessQuery businessQuery = new BusinessQuery();
	
	
	private Activitys activitys;
	private ActivitysService activitysService;
	private ActivitysQuery activitysQuery = new ActivitysQuery();
	
	private Examples examples;
	private ExamplesService examplesService;
	private ExamplesQuery examplesQuery = new ExamplesQuery();
	
	private Documents documents;
	private DocumentsService documentsService;
	private DocumentsQuery documentsQuery = new DocumentsQuery();
	
	//首页
	@SuppressWarnings("unchecked")
	public String front_index()
	{	
		ActionContext context = ActionContext.getContext();
		
		//查轮播图
		Configs configs1 = configsService.getConfigsByKey("carousel");
		if(configs1 != null)
		{
			String jsonString = configs1.getValue();
			JSONArray jsonArr = JSONArray.fromObject(jsonString);
			ArrayList<Carousel> carouselList = (ArrayList<Carousel>) JSONArray.toCollection(jsonArr, Carousel.class);
			context.put("carouselList", carouselList);
		}
		
		//查部门
		departmentsQuery.setStatus(1);
		List<Departments> departmentsList = departmentsService.queryObjByConditionNoPage(departmentsQuery, exclude);
		context.put("departmentsList", departmentsList);
		
		//查业务
		businessQuery.setStatus(1);
		List<Business> businessList = businessService.queryObjByConditionNoPage(businessQuery, exclude);
		context.put("businessList", businessList);
		
		front_foot();
		return SUCCESS;
	}
		
	public String front_about()
	{	
		ActionContext context = ActionContext.getContext();
		//查关于
		Configs configs1 = configsService.getConfigsByKey("about");
		if(configs1 != null)
		{
			String jsonString = configs1.getValue();
			JSONObject jsonObj = JSONObject.fromObject(jsonString);
			About about = (About)JSONObject.toBean(jsonObj, About.class);
			context.put("about", about);
		}
				
		front_foot();
		return SUCCESS;
	}
	
	public String front_examples()
	{	
		ActionContext context = ActionContext.getContext();
		
		examplesQuery.setStatus(1);
		List<Examples> examplesList = examplesService.queryObjByConditionNoPage(examplesQuery, exclude);
		context.put("examplesList", examplesList);
		
		front_foot();
		return SUCCESS;
	}
	public String front_activitys()
	{	
		ActionContext context = ActionContext.getContext();
		
		activitysQuery.setStatus(1);
		List<Activitys> activitysList = activitysService.queryObjByConditionNoPage(activitysQuery, exclude);
		context.put("activitysList", activitysList);
		
		front_foot();
		return SUCCESS;
	}
	public String front_documents()
	{	
		ActionContext context = ActionContext.getContext();
		
		documentsQuery.setStatus(1);
		List<Documents> documentsList = documentsService.queryObjByConditionNoPage(documentsQuery, exclude);
		context.put("documentsList", documentsList);
		
		front_foot();
		return SUCCESS;
	}
	
	public String front_departmentsDetail()
	{
		ActionContext context = ActionContext.getContext();		
		Departments departments1 = departmentsService.getObj(departments.getId());
		context.put("departments", departments1);	
		
		String jsonString = departments1.getPicture();
		JSONArray pictureList = JSONArray.fromObject(jsonString);
		context.put("pictureList", pictureList);
		
		front_foot();
		return SUCCESS;
	}
	
	public String front_businessDetail()
	{
		ActionContext context = ActionContext.getContext();		
		Business business1 = businessService.getObj(business.getId());
		context.put("business", business1);	
		
		String jsonString = business1.getPicture();
		JSONArray pictureList = JSONArray.fromObject(jsonString);
		context.put("pictureList", pictureList);
		
		front_foot();
		return SUCCESS;
	}
	
	public String front_examplesDetail()
	{
		ActionContext context = ActionContext.getContext();		
		Examples examples1 = examplesService.getObj(examples.getId());
		context.put("examples", examples1);	
		
		String jsonString = examples1.getPicture();
		JSONArray pictureList = JSONArray.fromObject(jsonString);
		context.put("pictureList", pictureList);
		
		front_foot();
		return SUCCESS;
	}
	
	public String front_activitysDetail()
	{
		ActionContext context = ActionContext.getContext();		
		Activitys activitys1 = activitysService.getObj(activitys.getId());
		context.put("activitys", activitys1);	
		
		String jsonString = activitys1.getPicture();
		JSONArray pictureList = JSONArray.fromObject(jsonString);
		context.put("pictureList", pictureList);
		
		front_foot();
		return SUCCESS;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public void front_foot()
	{
		ActionContext context = ActionContext.getContext();
		//查友情链接
		Configs configs1 = configsService.getConfigsByKey("link");
		if(configs1 != null)
		{
			String jsonString = configs1.getValue();
			JSONArray jsonArr = JSONArray.fromObject(jsonString);
			ArrayList<Link> linkList = (ArrayList<Link>) JSONArray.toCollection(jsonArr, Link.class);
			context.put("linkList", linkList);
		}
		
		//查网站配置
		Configs configs2 = configsService.getConfigsByKey("site");
		if(configs2 != null)
		{
			String jsonString = configs2.getValue();
			JSONObject jsonObj = JSONObject.fromObject(jsonString);
			Site site = (Site)JSONObject.toBean(jsonObj, Site.class);
			context.put("site", site);
		}
	}
	//============================================setter and getter=====================================================


	public ConfigsService getConfigsService() {
		return configsService;
	}


	public void setConfigsService(ConfigsService configsService) {
		this.configsService = configsService;
	}


	public Departments getDepartments() {
		return departments;
	}


	public void setDepartments(Departments departments) {
		this.departments = departments;
	}


	public DepartmentsService getDepartmentsService() {
		return departmentsService;
	}


	public void setDepartmentsService(DepartmentsService departmentsService) {
		this.departmentsService = departmentsService;
	}


	public DepartmentsQuery getDepartmentsQuery() {
		return departmentsQuery;
	}


	public void setDepartmentsQuery(DepartmentsQuery departmentsQuery) {
		this.departmentsQuery = departmentsQuery;
	}


	public Business getBusiness() {
		return business;
	}


	public void setBusiness(Business business) {
		this.business = business;
	}


	public BusinessService getBusinessService() {
		return businessService;
	}


	public void setBusinessService(BusinessService businessService) {
		this.businessService = businessService;
	}


	public BusinessQuery getBusinessQuery() {
		return businessQuery;
	}


	public void setBusinessQuery(BusinessQuery businessQuery) {
		this.businessQuery = businessQuery;
	}


	public Activitys getActivitys() {
		return activitys;
	}


	public void setActivitys(Activitys activitys) {
		this.activitys = activitys;
	}


	public ActivitysService getActivitysService() {
		return activitysService;
	}


	public void setActivitysService(ActivitysService activitysService) {
		this.activitysService = activitysService;
	}


	public ActivitysQuery getActivitysQuery() {
		return activitysQuery;
	}


	public void setActivitysQuery(ActivitysQuery activitysQuery) {
		this.activitysQuery = activitysQuery;
	}


	public Examples getExamples() {
		return examples;
	}


	public void setExamples(Examples examples) {
		this.examples = examples;
	}


	public ExamplesService getExamplesService() {
		return examplesService;
	}


	public void setExamplesService(ExamplesService examplesService) {
		this.examplesService = examplesService;
	}


	public ExamplesQuery getExamplesQuery() {
		return examplesQuery;
	}


	public void setExamplesQuery(ExamplesQuery examplesQuery) {
		this.examplesQuery = examplesQuery;
	}


	public Documents getDocuments() {
		return documents;
	}


	public void setDocuments(Documents documents) {
		this.documents = documents;
	}


	public DocumentsService getDocumentsService() {
		return documentsService;
	}


	public void setDocumentsService(DocumentsService documentsService) {
		this.documentsService = documentsService;
	}


	public DocumentsQuery getDocumentsQuery() {
		return documentsQuery;
	}


	public void setDocumentsQuery(DocumentsQuery documentsQuery) {
		this.documentsQuery = documentsQuery;
	}
}