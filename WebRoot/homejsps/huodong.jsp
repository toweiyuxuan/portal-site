<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
<title>activity</title>
</head>
<body>
<!-- start top_bg -->
<div class="top_bg">
<div class="wrap">
	<div class="top">
		<h2>公司活动</h2>
 	</div>
</div>
</div>
<!-- start main -->
<div class="wrap">
<div class="main">
	<div class="blog">
		<s:iterator value="#page.list" var="huodong">
			<div class="blog_list">
				<h2><s:property value="#huodong.HTitle"/></h2>
				<h5>发布时间&nbsp;<a href="JavaScript:void(0);"><s:property value="#huodong.HDate"/></a></h5>
				<div class="blog_para">
					<p class="para">
						<a href="${path}/llhuodong_details?huodong.HId=<s:property value="#huodong.HId"/>">
							<img src="/LDZX<s:property value="#huodong.HPhoto1"/>" alt="" style="height: 200px;width: 400px;">
						</a>
						<s:property value="#huodong.HP1"/>
					</p>
					<div class="read_more">
					 	<a class="btn" href="${path}/llhuodong_details?huodong.HId=<s:property value="#huodong.HId"/>">阅读更多</a>
					</div>
					<div class="clear"></div>
				</div>
		 	</div>
		</s:iterator>
	</div>
</div>
</div>
<%@ include file="foot.jsp" %>
</body>
</html>