<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<jsp:include page="/WEB-INF/layout/header.jsp" />
<body>


<section id="form"><!--form-->
		<div class="container">
			<div >
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Add Product</h2>
					
						<form:form modelAttribute="product" action="/OnlineStore/product/saveProduct" method="POST" enctype="multipart/form-data">
						  <form:errors path="name" cssStyle="color:red"/>
							<form:input path="name" placeholder="Name" />
							
							 <form:errors path="price" cssStyle="color:red"/>
							<form:input  path="price" placeholder="Price" />
							
							 <form:errors path="description" cssStyle="color:red"/>
							<form:input  path="description" placeholder="Description" />
							
							<form:label path="category.id" class="formlabel">Choose Category </form:label>
							<form:select path="category.id" class="forminput">
								<form:options items="${categoryList}" itemLabel="name"
								itemValue="id" />
							</form:select>
							
							<br><br>
							
						<%-- 	<form:errors path="image" cssStyle="color:red"/>
							<form:input path="image" placeholder="Upload Image" /> --%>
							
							
							<form:input id="imageFile" path="imageFile" type="file"
						class="form:input-large" />
							<form:hidden path="id"/>
							<button type="submit" class="btn btn-default">Submit</button>

						</form:form>
					</div>
				</div>
				
				
			</div>
		</div>
	</section><!--/form-->




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