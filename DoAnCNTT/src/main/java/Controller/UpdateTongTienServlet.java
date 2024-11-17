package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UpdateTongTienServlet")
public class UpdateTongTienServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        double tongTienSauUuDai = Double.parseDouble(request.getParameter("tongTienSauUuDai"));
        session.setAttribute("TongTienSauUuDai", tongTienSauUuDai);
        response.getWriter().write("Cập nhật thành công");
    }
}

