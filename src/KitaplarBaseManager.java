
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
public class KitaplarBaseManager implements IKitaplarBaseManager {

    Connection connection = DBConnect.getConnection();
    ResultSet resultSet;
    PreparedStatement preparedStatement;

    @Override
    public void insertBook(String barkodNo, String kitapAdi, String yazar, String yayinevi, String tur, String sayfa, String status, String createOrModifyDate) {
        String sql = "Insert into Kitaplar(BarkodNo,KitapAdi,Yazar,Yayinevi,Tur,Sayfa,Status,CreateOrModifyDate)values(?,?,?,?,?,?,?,?)";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, barkodNo);
            preparedStatement.setString(2, kitapAdi);
            preparedStatement.setString(3, yazar);
            preparedStatement.setString(4, yayinevi);
            preparedStatement.setString(5, tur);
            preparedStatement.setString(6, sayfa);
            preparedStatement.setString(7, status);
            preparedStatement.setString(8, createOrModifyDate);
            preparedStatement.execute();

        } catch (SQLException ex) {
            DBConnect.showErrorMessage(ex);
        }

    }

    @Override
    public void updateBook(String barkodNo, String kitapAdi, String yazar, String yayinevi, String tur, String sayfa, String status, String createOrModifyDate) {
        String sql = "Update Kitaplar SET KitapAdi=?,Yazar=?,Yayinevi=?,Tur=?,Sayfa=?,Status=?,CreateOrModifyDate=? where BarkodNo=?";
        try {
            preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, kitapAdi);
            preparedStatement.setString(2, yazar);
            preparedStatement.setString(3, yayinevi);
            preparedStatement.setString(4, tur);
            preparedStatement.setString(5, sayfa);
            preparedStatement.setString(6, status);
            preparedStatement.setString(7, createOrModifyDate);
            preparedStatement.setString(8, barkodNo);
            preparedStatement.execute();

        } catch (SQLException ex) {
            DBConnect.showErrorMessage(ex);
        }

    }

    @Override
    public void deleteBook(String barkodNo) {
        String sql = "Delete from Kitaplar where BarkodNo=?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,barkodNo);
            preparedStatement.execute();

        } catch (SQLException ex) {
            DBConnect.showErrorMessage(ex);
        }
    }
}
