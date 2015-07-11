package mum.ea.controller;

import javax.validation.Valid;

import mum.ea.model.Book;
import mum.ea.model.Product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {
//	@Autowired
//	public ProductService productService;
	
//	@RequestMapping(value={"/product/{id}"})
	@RequestMapping(value={"/product"})
//	public String getProductById(@PathVariable int id, Model model) {
	public String getProductById() {
		// model.addAttribute("product", product);  -- get product from productservice
		return "/product/productdetail";
	}
	
	@RequestMapping("/checkout")
	public String loadCheckout() {
		
		return "/product/checkout";
	}
	
	@RequestMapping("/add")
	public String addProduct(Model model) {
		model.addAttribute("product", new Product());
		return "/product/addproduct";
	}
	

	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String saveProduct(@Valid Product product, BindingResult bindingResult) {
		if(bindingResult.hasErrors() )
			return "redirect:/add";
		else{
//		bookDao.add(book);
		return "redirect:/add";
		}
	}
}
