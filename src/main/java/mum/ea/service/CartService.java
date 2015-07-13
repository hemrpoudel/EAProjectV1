package mum.ea.service;

import mum.ea.model.Cart;

public interface CartService {

	
  Cart create(Cart cart);
	
	Cart read(String cartId);
	
	void update(String cartId, Cart cart);
	
	void delete(String cartId);

}
