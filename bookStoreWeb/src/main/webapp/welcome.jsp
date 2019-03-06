<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>欢迎界面</title>
	</head>
	<body>
		<!-- 设置全局的应用路径path -->
		<c:set var="path" value="${pageContext.servletContext.contextPath }" scope="application"></c:set>
		
		<!-- 设置默认首页跳转路径 -->
		<c:redirect url="/book/login.html"></c:redirect>	
	</body>
</html>
