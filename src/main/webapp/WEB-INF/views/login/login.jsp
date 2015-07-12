<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <jsp:include page="/WEB-INF/layout/header.jsp"/>  
</head>
<body>

	
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>
						 <c:if test="${not empty error}">
                                <div class="alert alert-danger">
                                    <spring:message
                                        code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
                                    <br />
                                </div>
                            </c:if>
						<form action="<c:url value='/j_spring_security_check' />" method="post">
							<input name='username' type="text" placeholder="Name" />
							<input name='password' type="password" placeholder="Password" />
							<span>
								<input type="checkbox" class="checkbox"> 
								Keep me signed in
							</span>
							<button type="submit" class="btn btn-default">Login</button>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>New User Signup!</h2>
						<form action="#">
							<input type="text" placeholder="Name"/>
							<input type="email" placeholder="Email Address"/>
							<input type="password" placeholder="Password"/>
							<button type="submit" class="btn btn-default">Signup</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
		<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
	</section><!--/form-->
	
	 <jsp:include page="/WEB-INF/layout/footer.jsp"/> 
	
</body>
</html>