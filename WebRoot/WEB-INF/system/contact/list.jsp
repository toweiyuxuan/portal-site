<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
<input type="hidden" id="id" name="contact.CId" value="<s:property value="#session.user.UId"/>"/>
<button type="button" class="btn btn-success" id="update" style="margin: 10px auto 10px 30px">修改</button>
<table class="table table-bordered table-hover definewidth m10">
   <tr height="50px">
       <td class="tableleft" width="100px">电话</td>
       <td colspan="5">
       	<s:property value="#contact.CPhone"/>   
       </td>
   </tr>
   <tr height="50px">
       <td class="tableleft">手机</td>
       <td colspan="5">
       	<s:property value="#contact.CTel"/>   
       </td>
   </tr>
   <tr height="50px">
       <td class="tableleft">其他说明</td>
       <td colspan="5">
       	<s:property value="#contact.COther"/>   
       </td>
   </tr>
   <tr height="200px">
       <td class="tableleft" width="100px">微信公众号</td>
       <td width="300px">
       	<s:if test="contact.CWeixin != null">
       	<img src="/LDZX<s:property value="#contact.CWeixin"/>" style="width: 300px;height: 200px;">
       	</s:if>
       </td>
       <td></td>
   </tr>
</table>
</body>
<script>
$("#update").click(function()
{
	var id = $("#id").val();
	window.location.href="${path}/contact_edit?contact.CId="+id;
});
</script>
</html>