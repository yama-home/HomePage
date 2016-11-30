package net.hyunny333.util;

import java.util.List;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSender {
	public static void send(List<String> toMail, String fromMail, String message, String title, String gmail, String id, String pwd) throws Exception {
		Properties p = new Properties();
		p.put("mail.smtp.user", "hyunny333@gmail.com");
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");

		Authenticator auth = new SMTPAuthenticator(id, pwd);
		Session session = Session.getInstance(p, auth);
		session.setDebug(true);

		MimeMessage msg = new MimeMessage(session);
		msg.setSubject(title, "UTF-8");
		Address fromAddr = new InternetAddress(fromMail);
		msg.setFrom(fromAddr);

		InternetAddress[] addressTo = new InternetAddress[toMail.size()];
		for(int i=0; i<toMail.size(); i++) {
			addressTo[i] = new InternetAddress(toMail.get(i));
		}
		msg.setRecipients(Message.RecipientType.TO, addressTo);
		msg.setContent(message, "text/html; charset=utf8");

		Transport.send(msg);
	}

	private static class SMTPAuthenticator extends Authenticator {
		private String id;
		private String pwd;

		public SMTPAuthenticator(String id, String pwd) {
			this.id = id;
			this.pwd = pwd;
		}

		public PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication("hyunny333", "xpcepqzltccceogm");
		}
	}
}
