
import java.sql.*;

public class DBConnect {

    Connection connection;
    
    static String dbUrl = "jdbc:sqlserver://localhost:1433;databaseName=KTPHane;user=sa;password=1q2w3e4r5T*;";

    public static Connection getConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection connection = DriverManager.getConnection(dbUrl);
            return connection;
        } catch (ClassNotFoundException | SQLException exception) {
            System.out.println("Error : " + exception);
            return null;
        }

    }

    static void showErrorMessage(SQLException exception) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

}
