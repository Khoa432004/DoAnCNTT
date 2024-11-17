package Dao;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import Connection.DBConnection;
import Entity.HotelBooked;
import Entity.UuDai;

public class UuDaiDAO {
	DBConnection Dbconnection = new DBConnection();

    // Thêm ưu đãi mới
    public boolean addUuDai(UuDai uudai) throws SQLException {
    	Connection conn = Dbconnection.getConnection();
        String sql = "INSERT INTO UuDai (TenUuDai, GiaTri, LoaiUuDai, MoTa) VALUES (?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, uudai.getTenUuDai());
            stmt.setDouble(2, uudai.getGiaTri());
            stmt.setInt(3, uudai.getLoaiUuDai());
            stmt.setString(4, uudai.getMoTa());
            return stmt.executeUpdate() > 0;
        }
    }

    // Lấy tất cả ưu đãi
    public List<UuDai> getAllUuDai() throws SQLException {
    	Connection conn = Dbconnection.getConnection();
        List<UuDai> uuDaiList = new ArrayList<>();
        String sql = "SELECT * FROM UuDai";
        try (Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                UuDai uudai = new UuDai(
                    rs.getInt("MaUuDai"),
                    rs.getString("TenUuDai"),
                    rs.getDouble("GiaTri"),
                    rs.getInt("LoaiUuDai"),
                    rs.getString("MoTa")
                );
                uuDaiList.add(uudai);
            }
        }
        return uuDaiList;
    }

    // Lấy ưu đãi theo mã
    public UuDai getUuDaiById(int maUuDai) throws SQLException {
    	Connection conn = Dbconnection.getConnection();
        String sql = "SELECT * FROM UuDai WHERE MaUuDai = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, maUuDai);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new UuDai(
                    rs.getInt("MaUuDai"),
                    rs.getString("TenUuDai"),
                    rs.getDouble("GiaTri"),
                    rs.getInt("LoaiUuDai"),
                    rs.getString("MoTa")
                );
            }
        }
        return null;
    }
    
    // Lấy ưu đãi theo mã
    public List<UuDai> getUuDaiByTK(String tk) throws SQLException {
    	Connection conn = Dbconnection.getConnection();
    	String sql = "SELECT * " +
                "FROM accountuudai " +
                "INNER JOIN uudai ON accountuudai.MaUuDai = uudai.MaUuDai " +
                "WHERE accountuudai.TK = ?";
        List<UuDai> uuDais = new ArrayList<>();
        try (Connection connection = Dbconnection.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(sql))
           {
        
               preparedStatement.setString(1, tk);

               ResultSet resultSet = preparedStatement.executeQuery();
               while (resultSet.next()) {
            	   int maUuDai = resultSet.getInt("MaUuDai");
            	   String tenUuDai = resultSet.getString("TenUuDai");
            	   double giaTri = resultSet.getDouble("GiaTri");;
            	   int loaiUuDai = resultSet.getInt("LoaiUuDai");;
            	   String moTa = resultSet.getString("MoTa");;
            	   System.out.print(maUuDai);
            	   System.out.print(tenUuDai);
            	   System.out.print(giaTri);
            	   System.out.print(loaiUuDai);
            	   System.out.print(moTa);
            	   
           		UuDai uuDai = new UuDai(maUuDai,tenUuDai,giaTri,loaiUuDai,moTa);
           		uuDais.add(uuDai);
               }
           } catch (SQLException e) {
               printSQLException(e);
           }
           return uuDais;
    }
    
    // Cập nhật ưu đãi
    public boolean updateUuDai(UuDai uudai) throws SQLException {
    	Connection conn = Dbconnection.getConnection();
        String sql = "UPDATE UuDai SET TenUuDai = ?, GiaTri = ?, LoaiUuDai = ?, MoTa = ? WHERE MaUuDai = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, uudai.getTenUuDai());
            stmt.setDouble(2, uudai.getGiaTri());
            stmt.setInt(3, uudai.getLoaiUuDai());
            stmt.setString(4, uudai.getMoTa());
            stmt.setInt(5, uudai.getMaUuDai());
            return stmt.executeUpdate() > 0;
        }
    }

    // Xóa ưu đãi
    public boolean deleteUuDai(int maUuDai) throws SQLException {
    	Connection conn = Dbconnection.getConnection();
        String sql = "DELETE FROM UuDai WHERE MaUuDai = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, maUuDai);
            return stmt.executeUpdate() > 0;
        }
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
