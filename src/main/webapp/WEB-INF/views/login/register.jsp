<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

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


			<div class="col-sm-4">
				<div class="signup-form">
					<!--sign up form-->
					<h2>New User Signup!</h2>
					<form:form modelAttribute="user" action="saveUser">
						<form:errors path="username" cssStyle="color:red" />
						<form:input path="username" placeholder="Name" />
						<form:errors path="emailAddress" cssStyle="color:red" />
						<form:input path="emailAddress" placeholder="Email Address" />
						<%-- <form:input path="dob" placeholder="Date" /> --%>
						<form:errors path="dob" cssStyle="color:red" />
						<form:input id="dob" placeholder="Date of Birth(MM/DD/YYYY)" path="dob"
							type="text" />


						<form:errors path="password" cssStyle="color:red" />
						<form:input path="password" type="password" placeholder="Password" />

						<!-- 						<h4>YOUR ROLE</h4> -->
						<form:select path="role" class="forminput">

							<form:option value="ROLE_USER" label="ROLE_USER" />\
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<form:option value="ROLE_ADMIN" label="ROLE_ADMIN" />
							</sec:authorize>
						</form:select>
						<br>
						<br>

						<button type="submit" class="btn btn-default">Signup</button>

					</form:form>
				</div>
				<!--/sign up form-->
			</div>
		</div>
	</div>
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" /> </section>
	<!--/form-->

	<c:if test="${not empty message}">

		<div>
			<c:out value="${message}" />
		</div>
		<script>
			showAlert("<c:out value='${message}'/>", "Message");
		</script>

	</c:if>

	<jsp:include page="/WEB-INF/layout/footer.jsp" />

</body>
</html>