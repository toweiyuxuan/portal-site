<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
<title>case</title>
<script type="text/javascript">
	jQuery(document).ready(function($) 
	{
		$(".scroll").click(function(event)
		{		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
		});
	});
</script>
</head>
<body>

<!-- start top_bg -->
<div class="top_bg">
	<div class="wrap">
		<div class="top">
			<h2>成功案例</h2>
	 	</div>
	</div>
</div>

<!-- start main -->
<div class="wrap">
<div class="main">
		<s:iterator value="#List" var="Anli">
			<div class="span_of_3">
				<s:iterator value="Anli" var="anli">
					<div class="span1_of_3">
						<a href="${path}/llanli_details?anli.AId=<s:property value="#anli.AId"/>"><img src="/LDZX<s:property value="#anli.APhoto1"/>" alt="" style="height: 200px;width: 400px;"></a>
						<div class="span1_of_3_text">
							<h3><s:property value="#anli.ATitle"/></h3>
							<p><s:property value="#anli.AAword"/></p>
						</div>
						<div class="ser_btn">
							<a class="button ser_btn1" href="${path}/llanli_details?anli.AId=<s:property value="#anli.AId"/>">阅读更多</a>
						</div>
					</div>
				</s:iterator>
				<div class="clear"></div>
			</div>
		</s:iterator>
	</div>
</div>
<%@ include file="foot.jsp" %>
</body>
</html>