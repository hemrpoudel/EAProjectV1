package mum.ea.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.validation.Valid;

import mum.ea.exception.FileUploadException;
import mum.ea.model.Category;
import mum.ea.model.Product;
import mum.ea.service.CategoryService;
import mum.ea.service.ProductService;
//import mum.waaproject.exception.FileUploadException;




import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller

@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	public ProductService productService;
	
	@Autowired
	public CategoryService categoryService;
	
	@Autowired
	public ServletContext  servletContext;
	
	public String getProductById(@PathVariable int id, Model model) {
		 model.addAttribute("product",productService.findOne(id) );  
		return "/product/productdetail";
	}
	
	@RequestMapping("/category/{categoryId}")
	public String getProductByCategoryId(@PathVariable("categoryId") int categoryId , Model model){
		Category category = categoryService.findOne(categoryId);
		model.addAttribute("productList", productService.getProductByCategory(category));
		
		return "index";
		
		
	}

	@RequestMapping("/add")
	public String addProduct(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("categoryList",categoryService.getChildCategories());
		return "/product/addproduct";
	}
	
	@RequestMapping(value="/saveProduct", method=RequestMethod.POST)
	public String saveProduct(@Valid  Product product , BindingResult bindingResult,RedirectAttributes redir) {
		if(bindingResult.hasErrors() )
			return "/product/addproduct";
		else{
			System.out.println("Starting to save product");
			MultipartFile file = product.getImageFile();
			product = fileUpload(file, product);
			
		productService.save(product);
		
		
		redir.addFlashAttribute("message", "Product Saved!");
		return "redirect:/product/add";

		}
	}
	
	
	public Product fileUpload(MultipartFile file, Product product) {
		
		if (!file.isEmpty()) {
			validateImage(file);
			try {
				byte[] bytes = file.getBytes();

				String rootDirectory = servletContext
						.getRealPath("/resources/images/");
				System.out.println("Root Directory "+rootDirectory);
				File dir = new File(rootDirectory + File.separator + "product");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				String filename = 	product.getName() + "_" + file.getName() + ".jpg";
				product.setImage(filename);
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + filename);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
			} catch (Exception e) {
				throw new FileUploadException(file.getOriginalFilename(),
						"error while creating file");
			}
		} else {
			throw new FileUploadException(file.getOriginalFilename(),
					"invalid file");
		}

		return product;
	}
	
	private void validateImage(MultipartFile file) {
		if (!file.getContentType().equals("image/jpeg")) {
			throw new FileUploadException(file.getName(),
					"Only jpeg file format is supported");
		}
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteProduct(@PathVariable int id, HttpServletRequest request) {
		Product p = productService.findOne(id);
		productService.delete(p);
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}
	
	@RequestMapping(value = "/update/{id}")
	public String getProductForEdit(@PathVariable int id, Model model) {
		model.addAttribute("product", productService.findOne(id));
		model.addAttribute("categoryList",categoryService.getChildCategories());
		return "/product/addproduct";
	}
}
