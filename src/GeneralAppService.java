
import java.sql.Date;
import java.text.SimpleDateFormat;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author adem_
 */
public class GeneralAppService {

    //Anasayfaya dönmek için kullanacağım kodu genel olması için bir sınıf üzerinde tanımladım.
    public static void backActionAnaSayfa() {
        AnaSayfa anaSayfa = new AnaSayfa();
        anaSayfa.setVisible(true);
    }

    //Güncel tarihi almak için kullandım. Veri kaydedilirken veri tabanına güncel tarihte giriliyor.
    public static Date createNowDate() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date(System.currentTimeMillis());
        return date;
    }

}
