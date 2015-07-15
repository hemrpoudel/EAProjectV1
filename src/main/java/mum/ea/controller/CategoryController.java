package mum.ea.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import mum.ea.model.Category;
import mum.ea.service.CategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

/*	@RequestMapping(value = { "/{id}" })
	public String getCategorytById(@PathVariable int id, Model model) {
		model.addAttribute("category", categoryService.findOne(id));
		return "/category/categoryList";
	}
*/
	@RequestMapping("/add")
	public String addCategory(Model model) {
		System.out.println("Category add");
		model.addAttribute("category", new Category());
		model.addAttribute("rootCategoryList",categoryService.getRootCategories());
		return "/category/addCategory";
	}

	@RequestMapping(value = "/savecategory", method = RequestMethod.POST)
	public String saveCategory(@Valid Category category, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()){
			return "/category/addCategory";
			}
		else {
			categoryService.save(category);
			model.addAttribute("rootCategoryList",categoryService.getRootCategories());
			return "redirect:/category/";

		}

	}

	@RequestMapping("/delete/{id}")
	public String deleteCategory(@PathVariable int id, HttpServletRequest request) {
		categoryService.delete(id);
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/get/{id}")
	public String getCategory(@PathVariable int id, Model model) {
		model.addAttribute("rootCategoryList",categoryService.getRootCategories());
		model.addAttribute("category", categoryService.findOne(id));
		
		return "/category/addCategory";
	}

	@RequestMapping(value = { "/", "/index" })
	public String listCategoryList(Map<String, Object> map) {
		map.put("category", new Category());
		map.put("CategoryList", categoryService.findAll());

		return "/category/categoryList";
	}
}
