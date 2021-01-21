
import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author adem_
 */
public class MailAppService {

    public static int kod;

    //Gönderilen mail adresine e-posta gönderir.
    public static boolean sendMail(String mail) {
        
        final String email = "blackseakutuphanemm@gmail.com";
        final String password = "1q2w3e4r5T*";

        try {
            Random rnd = new Random();
            int newkod = rnd.nextInt(800000) + 199990;
            kod = newkod;
            // E-postayı gönderdiğiniz email adresi
            String from = email;
            // hesabınızın parolası
            String pass = password;
            // e-postanın gönderileceği adresler
            String[] to = {mail};
            // host
            String host = "smtp.gmail.com";

            Properties props = System.getProperties();
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.user", from);
            props.put("mail.smtp.password", pass);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");

            Session session = Session.getDefaultInstance(props, null);
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            InternetAddress[] toAddress = new InternetAddress[to.length];
            for (int i = 0; i < to.length; i++) {
                toAddress[i] = new InternetAddress(to[i]);
            }

            for (int i = 0; i < toAddress.length; i++) {
                message.addRecipient(Message.RecipientType.TO, toAddress[i]);
            }
            // başlık
            message.setSubject("Kütüphane Doğrulama Kodunuz!");
            // içerik
            message.setText("Doğrulama Kodu : " + kod);
            Transport transport = session.getTransport("smtp");
            transport.connect(host, from, pass);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }
}
