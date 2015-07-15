var addToCart = function(productId, quantity, mode){
	alert("Product " +productId +" Successfully Added to cart");
	$.ajax({
		url:"/OnlineStore/cart/add/" + productId + "?quantity="+quantity+"&mode="+mode,
		type: "POST",
		datatype:"json",
		contentType:"application/json",
		success:function(success){

		}
	});
}


var removeFromCart = function(rowid, productId){
	$.ajax({
		url:"/OnlineStore/cart/remove/"+productId,
		type: "DELETE",
		dataType: "json",
		contentType: "application/json",
		success:function(success){
			//$("#"+rowid).remove();
			location.reload();
		},
		error:function(error){
		}
	});
}

//var clearCart = function(){
//	
//	alert("You");
//	
////	$.ajax({
////		url:"/OnlineStore/cart/remove/"+productId,
////		type: "DELETE",
////		dataType: "json",
////		contentType: "application/json",
////		success:function(success){
////			//$("#"+rowid).remove();
////			location.reload();
////		},
////		error:function(error){
////		}
////	});
//	
//	
//}