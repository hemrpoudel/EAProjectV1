package mum.ea.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import mum.ea.model.Category;

public interface CategoryDao extends CrudRepository<Category, Integer>{

	
	
	@Query("SELECT c FROM category c WHERE c.parent IS NULL")
	public List<Category> getRootCategories();

	@Query("SELECT c FROM category c WHERE c.parent IS NOT NULL")
	public List<Category> getChildCategories();

	
	

}
