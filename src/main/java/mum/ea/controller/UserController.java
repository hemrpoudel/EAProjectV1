package mum.ea.controller;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import mum.ea.model.User;
import mum.ea.service.UserService;
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/saveUser", method=RequestMethod.POST)
	public String saveUser(@Valid  User user , BindingResult bindingResult,RedirectAttributes redir) {
		if(bindingResult.hasErrors() )
			return "/login/register";
		else{
			
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
	
	@RequestMapping(value ="/userlist")
	public String listUser(Map<String, Object> map){
		map.put("user", new User());
		map.put("UserList", userService.findAll());
		return "/user/userlist";
		
	}
	
	@RequestMapping("/get/{id}")
	public String getUser(@PathVariable Long id, Model model){
		System.out.println("Edit user");
		model.addAttribute("user", userService.findOne(id));
		return "/login/register";
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteUser(@PathVariable Long id, HttpServletRequest request){
		
		userService.delete(id);
		String referer = request.getHeader("Referer");
		return "redirect:" +referer;
				
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
