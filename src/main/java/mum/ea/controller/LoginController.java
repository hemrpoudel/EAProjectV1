package mum.ea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	

	
	@RequestMapping("/login")
	public String redirectRoot() {
//		return "redirect:/books";
		return "/login/login";
	}
	
	
	
/*	@RequestMapping(value={"/","/home"})
	public String home() {
		System.out.println("home");
		return "index";
	}*/
	
	 @RequestMapping("/loginfailed")
	   public String loginFailed(){
	    	
	    	return "login/loginfailed";
	    }
	    
	    @RequestMapping("/403")
	    public String accessDenied(){
	     	
	     	return "login/accessdenied";
	     }
	    
	    
	    @RequestMapping("/logout")
	    public String logout(){
	    	
	    	System.out.println("Loading login page");
	     	
	     	return "login/logout";
	     }
	

}
