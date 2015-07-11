<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<jsp:include page="/WEB-INF/layout/header.jsp" />
<body>


<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Add Product</h2>
						<form:form modelAttribute="product" action="saveProduct">
							<form:input path="name" placeholder="Name" />
							<form:input  path="price" placeholder="Price" />
							<form:input  path="desc" placeholder="Description" />
							<form:input path="image" placeholder="Upload Image" />
							<span>
								<input type="checkbox" class="checkbox"> 
								Keep me signed in
							</span>
							<button type="submit" class="btn btn-default">Login</button>
						</form:form>
					</div>
				</div>
				
				
			</div>
		</div>
	</section><!--/form-->







<jsp:include page="/WEB-INF/layout/footer.jsp" />


</body>
</html>