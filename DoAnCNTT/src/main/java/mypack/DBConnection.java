package mypack;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection() throws SQLException {
		//Tạo thông tin
        String url = "jdbc:mysql://localhost:3306/doancntt";
        String user = "root";
        String password = "1234";

        // Tải driver
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Không tìm thấy driver JDBC: " + e.getMessage());
            return null;
        }

        // Tạo kết nối
        Connection connection = DriverManager.getConnection(url, user, password);
        return connection;
    }
}
