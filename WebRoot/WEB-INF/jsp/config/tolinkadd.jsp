<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta charset="utf-8">
		<title>友情链接添加</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">

		<link rel="stylesheet" href="${path}/css/font.css">
		<link rel="stylesheet" href="${path}/css/index.css">
		
		<script type="text/javascript" src="${path}/lib/layui/layui.js" charset="utf-8"></script>
		<script type="text/javascript" src="${path}/js/index.js"></script>
	</head>
	<body>

		<div class="layui-card">
			<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

				<div class="layui-tab-content">
					<div class="layui-tab-item layui-show">
						<form class="layui-form layui-form-pane" action="">
							<div class="layui-form-item">
								<label class="layui-form-label">
									<span class="x-red">*</span>链接名称
								</label>
								<div class="layui-input-block">
									<input type="text" name="name" autocomplete="off" placeholder="请输入" class="layui-input" lay-verify="required">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">
									<span class="x-red">*</span>链接地址
								</label>
								<div class="layui-input-block">
									<input type="text" name="url" autocomplete="off" placeholder="请输入" class="layui-input" lay-verify="required">
								</div>
							</div>
							<div class="layui-form-item">
								<button class="layui-btn" lay-submit="" lay-filter="*">
									保存
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<script>
			layui.use("form", function() {
				var form = layui.form;
				//监听提交
				form.on("submit(*)", function(data) {
					console.log(data);
					$.ajax({
						type: "post",
						url: "${path}/configs_linkadd",
						data: {"link.name":data.field.name,"link.url":data.field.url},
						async: false,
						dataType: "text",
						success: function(result) {
							if (result == "success") 
							{
								layer.msg("添加成功！", {icon: 1,time: 1000});
								setTimeout(function() {
									window.parent.location.reload();
									var index = parent.layer.getFrameIndex(window.name);
									parent.layer.close(index);
								}, 1000);
							} 
							else 
							{
								layer.msg("添加失败!", {icon: 5,time: 2000});
							}
						}
					});
					return false;
				});
			})
		</script>
	</body>
</html>
