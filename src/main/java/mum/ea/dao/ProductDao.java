package mum.ea.dao;



import java.util.List;

import mum.ea.model.Category;
import mum.ea.model.Product;

import org.springframework.data.repository.CrudRepository;

public interface ProductDao extends CrudRepository<Product, Integer>  {

	List<Product> getProductByCategory(Category category);

}
