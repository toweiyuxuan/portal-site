<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
		<title>网络公司-动态详情页</title>
		<link rel="stylesheet" href="${path}/res/layui/css/layui.css">
		<link rel="stylesheet" href="${path}/res/static/css/index.css">
	</head>
	<body>
		<!-- nav部分 -->
		<%@ include file="head.jsp"%>
		
		<!-- main部分 -->
		<div class="main-newsdate">
			<div class="layui-container">
				<p class="news"><a href="javascript:history.back(-1);">公司案例</a> > 案例详情</p>
				<h1><s:property value='#examples.name'/></h1>
				<p class="pushtime">发布时间：<span><s:property value='#examples.createdAt'/></span></p>
				<p class="introTop"><s:property value='#examples.introduction'/></p>
				<div>
					<s:iterator value="#pictureList" var="picture">
						<img src="<s:property value='#picture.url'/>">
					</s:iterator>
				</div>
				<p class="introBott"><s:property value='#examples.description'/></p>
			</div>
		</div>
		
		<!-- footer部分 -->
		<%@ include file="foot.jsp"%>
		
		<%-- <script src="../res/layui/layui.js"></script> --%>
		
	</body>
</html>
