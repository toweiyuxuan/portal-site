<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>file</title>
</head>
<body>
<form id="queryForm" class="form-inline definewidth m20" action="${path}/fileup_list" method="post">	 
<input type="hidden" id="id" name="fileup.FId" value="<s:property value="#session.user.UId"/>"/>
<button type="button" class="btn btn-success" id="addnew">新增文件</button>
<table class="table table-bordered table-hover definewidth m10" style="table-layout:fixed;">
   	<thead>
	    <tr>
	    	<th width="60px">发布时间</th>
	        <th width="60px">标题</th>
	        <th width="60px">简介</th>
	        <th width="60px">操作</th>
	    </tr>
    </thead>
    <s:iterator value="#page.list" var="fileup">
   	<tr>
   	  <td >
       	<s:property value="#fileup.FDate"/>   
       </td>
       <td  title="<s:property value="#fileup.FTitle"/>" style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis;cursor:pointer;">
       	<s:property value="#fileup.FTitle"/>   
       </td>
       <td title="<s:property value="#fileup.FAword"/>" style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis;cursor:pointer;">
       	<s:property value="#fileup.FAword"/>   
       </td>
       <td>
			<a href="${path}/filedown?fileup.FId=<s:property value="#fileup.FId"/>" class="text-muted">下载</a>&nbsp;
  			<a href="/LDZX<s:property value="#fileup.FFile"/>" target="blank">预览</a>&nbsp;
   			<a href="" onclick="del(<s:property value="#fileup.FId"/>)">删除</a>&nbsp;
   			<a href="${path}/fileup_edit?fileup.FId=<s:property value="#fileup.FId"/>">编辑</a>&nbsp;  
       </td>
   	</tr>
   	</s:iterator>
</table><br><br>
<%@ include file="../tools/paging.jsp"%>
</form>
</body>
<script>

$("#addnew").click(function()
{
	window.location.href="${path}/fileup_input";
});
function del(id)
{
	if(confirm("确定删除该文件吗？"))
	{
		 $.ajax
		({
		    url: "${path}/fileup_detele?fileup.FId="+id,
		    type: "post",
		    success: function (result) 
		    {
		    	if(result=="success")
				{
		    		window.location.reload();
		    		window.location.href = "${path}/fileup_list";
				}
				else
				{
					alert("删除失败！");
				}
		 	}
		}); 
	}
}
</script>
</html>