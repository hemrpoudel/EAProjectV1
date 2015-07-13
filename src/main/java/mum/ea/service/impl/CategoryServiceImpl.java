package mum.ea.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mum.ea.dao.CategoryDao;
import mum.ea.model.Category;
import mum.ea.service.CategoryService;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService{

	

	@Autowired
	private CategoryDao categoryDao;
	
	public void save(Category category) {
		
		categoryDao.save(category);
	}

	public Category findOne(int categoryid) {
		return categoryDao.findOne(categoryid);
		
	}
	
	public void delete(Category category) {
		categoryDao.delete(category);
	}

	public List<Category> getCategory() {
		
		return (List<Category>) categoryDao.findAll();
	}

	public void delete(int id) {
		categoryDao.delete(id);
		
	}
	
	
}
