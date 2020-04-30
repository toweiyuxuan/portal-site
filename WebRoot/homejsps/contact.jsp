<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
<title>contact</title>
</head>
<body>

<!-- start top_bg -->
<div class="top_bg">
<div class="wrap">
	<div class="top">
		<h2>联系我们</h2>
 	</div>
</div>
</div>
<!-- start main -->
<div class="wrap">
	<div class="main">
	 	 <div class="contact">
			<div class="contact-form">
			 	 <div class="content">
		 	 		</div>
					    <form method="post" action="">
					    	<div>
						    	<h2>电话：<s:property value="#contact.CPhone"/></h2><br>
						    </div>
						    <div>
						    	<h2>手机：<s:property value="#contact.CTel"/></h2><br>
						    </div>
						    <div>
						    	<h2>其他说明</h2><br>
						    	<div>
							    	<span><label><s:property value="#contact.COther"/></label></span>
							    </div>
						    </div><br>
						    <div>
						     	<h2>公众号</h2>
						     	<div class="cont-grid-img img_style">
									<a href="#"><img src="/LDZX<s:property value="#contact.CWeixin"/>" alt="" style="height: 200px;width: 200px;"></a>
								</div>
						    </div>
						    
					    </form>
				    </div>
  				<div class="clear"> </div>		
			  </div>
		</div>
</div>
<%@ include file="foot.jsp" %>
</body>
</html>