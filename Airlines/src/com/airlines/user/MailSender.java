package com.airlines.user;

import java.util.Properties;    
import javax.mail.*;    
import javax.mail.internet.*;    
class MailSender{  
    public static void sendEmail(String fromEmail, String userName, String password, String toEmail,String subject,String message) {
    //(String from,String password,String to,String sub,String msg){  
          //Get properties object    
          Properties props = new Properties();    
          props.put("mail.smtp.host", "smtp.gmail.com");    
          props.put("mail.smtp.socketFactory.port", "465");    
          props.put("mail.smtp.socketFactory.class",    
                    "javax.net.ssl.SSLSocketFactory");    
          props.put("mail.smtp.auth", "true");    
          props.put("mail.smtp.port", "465");    
          //get Session   
          Session session = Session.getDefaultInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication(fromEmail,password);  
           }    
          });    
          //compose message    
          try {    
           MimeMessage mailmessage = new MimeMessage(session);    
           mailmessage.addRecipient(Message.RecipientType.TO,new InternetAddress(toEmail));    
           mailmessage.setSubject(subject);    
           mailmessage.setText(message);    
           //send message  
           Transport.send(mailmessage);    
           System.out.println("message sent successfully");    
          } catch (MessagingException e) {throw new RuntimeException(e);}    
             
    }  
}   