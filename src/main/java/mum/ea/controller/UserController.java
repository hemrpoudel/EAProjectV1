package mum.ea.controller;

import javax.validation.Valid;

import mum.ea.model.User;
import mum.ea.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/saveUser", method=RequestMethod.POST)
	public String saveUser(@Valid  User user , BindingResult bindingResult,RedirectAttributes redir) {
		if(bindingResult.hasErrors() )
			return "/login";
		else{
			System.out.println("test");
		userService.save(user);
		redir.addFlashAttribute("message", "User Saved!");
		return "redirect:/login";

		}
	}
	
	@RequestMapping("/register")
	public String login( Model model) {
		
		model.addAttribute("user", new User());
		
		return "/login/register";
	}
	
	
//	@RequestMapping(value="/login", method=RequestMethod.POST)
//	public String login(@Valid  User user , BindingResult bindingResult,RedirectAttributes redir) {
//		if(bindingResult.hasErrors() )
//			return "/login";
//		else{
//		userService.save(user);
//		redir.addFlashAttribute("message", "User Saved!");
//		return "redirect:/login";
//
//		}
	
	
	
}
