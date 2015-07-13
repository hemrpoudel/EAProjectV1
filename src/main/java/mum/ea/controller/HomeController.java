package mum.ea.controller;

import mum.ea.model.Product;
import mum.ea.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@Autowired
	ProductService productService;
	
	
	
	@RequestMapping(value={"/","/home"})
	public String home(Model model ) {
		model.addAttribute("product",new Product());
		model.addAttribute("productList", productService.findAll());
		
		return "index";
	}
	
}
