package mum.ea.service;


import java.util.List;

import mum.ea.model.Category;
import mum.ea.model.Product;

public interface ProductService {

	void save(Product product);
	public Product findOne(int productid);
	List<Product> findAll();
	List<Product> getFeatureProduct();
	List<Product> findAllByOrderByCreatedDateDesc();
	List<Product> getProductByCategory(Category category);


}
