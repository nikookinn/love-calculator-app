package com.home.service;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.Properties;

@Service
public class EmailServiceImpl implements EmailService{

    @Value("${sender.email}")
    public String email;

    @Value("${email.app.password}")
    public String password;

    private static Properties getGmailProperties(){
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "465");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.socketFactory.port", "465");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        prop.put("mail.debug", "true");
        return prop;
    }

    public Session getEmailSession(){
        return Session.getInstance(getGmailProperties(), new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(email,password);
            }
        });
    }

    @Override
    public void sendEmail(String email,String senderName, String receiverName, String result) throws MessagingException {
        Message message = new MimeMessage(getEmailSession());
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
        message.setSubject("RELATIONSHIP CALCULATOR APP");
        message.setText("Hi "+receiverName+" , The result between you and "+senderName+" is "+ result +" .");


        Transport.send(message);

    }



}
