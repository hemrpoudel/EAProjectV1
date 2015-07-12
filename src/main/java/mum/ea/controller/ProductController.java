package mum.ea.controller;

import javax.validation.Valid;

import mum.ea.model.Product;
import mum.ea.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	public ProductService productService;
	
	@RequestMapping(value={"/{id}"})
	public String getProductById(@PathVariable int id, Model model) {
		 model.addAttribute("product",productService.findOne(id) );  
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
	
	@RequestMapping(value="/saveProduct", method=RequestMethod.POST)
	public String saveProduct(@Valid  Product product , BindingResult bindingResult) {
		if(bindingResult.hasErrors() )
			return "/product/addproduct";
		else{
		productService.save(product);
		return "redirect:/product/add";

		}
	}
}
