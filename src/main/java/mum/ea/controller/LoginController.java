package mum.ea.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import mum.ea.model.User;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.velocity.VelocityEngineUtils;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private VelocityEngine velocityEngine;

	@RequestMapping("/login")
	public String login() {

		return "/login/login";
	}

	@RequestMapping("/loginfailed")
	public String loginFailed() {

		return "login/loginfailed";
	}

	@RequestMapping("/403")
	public String accessDenied() {

		return "login/accessdenied";
	}

	@RequestMapping("/logout")
	public String logout() {

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
	public String sendMail() throws MessagingException {

		final User user = new User();

		MimeMessagePreparator preparator = new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper message = new MimeMessageHelper(mimeMessage);

				message.setTo("madeye.lupeen@gmail.com");
//				message.setFrom("ajesh.mahto@gmail.com"); // could be
															// parameterized...
				Map<String, Object> model = new HashMap<String, Object>();
				model.put("user", user);
				@SuppressWarnings("deprecation")
				String text = VelocityEngineUtils.mergeTemplateIntoString(
						velocityEngine, "template/email-template.vm", model);
				message.setText("<p><b>Hello Ajesh</b></p>" + text, true);

			}
		};
		this.mailSender.send(preparator);

		return "redirect:/";
	}

}
