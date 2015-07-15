package mum.ea.service.impl;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;

import mum.ea.dao.ProductDao;
import mum.ea.model.Product;
import mum.ea.service.ProductService;

import mum.ea.model.Category;
@Service
@Transactional
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDao productDao;
	
	public void save(Product product){
		productDao.save(product);
		
	}
	public Product findOne(int productid) {
		return productDao.findOne(productid);
	}
	
	public List<Product> findAll() {
		return (List<Product>)productDao.findAll();
	}
	

	public List<Product> getFeatureProduct() {
		return null;
//		return productDao.getFeatureProducts(new PageRequest(0, 6));
	}

	public  List<Product> getProductByCategory(Category category) {
		
		return productDao.getProductByCategory(category);
	}
		
	public void delete(Product product) {
		productDao.delete(product);
	}

	public List<Product> findAllByOrderByCreatedDateDesc() {
		return null;
//				productDao.findAllByOrderByCreatedDateDesc(new PageRequest(0, 6));
	}
	
	

}
