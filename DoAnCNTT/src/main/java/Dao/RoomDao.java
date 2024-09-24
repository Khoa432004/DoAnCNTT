package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Connection.DBConnection;

public class RoomDao {
	DBConnection Dbconnection = new DBConnection();
	public String TaoMaPhong(String MaLoaiPhong)
	{
        String sql = "SELECT MaPhong FROM room WHERE MaLoaiPhong = ? AND MaPhong NOT IN (SELECT MaPhong FROM payment);";
        String maPhong = "";

        try (Connection connection = Dbconnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, MaLoaiPhong);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                	maPhong = resultSet.getString("MaPhong");
                }
            }
        } catch (SQLException e) {
            printSQLException(e);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return maPhong;
    }
	
	private void printSQLException(SQLException ex) {
        for (Throwable t : ex) {
            if (t instanceof SQLException) {
                t.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) t).getSQLState());
                System.err.println("Error Code: " + ((SQLException) t).getErrorCode());
                System.err.println("Message: " + t.getMessage());
                Throwable t1 = ex.getCause();
                while (t1 != null) {
                    System.err.println("Cause: " + t1.getMessage());
                    t1 = t1.getCause();
                }
            }
        }
    }
}
