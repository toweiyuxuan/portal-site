<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
		<title>昆明隆达企业管理咨询有限公司-业务</title>
	</head>
	<body>
		<!-- nav部分 -->
		<%@ include file="head.jsp"%>
		
		<!-- banner部分 -->
		<div class="banner product">
			<div class="title">
				<p>政策文件</p>
				<p class="en">Policy documents</p>
			</div>
		</div>
		<!-- main部分 -->
		<div class="main product">
			<div class="layui-container">
				<s:iterator value="#documentsList" var="documents">
					<div class="content layui-row">
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md7 layui-col-lg6 content-img">
							<img src="<s:property value="#documents.cover"/>">
						</div>
						<div class="layui-col-xs12 layui-col-sm6 layui-col-md5 layui-col-lg6 right">
							<p class="label"><s:property value="#documents.name"/></p>
							<p class="detail"><s:property value="#documents.introduction"/></p>
							<div>
								<a href="${path}/front_documentsDetail?documents.id=<s:property value="#documents.id"/>">预览 </a>&nbsp;&nbsp;
								<a href="${path}/front_documentsDetail?documents.id=<s:property value="#documents.id"/>">下载 </a>&nbsp;&nbsp;
							</div>
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
		<!-- footer部分 -->
		<%@ include file="foot.jsp"%>
	</body>
</html>
