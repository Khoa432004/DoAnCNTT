package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeletePayment")
public class DeletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Dao.HotelBookedDAO hotelBookedDAO;

	@Override
	public void init() {
		hotelBookedDAO = new Dao.HotelBookedDAO();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			int maHoaDon = (Integer) session.getAttribute("MaHoaDon");
			hotelBookedDAO.deletePayment(maHoaDon);

			// Xóa các attribute session không cần thiết nữa
			session.removeAttribute("MaHoaDon");
			session.removeAttribute("HotelBookedDetail");
			session.removeAttribute("PhuPhi");

			response.sendRedirect("trangchu.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().write("Có lỗi xảy ra khi xóa thanh toán!");
		}
	}
}