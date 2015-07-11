package mum.ea.dao;



import mum.ea.model.Product;

import org.springframework.data.repository.CrudRepository;

public interface ProductDao extends CrudRepository<Product, Integer>  {

}
