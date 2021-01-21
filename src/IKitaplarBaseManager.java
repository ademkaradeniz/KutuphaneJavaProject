/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author adem_
 */
public interface IKitaplarBaseManager {

    void insertBook(String barkodNo, String kitapAdi, String yazar, String yayinevi, String tur, String sayfa, String status, String createOrModifyDate);

    void updateBook(String barkodNo, String kitapAdi, String yazar, String yayinevi, String tur, String sayfa, String status, String createOrModifyDate);

    void deleteBook(String barkodNo);
}
