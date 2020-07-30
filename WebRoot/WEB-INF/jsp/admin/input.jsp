<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html class="x-admin-sm">

	<head>
		<meta charset="UTF-8">
		<title>添加管理员</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
		<link rel="stylesheet" href="${path}/css/font.css">
		<link rel="stylesheet" href="${path}/css/index.css">
		<script type="text/javascript" src="${path}/lib/layui/layui.js" charset="utf-8"></script>
		<script type="text/javascript" src="${path}/js/index.js"></script>
		<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
	</head>
	<body>
		<div class="layui-fluid">
			<div class="layui-row">
				<form class="layui-form">
					<div class="layui-form-item">
						<label for="username" class="layui-form-label">
							<span class="x-red">*</span>登录名
						</label>
						<div class="layui-input-inline">
							<input type="text" id="username" name="username" required="" lay-verify="username" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-mid layui-word-aux">
							<span class="x-red">*</span>将会成为您唯一的登入名
						</div>
					</div>
					<div class="layui-form-item">
						<label for="L_pass" class="layui-form-label">
							<span class="x-red">*</span>密码
						</label>
						<div class="layui-input-inline">
							<input type="password" id="L_pass" name="pass" required="" lay-verify="pass" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-mid layui-word-aux">
							6到16个字符
						</div>
					</div>
					<div class="layui-form-item">
						<label for="L_repass" class="layui-form-label">
							<span class="x-red">*</span>确认密码
						</label>
						<div class="layui-input-inline">
							<input type="password" id="L_repass" name="repass" required="" lay-verify="repass" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label for="L_repass" class="layui-form-label">
						</label>
						<button class="layui-btn" lay-filter="add" lay-submit="">
							提交
						</button>
					</div>
				</form>
			</div>
		</div>
		<script>
			layui.use(["form", "layer"],
				function() {
					$ = layui.jquery;
					var form = layui.form,layer = layui.layer;

					//自定义验证规则
					form.verify({
						username:[/^[a-zA-Z]{6,12}$/, "用户名必须6-12位字母"],
						pass: [/^[a-zA-Z0-9]{6,16}$/, "密码必须6-16位数字或字母或其组合"],
						repass: function(value) {
							if ($("#L_pass").val() != $("#L_repass").val()) {
								return "两次密码不一致";
							}
						}
					});

					//监听提交
					form.on("submit(add)",
					function(data) {
						console.log(data);
						$.ajax
						({
							url:"${path}/admins_add",
							data:{"admins.username":data.field.username,"admins.password":data.field.pass},
							type:"post",
							dataType:"text",
							success:function(result)
							{
								if (result == "success") 
								{
									layer.msg("添加成功！", {icon: 1,time: 1000});
									setTimeout(function() {
										window.parent.location.reload();
										var index = parent.layer.getFrameIndex(window.name);
										parent.layer.close(index);
									}, 1000);
								} 
								else if(result == "have")
								{
									layer.msg("添加失败，用户名已存在！", {icon: 5,time: 2000});
								}
								else 
								{
									layer.msg("添加失败!", {icon: 5,time: 2000});
								}
							}
						});
						return false;
					});
				});
		</script>
	</body>
</html>
