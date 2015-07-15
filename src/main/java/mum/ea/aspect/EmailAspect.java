package mum.ea.aspect;

import mum.ea.model.User;
import mum.ea.service.impl.EmailServiceImpl;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Aspect
@Component
public class EmailAspect {
	
	@Autowired
	private EmailServiceImpl email;
	public EmailAspect() {
		System.out.println("Asopect constructor called");
	}
	

//    @Before("execution(* mum.ea.controller.*.*(..))")
//	public  void printfn(JoinPoint jp )
//	{
//		System.out.println(jp.getSignature()+ "email");
//		//email.sendEmail("", "", "", "");
//	}
	
    @Before("execution(* mum.ea.controller.UserController.saveUser(..))")
	public  void EmailLog(JoinPoint jp )
	{
		User us = (User) jp.getArgs()[0];
		email.sendEmail(us.getEmailAddress(), "Registration", us.getUsername(), "Registered Sucessfully!!");
	}
	


}
