<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<jsp:include page="/WEB-INF/layout/header.jsp" />
</head>
<body>


	<section id="form"><!--form-->
	<div class="container">
		<div class="row">
			<div class="col-sm-4 col-sm-offset-1">
				<div class="login-form">
					<!--login form-->
					<h2>Login to your account</h2>
					<c:if test="${not empty logoutSuccessful}">
						<div class="alert alert-success" role="alert">
							<h4>${logoutSuccessful}</h4>
						</div>
					</c:if>

					<c:if test="${not empty error}">
						<div class="alert alert-danger" role="alert">
							<h4>${error}</h4>
						</div>
					</c:if>
					<form action="<c:url value='/j_spring_security_check' />"
						method="post">
						<input id="username" name='username' type="text"
							placeholder="Name" /> <input id="password" name='password'
							type="password" placeholder="Password" /> <input type="hidden"
							name="${_csrf.parameterName}" value="${_csrf.token}" /> <span>
							<input type="checkbox" class="checkbox"> Keep me signed
							in
						</span>
						<button type="submit" class="btn btn-default">Login</button>
					</form>
				</div>
				<!--/login form-->
			</div>

		</div>
	</div>

	<div >
		<div >
			<span ><a href="/OnlineStore/register">Register Now</a></span>
		</div>
	</div>
	</section>
	<!--/form-->

	<c:if test="${not empty message}">
		
		<script>
			showAlert("<c:out value='${message}'/>", "Message");
		</script>

	</c:if>

	<jsp:include page="/WEB-INF/layout/footer.jsp" />

</body>
</html>