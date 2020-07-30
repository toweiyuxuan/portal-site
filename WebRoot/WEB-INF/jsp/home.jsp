<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html class="x-admin-sm">
	<head>
		<meta charset="UTF-8">
		<title>欢迎页面</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
		
		<link rel="stylesheet" href="${path}/css/index.css">
		<link rel="stylesheet" href="${path}/css/iconfont.css">
		
		<script type="text/javascript" src="${path}/lib/layui/layui.js" charset="utf-8"></script>
		<script type="text/javascript" src="${path}/js/index.js"></script>
		<script type="text/javascript" src="${path}/js/jquery.js"></script>
		<script type="text/javascript" src="${path}/js/jquery.min.js"></script>
	</head>
	<body>
		<div class="layui-fluid">
			<div class="layui-row layui-col-space15">
				<div class="layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-body ">
							<blockquote class="layui-elem-quote">欢迎管理员：
								<span class="x-red"><s:property value="#session.admin.username"/> </span>
								<span id="time"></span>
							</blockquote>
						</div>
					</div>
				</div>
				<div class="layui-col-sm6 layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-header">最新登录记录</div>
						<div class="layui-card-body  ">

							<table class="layui-table">
								<thead>
									<tr class="text-c">
										<th>ID</th>
										<th>用户名</th>
										<th>登录内容</th>
										<th>登录IP</th>
										<th>登录时间</th>
									</tr>
								</thead>
								<tbody>
								 	<s:iterator value="#recordsList" var="records">
										<tr class="text-c">
											<td><s:property value="#records.id"/></td>
											<td><s:property value="#records.login"/></td>
											<td><s:property value="#records.content"/></td>
											<td><s:property value="#records.addressIp"/></td>
											<td><s:property value="#records.createdAt"/></td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-header">系统信息</div>
						<div class="layui-card-body ">

							<table class="layui-table">
								<thead>
									<tr>
										<th colspan="4" scope="col">服务器信息</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>服务器IP地址</td>
										<td>8.129.176.211</td>
									</tr>
									<tr>
										<td>服务器域名</td>
										<td>www.kmldhs.com</td>
									</tr>
									<tr>
										<td>服务器端口 </td>
										<td>80</td>
									</tr>
									<tr>
										<td>服务器操作系统 </td>
										<td>CentOS 7.4 64位</td>
									</tr>
									<tr>
										<td>系统所在文件夹 </td>
										<td>/www/server/tomcat/webapps</td>
									</tr>
									<tr>
										<td>服务器的语言种类 </td>
										<td>Chinese (People's Republic of China)</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-body ">
							<p style="text-align: center;"> Copyright ©2020 All Rights Reserved.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		function getTime() {
			var myDate = new Date();
			var myYear = myDate.getFullYear(); //获取完整的年份(4位,1970-????)
			var myMonth = myDate.getMonth() + 1; //获取当前月份(0-11,0代表1月)
			var myToday = myDate.getDate(); //获取当前日(1-31)
			var myDay = myDate.getDay(); //获取当前星期X(0-6,0代表星期天)
			var myHour = myDate.getHours(); //获取当前小时数(0-23)
			var myMinute = myDate.getMinutes(); //获取当前分钟数(0-59)
			var mySecond = myDate.getSeconds(); //获取当前秒数(0-59)
			var week = ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'];
			var nowTime;
			nowTime = myYear + '-' + fillZero(myMonth) + '-' + fillZero(myToday) + '&nbsp;&nbsp;' + fillZero(myHour) + ':' + fillZero(myMinute) + ':' + fillZero(mySecond) + '&nbsp;&nbsp;' + week[myDay] + '&nbsp;&nbsp;';
			$('#time').html(nowTime);
		};

		function fillZero(str) {
			var realNum;
			if (str < 10) {
				realNum = '0' + str;
			} else {
				realNum = str;
			}
			return realNum;
		}
		setInterval(getTime, 1000);
	</script>
</html>
