package mum.ea.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import mum.ea.dao.CartDao;
import mum.ea.model.Cart;
@Component
public class CartDaoImpl implements CartDao {
	
	private Map<String, Cart> cartList;
	
	public CartDaoImpl() {
		cartList = new HashMap<String, Cart>();
	}
	public Cart create(Cart cart) {
		if (cartList.containsKey(cart.getCartId())) {
			throw new IllegalArgumentException("Product aleardy exists in cart");
		}

		cartList.put(cart.getCartId(), cart);
		return cart;
	}

	public Cart read(String cartId) {
		return cartList.get(cartId);
	}

	public void update(String cartId, Cart cart) {
		if (!cartList.containsKey(cart.getCartId())) {
			throw new IllegalArgumentException(
					"Can not update cart. Product does not exist in cart");
		}

		cartList.put(cartId, cart);
	}

	public void delete(String cartId) {
		if (!cartList.containsKey(cartId)) {
			throw new IllegalArgumentException(
					"Can not delete product from cart. Product does not exist in cart");
		}

		cartList.remove(cartId);

	}

}
