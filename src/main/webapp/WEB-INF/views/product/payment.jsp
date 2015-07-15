<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <jsp:include page="/WEB-INF/layout/header.jsp"/>  
    <script type="text/javascript" src= '<c:url value="../../resources/js/cart.js" />'></script>
    
   
<body>


	<section id="cart_items">
		<div class="container">
			
<%-- <c:set var="cartsize" value="${fn:length(cart.cartItems)}" /> --%>

Payment Successful
		
		
		
		
	
<!-- <a style="margin-left: 1050px; margin-top: 0px;" class="btn btn-default get" href="/OnlineStore/product/checkout"  >CheckOut</a> -->
			<br><br>
		<!-- 	<div class="payment-options">
					<span>
						<label><input type="checkbox"> Direct Bank Transfer</label>
					</span>
					<span>
						<label><input type="checkbox"> Check Payment</label>
					</span>
					<span>
						<label><input type="checkbox"> Paypal</label>
					</span>
				</div> -->
		
		
	
			

			
		
		</div>
	</section> <!--/#cart_items-->





 <jsp:include page="/WEB-INF/layout/footer.jsp"/> 
	

</body>
</html>