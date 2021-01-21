
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author adem_
 */
public class OgrencilerBaseManager implements IOgrencilerBaseManager {

    Connection connection = DBConnect.getConnection();
    ResultSet resultSet;
    PreparedStatement preparedStatement;

    @Override
    public void insertStudent(String tcNo, String adSoyad, String cinsiyet, String email, String telNo,String status, String createOrModifyDate){
        String sql = "Insert into Ogrenciler(TCNo,AdSoyad,Cinsiyet,Email,TelNo,Status,CreateOrModifyDate) values (?,?,?,?,?,?,?)";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, tcNo);
            preparedStatement.setString(2, adSoyad);
            preparedStatement.setString(3, cinsiyet);
            preparedStatement.setString(4, email);
            preparedStatement.setString(5, telNo);
            preparedStatement.setString(6, status);
            preparedStatement.setString(7, createOrModifyDate);
            preparedStatement.execute();

        } catch (SQLException ex) {
            DBConnect.showErrorMessage(ex);
        }

    }

    @Override
    public void updateStudent(String tcNo, String adSoyad, String cinsiyet, String email, String telNo,String status, String createOrModifyDate){
        String sql = "Update Ogrenciler SET AdSoyad=?,Cinsiyet=?,Email=?,TelNo=?,Status=?,CreateOrModifyDate=? where TCNo=?";
        try {
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, adSoyad);
            preparedStatement.setString(2, cinsiyet);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, telNo);
            preparedStatement.setString(5, status);
            preparedStatement.setString(6, createOrModifyDate);
            preparedStatement.setString(7, tcNo);
            preparedStatement.execute();

        } catch (SQLException ex) {
            DBConnect.showErrorMessage(ex);
        }

    }

    @Override
    public void deleteStudent(String tcNo) {
        String sql = "Delete from Ogrenciler where TCNo=?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,tcNo);
            preparedStatement.execute();

        } catch (SQLException ex) {
            DBConnect.showErrorMessage(ex);
        }
    }
}
