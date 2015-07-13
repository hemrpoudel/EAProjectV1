package mum.ea.service;

import java.util.List;

import mum.ea.model.Category;

public interface CategoryService {
	
	void save(Category category);
	public List<Category> getCategory();
	Category findOne(int categoryId);
	void delete(int id);


}
