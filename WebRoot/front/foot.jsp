<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
	<div class="footer">
		<div class="layui-container">
			<p class="footer-web">
				<s:iterator value="#linkList" var="link">
					<a href="<s:property value='#link.url'/>" target="_blank"><s:property value='#link.name'/></a>
				</s:iterator>
			</p>
			<div class="layui-row footer-contact">
				<div class="layui-col-sm2 layui-col-lg1"><img width="80px" src="<s:property value='#site.qrcode'/>"></div>
				<div class="layui-col-sm10 layui-col-lg11">
					<div class="layui-row">
						<div class="layui-col-sm6 layui-col-md8 layui-col-lg9">
							<p class="contact-top"><i class="layui-icon layui-icon-cellphone"></i>&nbsp;<s:property value='#site.tel'/></p>
							<p class="contact-bottom"><i class="layui-icon layui-icon-home"></i>&nbsp;<s:property value='#site.email'/></p>
						</div>
						<div class="layui-col-sm6 layui-col-md4 layui-col-lg3">
							<p class="contact-bottom"><span class="right"><s:property value='#site.copyright'/>&nbsp;&nbsp;<s:property value='#site.casenumber'/></span></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${path}/res/layui/layui.js"></script>
	<script>
		layui.config({base:"${path}/res/static/js/"}).use("firm");
	</script>
</body>
</html>