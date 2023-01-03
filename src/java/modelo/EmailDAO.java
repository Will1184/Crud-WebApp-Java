/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
/**
 *
 * @author brand
 */
public class EmailDAO {        

    public EmailDAO() {
    }
    
   public void sendEmail(Email email) throws AddressException, MessagingException{
   Properties p = new Properties();
   p.put("mail.smtp.host", "smtp.gmail.com");
   p.setProperty("mail.smtp.starttls.enable", "true");
   p.put("mail.smtp.ssl.trust","smtp.gmail.com");
   p.setProperty("mail.smtp.port", "587");
   p.setProperty("mail.smtp.user", email.getCorreoEmisor());
   p.setProperty("mail.smtp.auth", "true");
   p.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
   
   Session session= Session.getDefaultInstance(p);     
   MimeMessage mensaje =new MimeMessage(session);
   mensaje.setFrom(new InternetAddress(email.getCorreoEmisor()));
   mensaje.addRecipient(Message.RecipientType.TO, new InternetAddress(email.getCorreoReceptor()));
   mensaje.setSubject(email.getSubject());
   mensaje.setText(email.getMensaje());
   Transport t = session.getTransport("smtp");
   t.connect(email.getCorreoEmisor(),email.getContraseña());
   t.sendMessage(mensaje, mensaje.getAllRecipients());
   t.close();
   
   }
   
}
