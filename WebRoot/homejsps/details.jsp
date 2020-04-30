<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
<title>details</title>

</head>
<body>

<!-- start top_bg -->
<div class="top_bg">
<div class="wrap">
	<div class="top">
		<h2><s:property value="#anli.ATitle"/></h2>
	</div>
</div>
</div>
<!-- start main -->
<div class="wrap">
	<div class="main">
		<div class="details">
			<div class="det_pic">
				  <img src="/LDZX<s:property value="#anli.APhoto1"/>" alt="" style="height: 250px;width: 369px;"/>
				  <img src="/LDZX<s:property value="#anli.APhoto2"/>" alt="" style="height: 250px;width: 369px;"/>
				  <img src="/LDZX<s:property value="#anli.APhoto3"/>" alt="" style="height: 250px;width: 369px;"/>
			</div>
			<div class="det_text">
				<p class="para"><s:property value="#anli.AP1"/></p><br>
				<p class="para"><s:property value="#anli.AP2"/></p><br>
				<p class="para"><s:property value="#anli.AP3"/></p><br>
				<p class="para"><s:property value="#anli.AP4"/></p><br>
				<p class="para"><s:property value="#anli.AP5"/></p>
			</div>
			
			<div class="clear"></div>
		</div>
	</div>
</div>
<%@ include file="foot.jsp" %>
</body>
</html>