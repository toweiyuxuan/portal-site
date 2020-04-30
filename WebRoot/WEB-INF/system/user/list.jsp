<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="queryForm" class="form-inline definewidth m20" action="" method="">    
	<table class="table table-bordered table-hover definewidth m10" style="table-layout:fixed;">
	    <thead>
	    <tr>
	    	<th width="100">管理员账号</th>
	        <th width="260">管理员密码</th>
	        <th width="80">操作</th>
	    </tr>
	    </thead>
	    <s:iterator value="#page.list" var="user">
	    <tr>
	    	<td><s:property value="#user.UName"/></td>
          	<td><s:property value="#user.UPassword"/></td>
          	<td>
	          	<a href="${path}/user_edit">修改密码</a> &nbsp; 
          	</td>
	    </tr>
	    </s:iterator>	
	</table>
</form>
</body>
<script>

$("#addnew").click(function()
{
	window.location.href="${path}/user_input";
});

</script>
</html>