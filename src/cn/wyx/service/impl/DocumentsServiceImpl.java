package cn.wyx.service.impl;

import cn.wyx.dao.DocumentsDao;
import cn.wyx.model.Documents;
import cn.wyx.query.DocumentsQuery;
import cn.wyx.service.DocumentsService;

public class DocumentsServiceImpl extends BaseServiceImpl<Documents, DocumentsQuery> implements DocumentsService 
{	
	private DocumentsDao documentsDao;
	
	public void setDocumentsDao(DocumentsDao documentsDao) 
	{
		this.documentsDao = documentsDao;
		this.baseDao = documentsDao;
	}
}
