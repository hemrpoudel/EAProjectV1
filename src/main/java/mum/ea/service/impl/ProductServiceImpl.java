package mum.ea.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import mum.ea.dao.ProductDao;
import mum.ea.model.Product;
import mum.ea.service.ProductService;

@Transactional
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDao productDao;
	
	public void save(Product product){
		productDao.save(product);
		
	}
	
}
