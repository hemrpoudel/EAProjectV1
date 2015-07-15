package mum.ea.controller;

import javax.servlet.ServletContext;

import mum.ea.model.Category;
import mum.ea.model.Product;
import mum.ea.service.CategoryService;
import mum.ea.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	ServletContext servletContext;
	
	
	@RequestMapping(value={"/","/home"})
	public String home(Model model ) {
		
		model.addAttribute("path",
				servletContext.getRealPath("/resources/images/"));
		
		model.addAttribute("product",new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryService.findAll());
		model.addAttribute("productList", productService.findAll());
		
		return "index";
	}
	
}
