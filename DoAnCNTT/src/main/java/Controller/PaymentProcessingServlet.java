package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connection.DBConnection;

@WebServlet("/PaymentProcessingServlet")
public class PaymentProcessingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int maHoaDon = Integer.parseInt(session.getAttribute("MaHoaDon").toString());
        double tongTienSauUuDai = (double) session.getAttribute("TongTienSauUuDai");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE payment SET TongTien = ? WHERE MaHoaDon = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setDouble(1, tongTienSauUuDai);
            stmt.setInt(2, maHoaDon);
            stmt.executeUpdate();
            session.removeAttribute("TongTienSauUuDai"); // Xóa sau khi cập nhật
            response.sendRedirect("HotelBookedServlet");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
