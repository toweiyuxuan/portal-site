<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
		<title>昆明隆达企业管理咨询有限公司-案例</title>
	</head>
	<body>
		<!-- nav部分 -->
		<%@ include file="head.jsp"%>
		
		<!-- banner部分 -->
		<div class="banner case">
			<div class="title">
				<p>成功案例</p>
				<p class="en">Successful Case</p>
			</div>
		</div>
		<!-- main部分 -->
		<div class="main-case">
			<div class="layui-container">
				<div class="layui-row">
					<s:iterator value="#examplesList" var="examples">
						<div class="layui-inline content">
							<div class="layui-inline case-img">
								<a href="${path}/front_examplesDetail?examples.id=<s:property value="#examples.id"/>">
									<img src="<s:property value="#examples.cover"/>">
								</a>
							</div>
							<p class="lable"><s:property value="#examples.name"/></p>
							<p><s:property value="#examples.introduction"/></p>
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</s:iterator>
				</div>
				<div id="casePage"></div>
			</div>
		</div>
		<!-- footer部分 -->
		<%@ include file="foot.jsp"%>
	</body>
</html>
 