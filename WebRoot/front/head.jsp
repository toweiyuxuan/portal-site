<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="${path}/res/layui/css/layui.css">
		<link rel="stylesheet" href="${path}/res/static/css/index.css">
	</head>
	<body>
	<div class="nav index">
		<div class="layui-container">
			<div class="nav-logo" style="padding:5px">
				<a href="${path}/front_index">
					<img height="70px" src="${path}/res/wyx/img/logo.png" alt="昆明隆达企业管理咨询有限公司">
				</a>
			</div>
			<div class="nav-list">
				<button>
					<span></span><span></span><span></span>
				</button>
				<ul class="layui-nav" lay-filter="">
					<li class="layui-nav-item"><a href="${path}/front_index">首页</a></li>
					<li class="layui-nav-item"><a href="${path}/front_activitys">公司活动</a></li>
					<li class="layui-nav-item"><a href="${path}/front_examples">成功案例</a></li>
					<li class="layui-nav-item"><a href="${path}/front_documents">政策文件</a></li>
					<li class="layui-nav-item"><a href="${path}/front_about">关于我们</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>