<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
<title>about</title>
</head>
<body>
<!-- start top_bg -->
<div class="top_bg">
	<div class="wrap">
		<div class="top">
			<h2>公司简介</h2>
		</div>
	</div>
</div>
<!-- start main -->
<div class="wrap">
	<div class="main">
		<div class="about">
		
			<div class="cont-grid">
				<div class="abt-para">
					<span><s:property value="#about.ATitle"/> </span>
					<p class="para"><s:property value="#about.AP1"/></p>
					<p class="para"><s:property value="#about.AP2"/></p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="cont-grid-img img_style">
				<a href="#"><img src="/LDZX<s:property value="#about.APhoto1"/>" alt="" style="height: 200px;width: 400px;"></a>
			</div>
			<div class="cont-grid">
				<div class="abt-para">
					<p class="para"><s:property value="#about.AP3"/></p>
					<p class="para"><s:property value="#about.AP4"/></p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="cont-grid-img img_style">
				<a href="#"><img src="/LDZX<s:property value="#about.APhoto2"/>" alt="" style="height: 200px;width: 400px;"></a>
			</div>
			<div class="cont-grid">
				<div class="abt-para">
					<p class="para"><s:property value="#about.AP5"/></p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="cont-grid-img img_style">
				<a href="#"><img src="/LDZX<s:property value="#about.APhoto3"/>" alt="" style="height: 200px;width: 400px;"></a>
			</div>
			
		</div>
		<div class="clear"></div>
	</div>
</div>
<%@ include file="foot.jsp" %>
</body>
</html>
