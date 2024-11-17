package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Connection.DBConnection;
import Dao.UuDaiDAO;
import Entity.HotelBooked;
import Entity.UuDai;
/**
 * Servlet implementation class ApplyUuDaiServlet
 */
@WebServlet("/ApplyUuDaiServlet")
public class ApplyUuDaiServlet extends HttpServlet {
	UuDaiDAO uuDaiDAO = new UuDaiDAO();
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String maUuDai = request.getParameter("maUuDai");
        //double tongTien = (double) request.getSession().getAttribute("TongTien");
        HttpSession session = request.getSession();
        String tk = session.getAttribute("Username").toString();
        List<UuDai> uuDais = new ArrayList<UuDai>();
        try {
			uuDais = uuDaiDAO.getUuDaiByTK(tk);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        session.setAttribute("UuDaiList", uuDais);
		RequestDispatcher dispatcher = request.getRequestDispatcher("paying.jsp");
		dispatcher.forward(request, response);

		/*
		 * try (Connection conn = DBConnection.getConnection()) { String sql =
		 * "SELECT GiaTri, LoaiUuDai FROM UuDai WHERE MaUuDai = ?"; PreparedStatement
		 * stmt = conn.prepareStatement(sql); stmt.setString(1, maUuDai); ResultSet rs =
		 * stmt.executeQuery();
		 * 
		 * if (rs.next()) { double giaTri = rs.getDouble("GiaTri"); int loaiUuDai =
		 * rs.getInt("LoaiUuDai");
		 * 
		 * double tongTienSauUuDai = tongTien; if (loaiUuDai == 1) { tongTienSauUuDai -=
		 * tongTien * giaTri / 100; } else if (loaiUuDai == 2) { tongTienSauUuDai -=
		 * giaTri; }
		 * 
		 * // Lưu tổng tiền mới vào session
		 * request.getSession().setAttribute("TongTienSauUuDai", tongTienSauUuDai); }
		 * response.sendRedirect("paying.jsp");
		 * 
		 * } catch (Exception e) { e.printStackTrace(); }
		 */
    }
}