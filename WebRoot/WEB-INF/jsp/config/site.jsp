<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta charset="utf-8">
		<title>
			后台管理系统
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
		<div class="x-nav">
			<span class="layui-breadcrumb">
				<a><cite>首页</cite></a>
				<a><cite>系统管理</cite></a>
				<a><cite>基本设置</cite></a>
			</span>
			<a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
				<i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
			</a>
		</div>
		<div class="x-body layui-card">
			<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
				<ul class="layui-tab-title">
					<li class="layui-this">友情链接</li>
					<li class="">网站设置</li>
				</ul>
				<div class="layui-tab-content">
					<div class="layui-tab-item layui-show">
						<div class="layui-fluid">
							<div class="layui-row layui-col-space15">
								<div class="layui-col-md12">
									<div class="layui-card">
										<div class="layui-card-header">
											<button class="layui-btn" onclick="xadmin.open('添加用户','${path}/configs_tolinkadd',800,250)"><i class="layui-icon"></i>添加</button>
										</div>
										<div class="layui-card-body layui-table-body layui-table-main">
											<table class="layui-table layui-form">
												<thead>
													<tr>
														<th style="text-align: center;">编号</th>
														<th style="text-align: center;">链接名</th>
														<th style="text-align: center;">url</th>
														<th style="text-align: center;">操作</th>
													</tr>
												</thead>
												<tbody>
												<s:iterator value="#linkList" var="link">
													<tr>
														<td align="center"><s:property value="#link.number"/></td>
														<td align="center"><s:property value="#link.name"/></td>
														<td align="center"><a href="<s:property value='#link.url'/>" target="blank"><font color="skyblue"><s:property value="#link.url"/></font></a></td>
														<td class="td-manage" align="center">
															<a title="删除" href="javascript:;" onclick="link_del(this,<s:property value="#link.number"/>)" style="text-decoration:none">
																<i class="layui-icon">&#xe640;</i>
															</a>
														</td>
													</tr>
												</s:iterator>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="layui-tab-item">
						<form class="layui-form layui-form-pane" action="">
							<div class="layui-form-item">
								<label class="layui-form-label">
									<span class='x-red'>*</span>根目录
								</label>
								<div class="layui-input-block">
									<input id="sitePath" type="text" name="sitePath" autocomplete="off" placeholder="http://xxx" class="layui-input" lay-verify="required">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">
									<span class='x-red'>*</span>联系电话
								</label>
								<div class="layui-input-block">
									<input id="tel" type="text" name="tel" autocomplete="off" placeholder="0871-xxxxxxxx" class="layui-input" lay-verify="required">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">
									<span class='x-red'>*</span>邮箱
								</label>
								<div class="layui-input-block">
									<input id="email" type="text" name="email" autocomplete="off" placeholder="xxx@.xxx" class="layui-input" lay-verify="required">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">
									<span class='x-red'>*</span>底部版权
								</label>
								<div class="layui-input-block">
									<input id="copyright" type="text" name="copyright" autocomplete="off" placeholder="&copy; 2020 隆达" class="layui-input" lay-verify="required">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">
									<span class='x-red'>*</span>备案号
								</label>
								<div class="layui-input-block">
									<input id="casenumber" type="text" name="casenumber" autocomplete="off" placeholder="ICP备xxxxxxx号" class="layui-input" lay-verify="required">
								</div>
							</div>
							<div class="layui-form-item watermark_images">
			                    <label class="layui-form-label"><span class='x-red'>*</span>底部图片</label>
			                    <div class="layui-input-inline">
			                        <input id="qrcode" name="qrcode" type="text" class="layui-input" lay-verify="required" style="width:600px">
			                    </div>
			                    <button type="button" class="layui-btn" id="image" onclick="xadmin.open('上传面板','${path}/uploadfiles_list',1000,600)" style="margin-left:410px">
								  	选择图片
								</button> 
								<font color="gray">温馨提示：只能选择一张图片，多选默认选择第一张</font>
			                </div><br/>
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
		//拿到子窗口中传回的数据
		function getChildrenData(data)
		{
			console.log("从子页面传递回的数据");
			console.log(data);
			$("#qrcode").val(data[0].url); 
			setTimeout(function() {
				var index = parent.layer.getFrameIndex(window.name);
				parent.layer.close(index);
			}, 1000);
		}
		
		var site = ${site};	
		console.log(site);
		$("#sitePath").val(site.sitePath);
		$("#qrcode").val(site.qrcode);
		$("#tel").val(site.tel);
		$("#email").val(site.email);
		$("#copyright").val(site.copyright);
		$("#casenumber").val(site.casenumber); 
		
		layui.use("form", function() {
			var form = layui.form;
			//监听提交
			form.on("submit(*)", function(data) {
				console.log(data);
				$.ajax({
					type: "post",
					url: "${path}/configs_siteupd",
					data: {"site.copyright":data.field.copyright,"site.email":data.field.email,"site.tel":data.field.tel,"site.qrcode":data.field.qrcode,"site.casenumber":data.field.casenumber,"site.sitePath":data.field.sitePath},
					async: false,
					dataType: "text",
					success: function(result) {
						console.log(result)
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
		});
		
		/*友情链接删除*/
		function link_del(obj,number) 
		{
			layer.confirm("确认要删除吗？", {icon: 3,title: "提示信息"}, function(index) {
				$.ajax
				({
				    url: "${path}/configs_linkdel",
				    type: "post", 
				    async: false,
		    		dataType:"text",
					data:{"link.number":number},
				    success: function (result) 
				    {
				    	if(result == "success")
				    	{
				    		$(obj).parents("tr").remove();
				    		layer.msg("已删除!",{icon:1,time:1000});
				    	}
				    	else
				    	{
				    		layer.msg("操作失败！",{icon:2,time:1000});
				    	}
				 	}
				});
			});
		}
		</script>
	</body>
</html>
