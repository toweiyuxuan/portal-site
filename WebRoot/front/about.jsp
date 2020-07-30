<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
		<title>昆明隆达企业管理咨询有限公司-关于</title>
	</head>
	<body>
		<!-- nav部分 -->
		<%@ include file="head.jsp"%>
		
		<!-- banner部分 -->
		<div class="banner about">
			<div class="title">
				<p>关于我们</p>
				<p class="en">About Us</p>
			</div>
		</div>
		<!-- main部分 -->
		<div class="main-about">
			<div class="layui-container">
				<div class="layui-row">
					<ul class="aboutab">
						<li class="layui-this">隆德信诚 达于未来</li>
					</ul>
					<div class="tabJob">
						<div class="content">
							<p class="title">公司简介</p>
							<p style="color: #8d8d8d; font-size: 16px; line-height: 30px;"><s:property value='#about.introduce'/></p>
						</div>
						<div class="content">
							<p class="title">联系我们</p>
							<p style="color: #8d8d8d; font-size:15px; line-height:50px;">电话：<s:property value='#about.phone'/></p>
							<p style="color: #8d8d8d; font-size:15px; line-height:50px;">邮箱：<s:property value='#about.email'/></p>
							<p style="color: #8d8d8d; font-size:15px; line-height:50px;">地址：<s:property value='#about.address'/></p><br/>
							<p style="color: #8d8d8d; font-size:20px; line-height:50px;">公众号</p><br/>
							<img width="150px" src="<s:property value='#about.qrcode'/>">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- footer部分 -->
		<%@ include file="foot.jsp"%>
	</body>
</html>
