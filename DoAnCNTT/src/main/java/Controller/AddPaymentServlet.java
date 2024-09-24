package Controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.PaymentDAO;
import Dao.RoomDao;
import Entity.Payment;

/**
 * Servlet implementation class AddPaymentServlet
 */
@WebServlet("/AddPaymentServlet")
public class AddPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		RoomDao roomDao = new RoomDao();
		int MaHoaDon = Integer.parseInt(session.getAttribute("MaHoaDon").toString());
		String TK = session.getAttribute("Username").toString();
		String HoTen = session.getAttribute("HoTen").toString();
		String SDT = session.getAttribute("Phone").toString();
		LocalDate NgayNhanPhong = LocalDate.parse(session.getAttribute("NgayNhan").toString());
		LocalDate NgayTraPhong = LocalDate.parse(session.getAttribute("NgayTra").toString());
		int SoNgayThue = Integer.parseInt(session.getAttribute("SoNgayThue").toString());
		int SoNguoiLon = Integer.parseInt(session.getAttribute("NguoiLon").toString());
		int SoTreEm = Integer.parseInt(session.getAttribute("TreEm").toString());
		int GiaThuePhong = Integer.parseInt(session.getAttribute("GiaThuePhong").toString());
		int TongTien = Integer.parseInt(session.getAttribute("TongTien").toString());
		String MaPhong = roomDao.TaoMaPhong(session.getAttribute("MaLoaiPhong").toString());
		
		PaymentDAO paymentDAO = new PaymentDAO();
		Payment payment = new Payment(MaHoaDon, TK, HoTen, SDT, NgayNhanPhong, NgayTraPhong, SoNgayThue, SoNguoiLon, SoTreEm, GiaThuePhong, TongTien, MaPhong);
		paymentDAO.addPayment(payment);
		response.sendRedirect("trangchu.jsp");
	}


}
