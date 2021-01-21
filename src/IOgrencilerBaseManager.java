/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author adem_
 */
public interface IOgrencilerBaseManager {

    void insertStudent(String tcNo, String adSoyad, String cinsiyet, String email, String telNo,String status, String createOrModifyDate);

    void updateStudent(String tcNo, String adSoyad, String cinsiyet, String email, String telNo,String status, String createOrModifyDate);

    void deleteStudent(String tcNo);
}
