package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import Connection.DBConnection;
import Entity.HotelBooked;
import Entity.Payment;

public class HotelBookedDAO {
	
	DBConnection Dbconnection = new DBConnection();
	public List<HotelBooked> DisplayPayment(String tk) throws ClassNotFoundException {
        String SELECT_USERS_SQL = "SELECT * FROM payment JOIN room ON payment.MaPhong = room.MaPhong JOIN roomtype ON room.MaLoaiPhong = roomtype.MaLoaiPhong WHERE TK = ?";

        List<HotelBooked> hotelbookeds = new ArrayList<>();
        try (Connection connection = Dbconnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USERS_SQL))
        {
     
            preparedStatement.setString(1, tk);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
            	int MaHoaDon = resultSet.getInt("MaHoaDon");
        		String HoTen = resultSet.getString("HoTen");
        		String SDT = resultSet.getString("SDT");
        		String MaPhong = resultSet.getString("MaPhong");
        		String TenPhong = resultSet.getString("TenLoaiPhong");
        		String ViTri = resultSet.getString("ViTri");
        		LocalDate NgayNhanPhong = resultSet.getObject("NgayNhanPhong", LocalDate.class);
        		LocalDate NgayTraPhong = resultSet.getObject("NgayTraPhong", LocalDate.class);
        		int GiaThuePhong = resultSet.getInt("GiaThuePhong");
        		int TongTien = resultSet.getInt("TongTien");

                // Tạo một đối tượng Payment và thêm vào danh sách
        		HotelBooked hotelbooked = new HotelBooked(MaHoaDon, HoTen, SDT, MaPhong, TenPhong, ViTri, NgayNhanPhong, NgayTraPhong, GiaThuePhong, TongTien);
        		hotelbookeds.add(hotelbooked);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return hotelbookeds;
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
