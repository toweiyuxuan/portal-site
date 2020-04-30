<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>后台管理系统</title>
<!-- css样式文件 -->
<link href="${path}/system/assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
<link href="${path}/system/assets/css/bui-min.css" rel="stylesheet" type="text/css" />
<link href="${path}/system/assets/css/main-min.css" rel="stylesheet" type="text/css" />

<!-- js脚本文件 -->
<script type="text/javascript" src="${path}/system/assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="${path}/system/assets/js/bui-min.js"></script>
<script type="text/javascript" src="${path}/system/assets/js/common/main-min.js"></script>
<script type="text/javascript" src="${path}/system/assets/js/config-min.js"></script>
</head>
<body>
	<div class="header" style="height: 70px">
		<div class="dl-title">
			<img src="${path}/system/assets/img/top.png">
		</div>
		<div class="dl-log">
			<a href="${path}/ld_index" title="">[前台页面]</a>
			欢迎您，<span class="dl-log-user"><s:property value="#session.user.UName"/></span> 
			<a href="${path}/ajax_u_logout" title="退出系统" class="dl-log-quit">[退出]</a>
		</div>
	</div>
	<div class="content">
		<div class="dl-main-nav">
			<div class="dl-inform">
				<div class="dl-inform-title">
					<s class="dl-inform-icon dl-up"></s>
				</div>
			</div>
		</div>
		<ul id="J_NavContent" class="dl-tab-conten"></ul>
	</div>
</body>
<script>


BUI.use("common/main",function()
{
	var config = 
	[
		{
			id:"1",homePage :"1",
			menu:
			[
		      {
				text:"系统管理",
				items:
				[
					{
						id:"1",
		      		  	text:"管理员",href:"${path}/user_list"
		     		}
				]
			  },
		      {
					text:"图文编辑",
					items:
					[
						{
							id:"2",
			      		  	text:"公司简介",href:"${path}/about_list"
			     		},
			     		{
			     			id:"3",
			     			text:"业务简介",href:"${path}/yewu_list"
			     		},
			     		{
			     			id:"4",
			     			text:"成功案例",href:"${path}/anli_list"
			     		},
			     		
			     		{
			     			id:"5",
			     			text:"公司活动",href:"${path}/huodong_list"
			     		},
			     		{
			     			id:"6",
			     			text:"联系方式",href:"${path}/contact_list"
			     		},
					]
				},
			  	{
					text:"文件管理",
					items:
					[
						{
							id:"7",
			      		  	text:"政策文件",href:"${path}/fileup_list"
			     		}
					]
				}
			]
		}
	];    
    new PageUtil.MainPage
    ({
		modulesConfig : config
    });
  });
</script>
</html>