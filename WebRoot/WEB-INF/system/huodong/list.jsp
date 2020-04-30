<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>activity</title>
<style>
a {
	position: relative;
}
a img{
	display: none;
	position:absolute;
	left: 50%;
	margin-left: -60px;
	margin-top: -2px;
}
a:hover img{
	display: block;
}
</style>
</head>
<body>
<form id="queryForm" class="form-inline definewidth m20" action="${path}/huodong_list" method="post">	 
<input type="hidden" id="id" name="huodong.HId" value="<s:property value="#session.user.UId"/>"/>
<button type="button" class="btn btn-success" id="addnew">新增活动</button>
<table class="table table-bordered table-hover definewidth m10" style="table-layout:fixed;">
   	<thead>
	    <tr>
	    	<th width="60px">发布时间</th>
	        <th width="60px">标题</th>
	        <th width="60px">简介</th>
	        <th width="60px">段一</th>
	        <th width="60px">段二</th>
	        <th width="60px">段三</th>
	        <th width="60px">段四</th>
	        <th width="60px">段五</th>
	        <th width="60px">图一</th>
	        <th width="60px">图二</th>
	        <th width="60px">图三</th>
	        <th width="60px">操作</th>
	    </tr>
    </thead>
    <s:iterator value="#page.list" var="huodong">
   	<tr>
   	   <td >
       	<s:property value="#huodong.HDate"/>   
       </td>
       <td  title="<s:property value="#huodong.HTitle"/>" style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis;cursor:pointer;">
       	<s:property value="#huodong.HTitle"/>   
       </td>
       <td title="<s:property value="#huodong.HAword"/>" style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis;cursor:pointer;">
       	<s:property value="#huodong.HAword"/>   
       </td>
       <td title="<s:property value="#huodong.HP1"/>" style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis;cursor:pointer;">
       	<s:property value="#huodong.HP1"/>   
       </td>
       <td title="<s:property value="#huodong.HP2"/>" style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis;cursor:pointer;">
       	<s:property value="#huodong.HP2"/>   
       </td>
       <td title="<s:property value="#huodong.HP3"/>" style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis;cursor:pointer;">
       	<s:property value="#huodong.HP3"/>   
       </td>
       <td title="<s:property value="#huodong.HP4"/>" style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis;cursor:pointer;">
       	<s:property value="#huodong.HP4"/>   
       </td>
       <td title="<s:property value="#huodong.HP5"/>" style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis;cursor:pointer;">
       	<s:property value="#huodong.HP5"/>   
       </td>
       <td>
       		<s:if test="#huodong.HPhoto1!=null">
	       		<a href="javascript:void(0);" class="text-muted">
	         		<span>显示图片</span><br/>
	   				<img style="z-index:99" src="/LDZX<s:property value="#huodong.HPhoto1"/>" width="200px"/>
	  			</a>  
  			</s:if>
       </td>
       <td>
       		<s:if test="#huodong.HPhoto2!=null">
	       		<a href="javascript:void(0);" class="text-muted">
	         		<span>显示图片</span><br/>
	   				<img style="z-index:99" src="/LDZX<s:property value="#huodong.HPhoto2"/>" width="200px"/>
	  			</a> 
  			</s:if> 
       </td>
       <td>
       		<s:if test="#huodong.HPhoto3!=null">
	       		<a href="javascript:void(0);" class="text-muted">
	         		<span>显示图片</span><br/>
	   				<img style="z-index:99" src="/LDZX<s:property value="#huodong.HPhoto3"/>" width="200px"/>
	  			</a> 
  			</s:if> 
       </td>
       <td>
   		<a href="" onclick="del(<s:property value="#huodong.HId"/>)">删除</a> &nbsp;
   		<a href="${path}/huodong_edit?huodong.HId=<s:property value="#huodong.HId"/>">编辑</a> &nbsp;  
       </td>
   	</tr>
   	</s:iterator>
</table><br><br>
<%@ include file="../tools/paging.jsp" %>
</form>
</body>
<script>
$("#addnew").click(function()
{
	window.location.href="${path}/huodong_input";
});
function del(id)
{
	if(confirm("确定删除该活动吗？"))
	{
		 $.ajax
		({
		    url: "${path}/huodong_detele?huodong.HId="+id,
		    type: "post",
		    success: function (result) 
		    {
		    	if(result=="success")
				{
		    		window.location.reload();
		    		window.location.href = "${path}/huodong_list";
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