package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.DBConnection;
import Entity.UuDai;
/**
 * Servlet implementation class GetUuDaiServlet
 */
@WebServlet("/GetUuDaiServlet")
public class GetUuDaiServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userId = (String) request.getSession().getAttribute("Username");
        ArrayList<UuDai> uuDaiList = new ArrayList<>();

        if (userId != null) {
            try (Connection conn = DBConnection.getConnection()) {
                String sql = "SELECT UuDai.MaUuDai, UuDai.TenUuDai, UuDai.GiaTri, UuDai.LoaiUuDai FROM AccountUuDai " +
                             "JOIN UuDai ON AccountUuDai.MaUuDai = UuDai.MaUuDai WHERE AccountUuDai.TK = ?";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, userId);
                ResultSet rs = stmt.executeQuery();

                while (rs.next()) {
                    UuDai uudai = new UuDai(
                        rs.getInt("MaUuDai"),
                        rs.getString("TenUuDai"),
                        rs.getDouble("GiaTri"),
                        rs.getInt("LoaiUuDai"), sql
                    );
                    uuDaiList.add(uudai);
                }
                rs.close();
                stmt.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        request.setAttribute("UuDaiList", uuDaiList);
        request.getRequestDispatcher("paying.jsp").forward(request, response);
    }
}