package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import Connection.DBConnection;
import Entity.HotelBooked;

public class HotelBookedDAO {

	DBConnection Dbconnection = new DBConnection();

	public List<HotelBooked> DisplayPayment(String tk) throws ClassNotFoundException {
		String SELECT_USERS_SQL = "SELECT * FROM payment JOIN room ON payment.MaPhong = room.MaPhong JOIN roomtype ON room.MaLoaiPhong = roomtype.MaLoaiPhong WHERE TK = ?";

		List<HotelBooked> hotelbookeds = new ArrayList<>();
		try (Connection connection = Dbconnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USERS_SQL)) {

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
				HotelBooked hotelbooked = new HotelBooked(MaHoaDon, HoTen, SDT, MaPhong, TenPhong, ViTri, NgayNhanPhong,
						NgayTraPhong, GiaThuePhong, TongTien);
				hotelbookeds.add(hotelbooked);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return hotelbookeds;
	}

	public int calculateOverdueFee(int maHoaDon) throws SQLException {
		Connection connection = null;
		try {
			connection = Dbconnection.getConnection();
			String SELECT_PAYMENT_SQL = "SELECT NgayTraPhong, GiaThuePhong FROM payment WHERE MaHoaDon = ?";

			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PAYMENT_SQL);
			preparedStatement.setInt(1, maHoaDon);
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {
				LocalDate ngayTraPhong = rs.getObject("NgayTraPhong", LocalDate.class);
				int giaThuePhong = rs.getInt("GiaThuePhong");

				LocalDate ngayHienTai = LocalDate.now();

				if (ngayHienTai.isAfter(ngayTraPhong)) {
					long soNgayQuaHan = ChronoUnit.DAYS.between(ngayTraPhong, ngayHienTai);
					return (int) (giaThuePhong * 1.2 * soNgayQuaHan);
				}
			}
		} finally {
			if (connection != null) {
				connection.close();
			}
		}
		return 0;
	}

	public boolean updatePaymentWithFee(int maHoaDon, int phuPhi) throws SQLException {
		Connection connection = null;
		try {
			connection = Dbconnection.getConnection();
			connection.setAutoCommit(false);

			String UPDATE_PAYMENT_SQL = "UPDATE payment SET TongTien = TongTien + ?, NgayTraPhong = ? WHERE MaHoaDon = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PAYMENT_SQL);
			preparedStatement.setInt(1, phuPhi);
			preparedStatement.setObject(2, LocalDate.now());
			preparedStatement.setInt(3, maHoaDon);

			int rowsAffected = preparedStatement.executeUpdate();

			if (rowsAffected > 0) {
				connection.commit();
				return true;
			} else {
				connection.rollback();
				return false;
			}
		} catch (SQLException e) {
			if (connection != null) {
				connection.rollback();
			}
			throw e;
		} finally {
			if (connection != null) {
				connection.setAutoCommit(true);
				connection.close();
			}
		}
	}

	public void deletePayment(int maHoaDon) throws SQLException {
		Connection connection = null;
		try {
			connection = Dbconnection.getConnection();
			connection.setAutoCommit(false);

			String DELETE_PAYMENT_SQL = "DELETE FROM payment WHERE MaHoaDon = ?";
			PreparedStatement preparedStatement = connection.prepareStatement(DELETE_PAYMENT_SQL);
			preparedStatement.setInt(1, maHoaDon);

			int rowsAffected = preparedStatement.executeUpdate();
			if (rowsAffected > 0) {
				connection.commit();
			} else {
				connection.rollback();
			}
		} catch (SQLException e) {
			if (connection != null) {
				connection.rollback();
			}
			throw e;
		} finally {
			if (connection != null) {
				connection.setAutoCommit(true);
				connection.close();
			}
		}
	}

	// Thêm method để lấy chi tiết thanh toán trước khi xóa
	public HotelBooked getHotelBookedDetail(int maHoaDon) throws SQLException {
		Connection connection = null;
		try {
			connection = Dbconnection.getConnection();
			String SELECT_DETAIL_SQL = "SELECT p.*, rt.TenLoaiPhong, rt.ViTri " + "FROM payment p "
					+ "JOIN room r ON p.MaPhong = r.MaPhong " + "JOIN roomtype rt ON r.MaLoaiPhong = rt.MaLoaiPhong "
					+ "WHERE p.MaHoaDon = ?";

			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_DETAIL_SQL);
			preparedStatement.setInt(1, maHoaDon);
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {
				return new HotelBooked(rs.getInt("MaHoaDon"), rs.getString("HoTen"), rs.getString("SDT"),
						rs.getString("MaPhong"), rs.getString("TenLoaiPhong"), rs.getString("ViTri"),
						rs.getObject("NgayNhanPhong", LocalDate.class), rs.getObject("NgayTraPhong", LocalDate.class),
						rs.getInt("GiaThuePhong"), rs.getInt("TongTien"));
			}
		} finally {
			if (connection != null) {
				connection.close();
			}
		}
		return null;
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
