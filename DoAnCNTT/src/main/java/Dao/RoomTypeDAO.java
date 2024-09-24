package Dao;

import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Connection.DBConnection;

public class RoomTypeDAO {
	DBConnection Dbconnection = new DBConnection(); 
	public int getRoomPrice(String maLoaiPhong) {
        String SELECT_PRICE_SQL = "SELECT Gia FROM roomtype WHERE MaLoaiPhong = ?;";
        int gia = 0;

        try (Connection connection = Dbconnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRICE_SQL)) {

            preparedStatement.setString(1, maLoaiPhong);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    gia = resultSet.getInt("Gia");
                }
            }
        } catch (SQLException e) {
            printSQLException(e);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return gia;
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
