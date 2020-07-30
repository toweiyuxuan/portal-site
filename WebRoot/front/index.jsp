<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
		<title>昆明隆达企业管理咨询有限公司-首页</title>
	</head>
	<body>
		<!-- nav部分 -->
		<%@ include file="head.jsp"%>
		
		<!-- banner部分 -->
		<div>8
			<div class="layui-carousel" id="banner">
				<div carousel-item>
					<div>
						<img src="${path}/res/static/img/banner1.jpg">
						<!-- <div class="panel">
							<p>隆德信诚 </p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;达于未来</p>
						</div> -->
					</div>
					<div>
						<img src="${path}/res/static/img/banner2.jpg">
						<!-- <div class="panel">
							<p>隆德信诚 </p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;达于未来</p>
						</div> -->
					</div>
				</div>
			</div>
		</div>
		<!-- main部分 -->
		<div class="main-product">
			<div class="layui-container">
				<p class="title">我们拥有最专业的<span>团队</span></p>
				<div class="layui-row layui-col-space25">
					<s:iterator value="#departmentsList" var="departments">
						<div class="layui-col-sm6 layui-col-md3">
							<div class="content">
								<div><img src="${path}/res/static/img/Big_icon1.png"></div>
								<div>
									<p class="label"><s:property value="#departments.name"/></p>
									<p><s:property value="#departments.introduction"/></p>
								</div>
								<a href="${path}/front_departmentsDetail?departments.id=<s:property value="#departments.id"/>">查看更多 </a>
							</div>
						</div>
					</s:iterator>
				</div>
			</div>
		</div>
		<div class="main-service">
			<div class="layui-container">
				<p class="title">为客户打造完美的<span>专业服务</span></p>
				<div class="layui-row layui-col-space25 layui-col-space80">
					<s:iterator value="#businessList" var="business">
						<div class="layui-col-sm6">
							<div class="content">
								<div class="content-left">
									<a href="${path}/front_businessDetail?business.id=<s:property value="#business.id"/>">
										<img src="<s:property value='#business.cover'/>" width="350px" height="220px">
									</a>
								</div>
								<div class="content-right">
									<p class="label"><s:property value="#business.name"/></p>
									<span></span>
									<p><s:property value="#business.introduction"/></p>
								</div>
							</div>
						</div>
					</s:iterator>
				</div>
				<div class="service-more"><a href="javascript:void(0);">隆德信诚 达于未来</a></div>
			</div>
		</div>
		<!-- footer部分 -->
		<%@ include file="foot.jsp"%>
	</body>
</html>
