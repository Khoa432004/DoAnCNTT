package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.HotelBookedDAO;
import Entity.HotelBooked;

/**
 * Servlet implementation class HotelInformationBooked
 */
@WebServlet("/HotelInformationBooked")
public class HotelInformationBooked extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HotelBookedDAO hotelBookedDAO;

	@Override
	public void init() {
		hotelBookedDAO = new HotelBookedDAO();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HotelInformationBooked() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		HttpSession session = request.getSession();
//		String MaHoaDon = request.getParameter("MaHoaDon").toString();
//		session.setAttribute("MaHoaDon", MaHoaDon);
//		response.sendRedirect("chitietphong.jsp");
//	}

//	@Override
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//		HttpSession session = request.getSession();
//		String maHoaDon = request.getParameter("MaHoaDon");
//
//		HotelBookedDAO hotelBookedDAO = new HotelBookedDAO();
//		int phuPhi = hotelBookedDAO.calculateOverdueFee(maHoaDon);
//
//		if (phuPhi > 0) {
//			// Cập nhật payment với phụ phí
//			hotelBookedDAO.updatePayment(maHoaDon, phuPhi);
//			session.setAttribute("PhuPhi", phuPhi);
//		}
//
//		session.setAttribute("MaHoaDon", maHoaDon);
//		response.sendRedirect("hoadonphong.jsp");
//	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		try {
			int maHoaDon = Integer.parseInt(request.getParameter("MaHoaDon"));

			// Tính phí trễ hạn (nếu có)
			int phuPhi = hotelBookedDAO.calculateOverdueFee(maHoaDon);

			// Lấy thông tin chi tiết trước khi cập nhật
			HotelBooked hotelBooked = hotelBookedDAO.getHotelBookedDetail(maHoaDon);
			session.setAttribute("HotelBookedDetail", hotelBooked);

			if (phuPhi > 0) {
				// Cập nhật payment với phụ phí
				boolean updated = hotelBookedDAO.updatePaymentWithFee(maHoaDon, phuPhi);
				if (updated) {
					session.setAttribute("PhuPhi", phuPhi);
				}
			}

			session.setAttribute("MaHoaDon", maHoaDon);
			response.sendRedirect("hoadonphong.jsp");

		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().write("Có lỗi xảy ra khi xử lý thanh toán!");
		}
	}

}
