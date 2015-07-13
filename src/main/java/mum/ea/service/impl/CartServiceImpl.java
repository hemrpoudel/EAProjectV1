package mum.ea.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mum.ea.model.Cart;
import mum.ea.service.CartService;
import mum.ea.dao.CartDao;

@Service
public class CartServiceImpl implements CartService {
	
	
	@Autowired
	private CartDao cartDao;
	
	public Cart create(Cart cart) {
		
		return cartDao.create(cart);
		
		
	}

	public Cart read(String cartId) {
	
		return cartDao.read(cartId);
	}

	public void update(String cartId, Cart cart) {
	
		cartDao.update(cartId,cart);
	}

	public void delete(String cartId) {
		cartDao.delete(cartId);
		
	}

}
