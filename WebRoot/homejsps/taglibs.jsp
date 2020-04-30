<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>隆达咨询微官网</title>
		<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="format-detection" content="telephone=no">

		<link href="${path}/home/css/iscroll.css" rel="stylesheet" type="text/css" />
		<link href="${path}/home/css/cate.css" rel="stylesheet" type="text/css" />

		<script src="${path}/home/js/iscroll.js" type="text/javascript"></script>
		<script type="text/javascript" src="${path}/home/js/jquery.js"></script>
		
	</head>
<body>		
<div class="top_bar" style="-webkit-transform:translate3d(0,0,0)">
	<nav>
		<ul class="top_menu">
			<input type="button" id="plug-btn" class="plug-menu themeStyle" style="background-color:#FF0000;background-image:url('${path}/home/images/plug.png');border:0px;outline:none;">
			<li class="themeStyle out" style="background:#FF0000"> <a href="${path}/ld_index"><img src="${path}/home/images/plugmenu6.png"><label>首页</label></a></li>
			<li class="themeStyle out" style="background:#FF0000"> <a href="javascript:void(0)"><img src="${path}/home/images/plugmenu5.png"><label>分享</label></a></li>
			<li class="themeStyle out" style="background:#FF0000"> <a href="tel:13888888888"><img src="${path}/home/images/plugmenu1.png"><label>拨号</label></a></li>
			<li class="themeStyle out" style="background:#FF0000"> <a href="javascript:void(0)"><img src="${path}/home/images/plugmenu8.png"><label>短信</label></a></li>
		</ul>
	</nav>
</div>
</body>

<script type="text/javascript">
	$(function() 
	{
		$(".plug-menu").click(function() 
		{
			var li = $(this).parents('ul').find('li');
			if (li.attr("class") == "themeStyle on") 
			{
				li.removeClass("themeStyle on");
				li.addClass("themeStyle out");
			} 
			else 
			{
				li.removeClass("themeStyle out");
				li.addClass("themeStyle on");
			}
		});
	});
</script>
	
<style type="text/css">		
	body 
	{
		margin-bottom: 0px !important;
	}

	ul,li 
	{
		list-style: none;
		margin: 0;
		padding: 0
	}
	
	.top_bar 
	{
		position: fixed;
		bottom: 0;
		left: 0px;
		z-index: 900;
		-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
		font-family: Helvetica, Tahoma, Arial, Microsoft YaHei, sans-serif;
	}

	.plug-menu 
	{
		-webkit-appearance: button;
		display: inline-block;
		width: 36px;
		height: 36px;
		border-radius: 36px;
		position: absolute;
		bottom: 17px;
		left: 17px;
		z-index: 999;
		box-shadow: 0 0 0 4px #FFFFFF, 0 2px 5px 4px rgba(0, 0, 0, 0.25);
		background-color: #B70000;
		-webkit-transition: -webkit-transform 200ms;
		-webkit-transform: rotate(1deg);
		color: #fff;
		background-image: url('images/plug.png');
		background-repeat: no-repeat;
		-webkit-background-size: 80% auto;
		background-size: 80% auto;
		background-position: center center;
	}
	
	.plug-menu:before 
	{
		font-size: 20px;
		margin: 9px 0 0 9px;
	}

	.plug-menu:active
	{
		-webkit-transform: rotate(135deg);
	}
	
	.top_menu 
	{
		margin-left: -45px;
	}

	.top_menu>li 
	{
		min-width: 86px;
		padding: 0 10px;
		height: 32px;
		border-radius: 32px;
		box-shadow: 0 0 0 3px #FFFFFF, 0 2px 5px 3px rgba(0, 0, 0, 0.25);
		background: #B70000;
		margin-bottom: 23px;
		margin-left: 23px;
		z-index: 900;
		transition: all 200ms ease-out;
		-webkit-transition: all 200ms ease-out;
	}

	.top_menu>li:last-child 
	{
		margin-bottom: 80px;
	}

	.top_menu>li a 
	{
		color: #fff;
		font-size: 20px;
		display: block;
		height: 100%;
		line-height: 33px;
		text-indent: 26px;
		text-decoration: none;
		position: relative;
		font-size: 16px;
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow: hidden;
	}

	.top_menu>li a img 
	{
		display: block;
		width: 24px;
		height: 24px;
		text-indent: -999px;
		position: absolute;
		top: 50%;
		left: 10px;
		margin-top: -13px;
		margin-left: -12px;
	}

	.top_menu>li.on:nth-of-type(1) 
	{
		-webkit-transform: translate(45px, 0) rotate(0deg);
		transition: all 700ms ease-out;
		-webkit-transition: all 700ms ease-out;
	}

	.top_menu>li.on:nth-of-type(2) 
	{
		-webkit-transform: translate(45px, 0) rotate(0deg);
		transition: all 600ms ease-out;
		-webkit-transition: all 600ms ease-out;
	}

	.top_menu>li.on:nth-of-type(3) 
	{
		-webkit-transform: translate(45px, 0) rotate(0deg);
		transition: all 500ms ease-out;
		-webkit-transition: all 500ms ease-out;
	}

	.top_menu>li.on:nth-of-type(4) 
	{
		-webkit-transform: translate(45px, 0) rotate(0deg);
		transition: all 400ms ease-out;
		-webkit-transition: all 400ms ease-out;
	}

	.top_menu>li.on:nth-of-type(5) 
	{
		-webkit-transform: translate(45px, 0) rotate(0deg);
		transition: all 300ms ease-out;
		-webkit-transition: all 300ms ease-out;
	}

	.top_menu>li.on:nth-of-type(6) 
	{
		-webkit-transform: translate(45px, 0) rotate(0deg);
		transition: all 200ms ease-out;
		-webkit-transition: all 200ms ease-out;
	}

	.top_menu>li.out:nth-of-type(1) 
	{
		-webkit-transform: translate(45px, 280px) rotate(0deg);
		transition: all 600ms ease-out;
		-webkit-transition: all 600ms ease-out;
	}

	.top_menu>li.out:nth-of-type(2) 
	{
		-webkit-transform: translate(45px, 235px) rotate(0deg);
		transition: all 500ms ease-out;
		-webkit-transition: all 500ms ease-out;
	}

	.top_menu>li.out:nth-of-type(3) 
	{
		-webkit-transform: translate(45px, 190px) rotate(0deg);
		transition: all 400ms ease-out;
		-webkit-transition: all 400ms ease-out;
	}

	.top_menu>li.out:nth-of-type(4) 
	{
		-webkit-transform: translate(45px, 145px) rotate(0deg);
		transition: all 300ms ease-out;
		-webkit-transition: all 300ms ease-out;
	}

	.top_menu>li.out:nth-of-type(5) 
	{
		-webkit-transform: translate(45px, 100px) rotate(0deg);
		transition: all 200ms ease-out;
		-webkit-transition: all 200ms ease-out;
	}

	.top_menu>li.out:nth-of-type(6) 
	{
		-webkit-transform: translate(45px, 55px) rotate(0deg);
		transition: all 100ms ease-out;
		-webkit-transition: all 100ms ease-out;
	}

	.top_menu>li.out 
	{
		width: 20px;
		height: 20px;
		min-width: 20px;
		border-radius: 20px;
		padding: 0;
		opacity: 0;
	}

	.top_menu>li.out a 
	{
		display: none;
	}
</style>
</html>
