<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>	
<input type="hidden" id="id" name="yewu.YId" value="<s:property value="#session.user.UId"/>"/>
<button type="button" class="btn btn-success" id="update" style="margin: 10px auto 10px 30px">修改</button>
<table class="table table-bordered table-hover definewidth m10">
   <tr height="50px">
       <td class="tableleft" width="100px">标题</td>
       <td colspan="5">
       	<s:property value="#yewu.YTitle"/>   
       </td>
   </tr>
   <tr height="50px">
       <td class="tableleft">段落一</td>
       <td colspan="5">
       	<s:property value="#yewu.YP1"/>   
       </td>
   </tr>
   <tr height="50px">
       <td class="tableleft">段落二</td>
       <td colspan="5">
       	<s:property value="#yewu.YP2"/>        
       </td>
   </tr>
   <tr height="50px">
       <td class="tableleft">段落三</td>
       <td colspan="5">
       	<s:property value="#yewu.YP3"/>            
       </td>
   </tr>
   <tr height="50px">
       <td class="tableleft">段落四</td>
       <td colspan="5">
       	<s:property value="#yewu.YP4"/>            
       </td>
   </tr>
   <tr height="50px">
       <td class="tableleft">段落五</td>
       <td colspan="5">
       	<s:property value="#yewu.YP5"/>            
       </td>
   </tr>
   <tr height="200px">
       <td class="tableleft" width="100px">图片</td>
       <td width="300px">
       	<s:if test="yewu.YPhoto1 != null">
       	<img src="/LDZX<s:property value="#yewu.YPhoto1"/>" style="width: 300px;height: 200px;">
       	</s:if>
       </td>
       <td width="300px">
       	<s:if test="yewu.YPhoto2 != null">
       	<img src="/LDZX<s:property value="#yewu.YPhoto2"/>"  style="width: 300px;height: 200px;"/>
       	</s:if>
       </td>
       <td width="300px">
       	<s:if test="yewu.YPhoto3 != null">
       	<img src="/LDZX<s:property value="#yewu.YPhoto3"/>"  style="width: 300px;height: 200px;"/>
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
	window.location.href="${path}/yewu_edit?yewu.YId="+id;
});
</script>
</html>