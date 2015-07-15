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
		if(category.getParent().getId() != 0){
			category.setLeaf(true);
		}
		else
		{
			category.setLeaf(false);
			category.setParent(null);
		}
		
		categoryDao.save(category);
	}

	public Category findOne(int categoryid) {
		return categoryDao.findOne(categoryid);
		
	}
	
	public void delete(Category category) {
		categoryDao.delete(category);
	}

	public List<Category> findAll() {
		
		return (List<Category>) categoryDao.findAll();
	}

	public void delete(int id) {
		categoryDao.delete(id);
		
	}

	public List<Category> getRootCategories() {
		return categoryDao.getRootCategories();
	}

	public List<Category> getChildCategories() {
		return categoryDao.getChildCategories();
	}
	
	
}
