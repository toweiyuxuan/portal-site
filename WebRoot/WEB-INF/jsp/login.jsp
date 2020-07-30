<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html class="x-admin-sm">
	<head>
		<meta charset="UTF-8">
		<title>后台管理登录</title>
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		
		<link rel="stylesheet" href="${path}/css/font.css">
		<link rel="stylesheet" href="${path}/css/login.css">
		<link rel="stylesheet" href="${path}/css/index.css">
		
		<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
		<script src="${path}/lib/layui/layui.js" charset="utf-8"></script>

	</head>
	<body class="login-bg">
		<div class="login layui-anim layui-anim-up">
			<div class="message">后台管理登录</div>
			<div id="darkbannerwrap"></div>
			<form method="post" class="layui-form">
				<input name="username" placeholder="用户名" type="text" lay-verify="required" class="layui-input">
				<hr class="hr15">
				<input name="password" lay-verify="required" placeholder="密码" type="password" class="layui-input">
				<hr class="hr15">
				<input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
				<hr class="hr20">
			</form>
		</div>

		<script>
			if(top.location!=self.location)
			{	
				top.location.href = self.location.href;
			} 
			$(function() 
			{
				layui.use("form", function() 
				{
					var form = layui.form;
					//监听提交
					form.on("submit(login)", function(data) {
						console.log(JSON.stringify(data.field));
						$.ajax
						({
							url:"${path}/admins_login",
							data:{"admins.username":data.field.username,"admins.password":data.field.password},
							type:"post",
							dataType:"text",
							success:function(result)
							{
								if(result=="success")
								{
									location.href = "${path}/admins_index";
								}
								else
								{
									layer.msg("用户名或者密码不正确");
								}
							}
						});
						return false;
					});
				});
			});
		</script>
		<!-- 底部结束 -->
	</body>
</html>