package Dao;

import Connection.DBConnection;
import Entity.Payment;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class PaymentDAO {
	DBConnection Dbconnection = new DBConnection();
	public int addPayment(Payment payment) {
        String INSERT_PAYMENT_SQL = "INSERT INTO payment (MaHoaDon,TK, HoTen, SDT, NgayNhanPhong, NgayTraPhong, SoNgayThue, SoNguoiLon, SoTreEm, GiaThuePhong, TongTien, MaPhong) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?);";
        int result = 0;

        try (Connection connection = Dbconnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PAYMENT_SQL)) {
             
            // Set parameters
        	preparedStatement.setInt(1, payment.getMaHoaDon());
            preparedStatement.setString(2, payment.getTK());
            preparedStatement.setString(3, payment.getHoTen());
            preparedStatement.setString(4, payment.getSDT());
            preparedStatement.setDate(5, java.sql.Date.valueOf(payment.getNgayNhanPhong()));
            preparedStatement.setDate(6, java.sql.Date.valueOf(payment.getNgayTraPhong()));
            preparedStatement.setInt(7, payment.getSoNgayThue());
            preparedStatement.setInt(8, payment.getSoNguoiLon());
            preparedStatement.setInt(9, payment.getSoTreEm());
            preparedStatement.setInt(10, payment.getGiaThuePhong());
            preparedStatement.setInt(11, payment.getTongTien());
            preparedStatement.setString(12, payment.getMaPhong());

            // Execute the query
            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            // Process SQL exception
            printSQLException(e);
        }

        return result; // Return number of affected rows
    }

	
    // Method to print SQL exceptions
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


	public boolean exists(int maHoaDon) {
		// TODO Auto-generated method stub
		return false;
	}


	
}
