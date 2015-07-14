package mum.ea.controller;

import java.util.HashMap;
import java.util.Map;

import mum.ea.model.User;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.velocity.VelocityEngineUtils;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@Autowired
	private MailSender mailSender;
	private VelocityEngine velocityEngine;

	
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

	    @RequestMapping("/mail")
	    public String sendMail(){
	    	
	    	User user = new User();
	    	
	    	SimpleMailMessage message = new SimpleMailMessage();
	        message.setTo("bipinsharmaregmi@gmail.com");
	        message.setSubject("test");

//	        Map model = new HashMap();
//            model.put("user", user);
//	       String text = VelocityEngineUtils.mergeTemplateIntoString(
//                    velocityEngine, "com/test/email-template.vm", model);
//             message.setText(text, true);
//	        message.setText("hello");
//	        
//	        
//	        try
//	        {
//	        	mailSender.send(message);
//	        }
//	        
//	        catch(Exception ex)
//	        {
//	        	System.out.println("can't send email"+ex);
//	        }
//	    	
	        return "redirect:/home";
 	    }
	  
}
