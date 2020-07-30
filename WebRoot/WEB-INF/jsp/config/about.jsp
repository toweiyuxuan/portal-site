<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta charset="utf-8">
		<title>
			文章类型添加
		</title>
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
		
		<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	</head>
	<body>

		<div class="layui-card">
			<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

				<div class="layui-tab-content">
					<div class="layui-tab-item layui-show">
						<form class="layui-form layui-form-pane" action="">
							<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">
									<span class='x-red'>*</span>公司简介
								</label>
								<div class="layui-input-block">
									<textarea maxlength="1000" id="introduce" placeholder="请输入内容" class="layui-textarea" name="introduce" rows="15" lay-verify="required"></textarea>
								</div>
								<font color="gray">温馨提示：换行请使用 &lt;br/&gt;&nbsp;&nbsp;空格请使用 &#38;nbsp;</font>
							</div><br/>
							<div class="layui-form-item">
								<label class="layui-form-label">
									<span class='x-red'>*</span>联系我们
								</label>
								<div class="layui-input-block">
									<input maxlength="100" id="phone" type="text" name="phone" autocomplete="off" placeholder="请输入" class="layui-input" lay-verify="required">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">
									<span class='x-red'>*</span>邮箱
								</label>
								<div class="layui-input-block">
									<input maxlength="100" id="email" type="text" name="email" autocomplete="off" placeholder="请输入" class="layui-input" lay-verify="required">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">
									<span class='x-red'>*</span>地址
								</label>
								<div class="layui-input-block">
									<input maxlength="100" id="address" type="text" name="address" autocomplete="off" placeholder="请输入" class="layui-input" lay-verify="required">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">
									<span class='x-red'>*</span>公众号
								</label>
								<div class="layui-input-block">
									<input maxlength="100" id="qrcode" type="text" name="qrcode" autocomplete="off" placeholder="请输入" class="layui-input" lay-verify="required">
								</div>
							</div>
							<div class="layui-form-item">
								<button class="layui-btn" lay-submit="" lay-filter="*">
									保存
								</button>
							</div>
						</form>
						<div style="height:100px;"></div>
					</div>
				</div>
			</div>
		</div>

		<script>
		var about = ${about};
		console.log(about);
		$("#qrcode").val(about.qrcode);
		$("#phone").val(about.phone);
		$("#email").val(about.email);
		$("#introduce").val(about.introduce);
		$("#address").val(about.address); 
		
		layui.use("form", function() 
		{
			var form = layui.form;
			//监听提交
			form.on("submit(*)", function(data) 
			{
				console.log(data)
				$.ajax({
					type: "post",
					url: "${path}/configs_aboutupd",
					data: {"about.introduce":data.field.introduce,"about.phone":data.field.phone,"about.email":data.field.email,"about.address":data.field.address,"about.qrcode":data.field.qrcode},
					dataType: "text",
					success: function(result) 
					{
						if(result == "success")
				    	{
							layer.alert("保存成功", {icon: 6,time:1000});
				    	}
				    	else if(result == "updata")
				    	{
				    		layer.msg("更新成功！",{icon:1,time:1000});
				    	}
				    	else
				    	{
				    		layer.msg("提交失败！",{icon:2,time:1000});
				    	}
					}
				});
				return false;
			});

		})
		</script>
	</body>
</html>
