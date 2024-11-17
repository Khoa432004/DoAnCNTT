package Controller;

import Connection.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class AddUuDaiServlet
 */
@WebServlet("/AddUuDaiServlet")
public class AddUuDaiServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String maCode = request.getParameter("maCode");

        if (userId == null || maCode == null) {
            response.getWriter().write("Thông tin không hợp lệ.");
            return;
        }

        try (Connection conn = DBConnection.getConnection()) {
            if (conn != null) {
                // Kiểm tra xem tài khoản có tồn tại không
                String checkAccountSql = "SELECT * FROM account WHERE TK = ?";
                try (PreparedStatement checkAccountStmt = conn.prepareStatement(checkAccountSql)) {
                    checkAccountStmt.setString(1, userId);
                    ResultSet rsAccount = checkAccountStmt.executeQuery();
                    if (!rsAccount.next()) {
                        response.getWriter().write("Tài khoản không tồn tại.");
                        return;
                    }
                }

                // Lấy MaUuDai từ UuDai bằng MaCode
                String getMaUuDaiSQL = "SELECT MaUuDai FROM UuDai WHERE MaCode = ?";
                int maUuDai = 0;

                try (PreparedStatement getStmt = conn.prepareStatement(getMaUuDaiSQL)) {
                    getStmt.setString(1, maCode);
                    ResultSet rs = getStmt.executeQuery();
                    if (rs.next()) {
                        maUuDai = rs.getInt("MaUuDai");
                    }
                }

                if (maUuDai != 0) {
                    // Kiểm tra xem ưu đãi đã tồn tại trong AccountUuDai chưa
                    String checkSql = "SELECT * FROM AccountUuDai WHERE MaUuDai = ? AND TK = ?";
                    try (PreparedStatement checkStmt = conn.prepareStatement(checkSql)) {
                        checkStmt.setInt(1, maUuDai);
                        checkStmt.setString(2, userId);
                        ResultSet rs = checkStmt.executeQuery();

                        if (rs.next()) {
                            response.getWriter().write("Bạn đã nhận ưu đãi này rồi.");
                            return;
                        }
                    }

                    // Thêm ưu đãi vào AccountUuDai nếu chưa tồn tại
                    String insertSql = "INSERT INTO AccountUuDai (MaUuDai, TK) VALUES (?, ?)";
                    try (PreparedStatement insertStmt = conn.prepareStatement(insertSql)) {
                        insertStmt.setInt(1, maUuDai);
                        insertStmt.setString(2, userId);
                        insertStmt.executeUpdate();
                    }

                    response.getWriter().write("Bạn đã nhận ưu đãi thành công.");
                } else {
                    response.getWriter().write("Mã ưu đãi không hợp lệ.");
                }
            } else {
                response.getWriter().write("Không thể kết nối đến cơ sở dữ liệu.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Lỗi cơ sở dữ liệu: " + e.getMessage());
        }
    }
}
