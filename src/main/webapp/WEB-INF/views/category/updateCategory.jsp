<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<meta charset="utf-8">
<jsp:include page="/WEB-INF/layout/header.jsp" />
<body>
<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Add Category</h2>
						<form:form modelAttribute="category" action="../savecategory">
							<form:input path="name" placeholder="Name" />
							<form:input  path="description" placeholder="Description" />
							<form:hidden path="id"/>
							<button type="submit" class="btn btn-default">Submit</button>

						</form:form>
					</div>
				</div>
				
				
			</div>
		</div>
	</section><!--/form-->
	</body>
<jsp:include page="/WEB-INF/layout/footer.jsp" />
</html>