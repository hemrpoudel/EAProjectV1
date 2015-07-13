<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>404 Error</title>
</head>
<jsp:include page="/WEB-INF/layout/header.jsp"/>  
<body>

<div class="container text-center">
		<div class="logo-404">
			<a href="/OnlineStore/"><img src='<c:url value="/resources/images/home/logo.png" />'></a>
		</div>
		<div class="content-404">
			<img class="img-responsive"  src='<c:url value="/resources/images/404/404.png"  />'>
			<h1><b>OPPS!</b> We Couldn’t Find this Page</h1>
			<p>Uh... So it looks like you brock something. The page you are looking for has up and Vanished.</p>
			<h2><a href="/OnlineStore/">Bring me back Home</a></h2>
		</div>
	</div>
	 <jsp:include page="/WEB-INF/layout/footer.jsp"/> 
</body>
</html>