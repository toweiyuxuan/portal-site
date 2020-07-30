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
		
		<link rel="stylesheet" href="${path}/css/index.css" media="all">
		<link rel="stylesheet" href="${path}/css/pic/css/style.css" media="all">
		
		<script type="text/javascript" src="${path}/res/wyx/js/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="${path}/res/wyx/js/jquery.form.js"></script>
	</head>
	<body>
		<div class="x-body layui-card">
			<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
				<div class="layui-tab-content">
					<div class="layui-tab-item layui-show">
						<div class="clearfix">
							<button type="button" class="layui-btn" id="image" onclick="uploadfile()">
						  		<i class="layui-icon">&#xe67c;</i>上传图片
							</button>
							<button type="button" class="layui-btn" id="finish">选择完成</button>
							<button class="select">&nbsp;</button>
							<button class="layui-btn send" data-counter="0">&#10004;</button>
						</div>
						<div class="layui-card-body layui-table-body layui-table-main">
							<ul>
								<s:iterator value="#page.list" var="uploadfilesImage">
									<li title="<s:property value='#uploadfilesImage.url'/>" lang="<s:property value='#uploadfilesImage.name'/>">
										<img width="200px" height="150px" src="<s:property value='#uploadfilesImage.url'/>">
									</li>
								</s:iterator>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div id="pageto" style="margin-left:20px;"></div>
		
		<form id="updateForm" action="${path}/uploadfiles_input" method="post" enctype="multipart/form-data">
			<input type="file" style="display: none" name="upload" id="upload" onchange="uplad()">
		</form>
		
		<script type="text/javascript" src="${path}/css/pic/js/index.js"></script>
		<script src="${path}/lib/layui/layui.js" charset="utf-8"></script>
		<script>
			layui.use(["element", "layer", "form","upload"], function() {});
		</script>
		<script>
		 function uploadfile(){document.getElementById("upload").click();}
		 function uplad()
		 {
			 layer.msg("图片上传中", {icon: 16});
			 $("#updateForm").ajaxSubmit({
				async:false,
				success:function(result)
				{
					if(result == "success")
					{
						layer.closeAll("loading");
						layer.msg("上传成功！", {icon: 1,time: 1000});
						setTimeout(function ()
						{
							window.location.reload();
						}, 1000);
					}
				}
			});
		 }
		</script>
		<script>
		layui.use(["laypage", "layer"], function()
		{
			var laypage = layui.laypage,layer = layui.layer;
			//完整功能
			laypage.render
			({
		    	elem: "pageto",
		    	count: ${page.totalCount},
		    	layout: ["count", "prev", "page", "next", "refresh", "skip"],
		    	curr:${page.pageNo},
		    	jump: function(obj,first)
		    	{
		      		console.log(obj);
		      		//首次不执行
		      	    if(!first)
		      	    {
		      	    	window.location.href="${path}/uploadfiles_list?uploadfilesQuery.pageNo="+obj.curr;
		      	    }
		    	}
		  	});
		});
		</script>
</body>
</html>
