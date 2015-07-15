package mum.ea.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import mum.ea.model.User;
import mum.ea.service.EmailService;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;

@Service
public class EmailServiceImpl implements EmailService {

	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private VelocityEngine velocityEngine;

	public void sendEmail(final String to, final String subject, final String name, final String text) {

		final User user = new User();

		MimeMessagePreparator preparator = new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper message = new MimeMessageHelper(mimeMessage);

				message.setTo(to);
				message.setSubject(subject);

				Map<String, Object> model = new HashMap<String, Object>();
				model.put("user", user);
				//@SuppressWarnings("deprecation")
				//String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, "template/email-template.vm", model);
				message.setText("<p><b>Hello "+name+" </b></p>" +text, true);

			}
		};
		this.mailSender.send(preparator);

	}

}
