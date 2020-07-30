<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html class="x-admin-sm">
	<head>
		<meta charset="UTF-8">
		<title>隆达咨询后台管理系统</title>
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		
		
		<link rel="stylesheet" href="${path}/css/font.css">
		<link rel="stylesheet" href="${path}/css/index.css">
		<link rel="stylesheet" href="${path}/css/iconfont.css">
		
		<script type="text/javascript" src="${path}/lib/layui/layui.js" charset="utf-8"></script>
		<script type="text/javascript" src="${path}/js/index.js"></script>
		<style>
			.show_list 
			{
				display: block !important;
			}
			.hide_lits 
			{
				display: none;
			}
		</style>

	</head>
	<body class="index">
		<!-- 顶部开始 -->
		<div class="container">
			<div class="logo">
				<a href="javascript:void(0);">隆达咨询后台管理系统</a>
			</div>
			<div class="left_open">
				<a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
			</div>
			<ul class="layui-nav right" lay-filter="">
				<li class="layui-nav-item">
					<a href="javascript:;"><s:property value="#session.admin.username"/></a>
					<dl class="layui-nav-child">
						<!-- 二级菜单 -->
						<dd><a onclick="xadmin.open('密码修改','${path}/back_info',800,300)">密码修改</a></dd>
						<dd><a href="${path}/admins_logout">退出</a></dd>
					</dl>
				</li>
				<li class="layui-nav-item to-index">
					<a href="${path}/front_index" target="_blank">前台首页</a>
				</li>
			</ul>
		</div>
		
		<!-- 顶部结束 -->
		<!-- 中部开始 -->
		<!-- 左侧菜单开始 -->
		<div class="left-nav show_list" id="table1">
			<div id="side-nav">
				<ul id="nav">
					<li>
						<a href="javascript:;">
							<i class="layui-icon left-nav-li" lay-tips="公司简介">&#xe68e;</i>
							<cite>公司简介</cite>
							<i class="iconfont nav_right">&#xe697;</i>
						</a>
						<ul class="sub-menu">
							<li>
								<a onclick="xadmin.add_tab('公司简介','${path}/configs_about')">
									<i class="iconfont">&#xe6a7;</i>
									<cite>公司简介</cite>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
							<i class="iconfont left-nav-li" lay-tips="部门简介">&#xe705;</i>
							<cite>部门简介</cite>
							<i class="iconfont nav_right">&#xe697;</i>
						</a>
						<ul class="sub-menu">
							<li>
								<a onclick="xadmin.add_tab('部门简介','${path}/departments_list')">
									<i class="iconfont">&#xe6a7;</i>
									<cite>部门简介</cite>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
							<i class="iconfont left-nav-li" lay-tips="业务简介">&#xe705;</i>
							<cite>业务简介</cite>
							<i class="iconfont nav_right">&#xe697;</i>
						</a>
						<ul class="sub-menu">
							<li>
								<a onclick="xadmin.add_tab('业务简介','${path}/business_list')">
									<i class="iconfont">&#xe6a7;</i>
									<cite>业务简介</cite>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
							<i class="iconfont left-nav-li" lay-tips="成功案例">&#xe6c5;</i>
							<cite>成功案例</cite>
							<i class="iconfont nav_right">&#xe697;</i>
						</a>
						<ul class="sub-menu">
							<li>
								<a onclick="xadmin.add_tab('成功案例','${path}/examples_list')">
									<i class="iconfont">&#xe6a7;</i>
									<cite>成功案例</cite>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
							<i class="iconfont icon-lanmu" lay-tips="公司活动"></i>
							<cite>公司活动</cite>
							<i class="iconfont nav_right">&#xe697;</i>
						</a>
						<ul class="sub-menu">
							<li>
								<a onclick="xadmin.add_tab('公司活动','${path}/activitys_list')">
									<i class="iconfont">&#xe6a7;</i>
									<cite>公司活动</cite>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
							<i class="iconfont left-nav-li" lay-tips="政策文件">&#xe6a2;</i>
							<cite>政策文件</cite>
							<i class="iconfont nav_right">&#xe697;</i>
						</a>
						<ul class="sub-menu">
							<li>
								<a onclick="xadmin.add_tab('政策文件','${path}/documents_list')">
									<i class="iconfont">&#xe6a7;</i>
									<cite>政策文件</cite>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
							<i class="iconfont left-nav-li" lay-tips="管理员管理">&#xe726;</i>
							<cite>管理员管理</cite>
							<i class="iconfont nav_right">&#xe697;</i>
						</a>
						<ul class="sub-menu">
							<li>
								<a onclick="xadmin.add_tab('管理员列表','${path}/admins_list')">
									<i class="iconfont">&#xe6a7;</i>
									<cite>管理员列表</cite>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
							<i class="iconfont left-nav-li" lay-tips="系统设置">&#xe60d;</i>
							<cite>系统设置</cite>
							<i class="iconfont nav_right">&#xe697;</i>
						</a>
						<ul class="sub-menu">
							<li>
								<a onclick="xadmin.add_tab('系统设置','${path}/configs_site')">
									<i class="iconfont">&#xe6a7;</i>
									<cite>基本设置</cite>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>

		<!-- 左侧菜单结束 -->
		<!-- 右侧主体开始 -->
		<div class="page-content">
			<div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
				<ul class="layui-tab-title">
					<li class="home">
					<i class="layui-icon">&#xe68e;</i>我的桌面</li>
				</ul>
				<div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
					<dl>
						<dd data-type="this">关闭当前</dd>
						<dd data-type="other">关闭其它</dd>
						<dd data-type="all">关闭全部</dd>
					</dl>
				</div>
				<div class="layui-tab-content">
					<div class="layui-tab-item layui-show">
						<iframe src="${path}/admins_home" frameborder="0" scrolling="yes" class="x-iframe"></iframe>
					</div>
				</div>
				<div id="tab_show"></div>
			</div>
		</div>
		<!-- 右侧主体结束 -->
		<!-- 中部结束 -->
	</body>
</html>

