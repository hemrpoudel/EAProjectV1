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
			
<c:set var="cartsize" value="${fn:length(cart.cartItems)}" />

<c:choose>
		<c:when test="${cartsize == 0 }">
			<div>
				 <h3> No products Added to Cart !! </h3>
			</div>
		</c:when>
		<c:otherwise>
		
		<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="description">Description</td>
							<td class="price">Price</td>
							<td class="quantity">Quantity</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
				
					
					<c:forEach items="${cart.cartItems}" var="cart">
			  				<tr>
							<td class="cart_product">
								<a href=""><img src="<spring:url value="/resources/images/product/${cart.value.product.image}"  />" alt="${cart.value.product.name}" width="80px" height="100px "   />  </a>
								<h4>${cart.value.product.name} </h4>
							</td>
							<td class="cart_description">
								${cart.value.product.description}
<!-- 								<p>Web ID: 1089772</p> -->
							</td>
							<td class="cart_price">
								${cart.value.product.price}
							</td>
							
							<td class="cart_quantity">
<!-- 									<div class="cart_quantity_button"> -->
<%-- 										<input id="quantity${cart.value.product.id}" --%>
<!-- 											class="cart_quantity_input" type="text" name="quantity" -->
<%-- 											value="<c:out value="${cart.value.quantity}"/>" --%>
<!-- 											onkeypress="validate(event);" -->
<%-- 											onchange="updateCart(this.id,${cart.value.product.id},'update');" --%>
<!-- 											autocomplete="off" size="2"> -->
<!-- 									</div> -->

									${cart.value.quantity}
								</td>
					
							<td class="cart_total">
									<p class="cart_total_price">
										$ <c:out value="${cart.value.totalPrice}" />
									</p>
								</td>
							<td class="cart_delete">
							<button type="button" class="btn-primary"
										onclick="removeFromCart('product_'+${cart.value.product.id},${cart.value.product.id});">
										<i class="fa fa-times">
<%-- 										<spring:message code="cart.table.label.remove" /> --%>
											
											</i>
									</button>


							</td>
						</tr>

						</c:forEach>
					
					
						<tr>
							<td colspan="4">&nbsp;</td>
							<td colspan="2">
								<table class="table table-condensed total-result">
									<tr>
										<td>Cart Sub Total</td>
										<td><c:out value="${cart.total}" />  </td>
									</tr>
									<tr>
										<td>Exo Tax</td>
										<td>$0</td>
									</tr>
									<tr class="shipping-cost">
										<td>Shipping Cost</td>
										<td>Free</td>										
									</tr>
									<tr>
										<td>Total</td>
										<td><span><c:out value="${cart.total}" /></span></td>
									</tr>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
					
			</div>
		
		
	
<a style="margin-left: 1050px; margin-top: 0px;" class="btn btn-default get" href="/OnlineStore/product/checkout"  >CheckOut</a>
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
		
		
		</c:otherwise>
		
		
		
</c:choose>
			

			
		
		</div>
	</section> <!--/#cart_items-->





 <jsp:include page="/WEB-INF/layout/footer.jsp"/> 
	

</body>
</html>