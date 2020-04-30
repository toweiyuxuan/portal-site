<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="s" uri="/struts-tags"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="pathp" value="${pageContext.request.servletContext.contextPath}"></c:set>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="keywords" content="隆达咨询门户网站" />
<meta name="description" content="隆达咨询门户网站" />


<link rel="stylesheet" type="text/css" href="${path}/system/Css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${path}/system/Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="${path}/system/Css/style.css" />

<script type="text/javascript" src="${path}/system/Js/jquery.js"></script>
<script type="text/javascript" src="${path}/system/Js/jquery.sorted.js"></script>
<script type="text/javascript" src="${path}/system/Js/bootstrap.js"></script>
<script type="text/javascript" src="${path}/system/Js/ckform.js"></script>
<script type="text/javascript" src="${path}/system/Js/common.js"></script>

<%-- <script type="text/javascript" src="${path}/system/Js/jquery-1.8.3.js"></script> --%>
<script type="text/javascript" src="${path}/system/Js/jquery.form.js"></script>

<style type="text/css">
    body 
    {
        padding-bottom: 40px;
    }
    .sidebar-nav 
    {
        padding: 9px 0;
    }

    @media (max-width: 980px) 
    {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right 
        {
            float: none;
            padding-left: 5px;
            padding-right: 5px;
        }
    }
</style>


<script type="text/javascript">
	//var path = "${path}";
	//从session中拿到用户信息
	var user='<%=session.getAttribute("user")%>';
</script>

<title>隆达咨询门户网站后台管理系统</title>
</head>
<body>

</body>
</html>