package cn.wyx.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import cn.wyx.model.Business;
import cn.wyx.model.Documents;
import cn.wyx.query.DocumentsQuery;
import cn.wyx.service.DocumentsService;
import cn.wyx.utils.Page;

import com.opensymphony.xwork2.ActionContext;

public class DocumentsAction extends BaseAction 
{	
	private Documents documents;
	private DocumentsService documentsService;
	private DocumentsQuery documentsQuery = new DocumentsQuery();
	
	public String documents_list()
	{		
		ActionContext context = ActionContext.getContext();		
		Integer pageNo = documentsQuery.getPageNo();
		if(pageNo == null )
		{
			documentsQuery.setPageNo(1);
		}		
		Page page = documentsService.queryObjByCondition(documentsQuery, exclude);		
		context.put("page", page);		
		return SUCCESS;
	}

	public String documents_input()
	{
		return SUCCESS;
	}
	
	public void documents_add() throws IOException
	{
		documents.setStatus(0);
		documents.setCreatedAt(new Timestamp(System.currentTimeMillis()));
		documentsService.save(documents);
		response.getWriter().write("success");
	}
	
	//禁用
	public void documents_forbid() throws IOException
	{
		Documents documents1 = documentsService.getObj(documents.getId());
		documents1.setStatus(0);
		documentsService.update(documents1);
		response.getWriter().write("success");
	}
	//启用
	public void documents_start() throws IOException
	{
		Documents documents1 = documentsService.getObj(documents.getId());
		documents1.setStatus(1);
		documentsService.update(documents1);
		response.getWriter().write("success");
	}
	//删除
	public void documents_del() throws IOException
	{
		documentsService.delete(documents.getId());
		response.getWriter().write("success");
	}
	
	//编辑
	public String documents_edit()
	{
		ActionContext context = ActionContext.getContext();		
		Documents documents1 = documentsService.getObj(documents.getId());
		context.put("documents", documents1);		
		return SUCCESS;
	}
	public void documents_upd() throws IOException
	{
		Documents documents1 = documentsService.getObj(documents.getId());
		documents1.setTitle(documents.getTitle());
		documents1.setName(documents.getName());
		documents1.setCover(documents.getCover());
		documents1.setAddress(documents.getAddress());
		documents1.setIntroduction(documents.getIntroduction());
		documentsService.update(documents1);
		response.getWriter().write("success");
	}
	
	//============================================setter and getter=====================================================
	public DocumentsService getDocumentsService() 
	{
		return documentsService;
	}
	public void setDocumentsService(DocumentsService documentsService) 
	{
		this.documentsService = documentsService;
	}

	public Documents getDocuments() {
		return documents;
	}

	public void setDocuments(Documents documents) {
		this.documents = documents;
	}

	public DocumentsQuery getDocumentsQuery() {
		return documentsQuery;
	}

	public void setDocumentsQuery(DocumentsQuery documentsQuery) {
		this.documentsQuery = documentsQuery;
	}	
	
}