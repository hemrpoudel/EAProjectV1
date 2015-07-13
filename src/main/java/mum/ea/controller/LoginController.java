package mum.ea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	

	
	@RequestMapping("/login")
	public String login( ) {
		
		
		return "/login/login";
	}
	
	
	
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
	    	
	    	
	     	
	     	return "login/logout";
	     }
	
	    @RequestMapping("/contact")
		public String contact() {
			
			return "/contact";
		}
	    
	    @RequestMapping("/404")
		public String error404() {
			
			return "/404";
		}

}
