package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connection.DBConnection;
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
		int maHoaDon = Integer.parseInt(session.getAttribute("MaHoaDon").toString());
		String TK = session.getAttribute("Username").toString();
		String HoTen = session.getAttribute("HoTen").toString();
		String SDT = session.getAttribute("Phone").toString();
		LocalDate NgayNhanPhong = LocalDate.parse(session.getAttribute("NgayNhan").toString());
		LocalDate NgayTraPhong = LocalDate.parse(session.getAttribute("NgayTra").toString());
		int SoNgayThue = Integer.parseInt(session.getAttribute("SoNgayThue").toString());
		int SoNguoiLon = Integer.parseInt(session.getAttribute("NguoiLon").toString());
		int SoTreEm = Integer.parseInt(session.getAttribute("TreEm").toString());
		int GiaThuePhong = Integer.parseInt(session.getAttribute("GiaThuePhong").toString());
//		int TongTien = Integer.parseInt(session.getAttribute("TongTien").toString());
//		int TongTien = Integer.parseInt(session.getAttribute("TongTienSauUuDai").toString());
		int TongTien = (session.getAttribute("TongTienSauUuDai") != null) 
			    ? (int) Double.parseDouble(session.getAttribute("TongTienSauUuDai").toString())
			    : Integer.parseInt(session.getAttribute("TongTien").toString());

		String MaPhong = roomDao.TaoMaPhong(session.getAttribute("MaLoaiPhong").toString());
		
		if (MaPhong == null || MaPhong.isEmpty()) {
		    // Xử lý lỗi nếu không tìm thấy phòng, có thể chuyển hướng lại hoặc thông báo lỗi
		    response.getWriter().println("Phòng không tồn tại hoặc không hợp lệ.");
		    return;
		}
		
		PaymentDAO paymentDAO = new PaymentDAO();
		if (!paymentDAO.exists(maHoaDon)) {
		Payment payment = new Payment(maHoaDon, TK, HoTen, SDT, NgayNhanPhong, NgayTraPhong, SoNgayThue, SoNguoiLon, SoTreEm, GiaThuePhong, TongTien, MaPhong);
		paymentDAO.addPayment(payment);
		}
		// Xóa giá trị `TongTienSauUuDai` sau khi lưu vào payment
		session.removeAttribute("TongTienSauUuDai");
		response.sendRedirect("trangchu.jsp");
		
		
		String tenThe = request.getParameter("tenthe");
        String soThe = request.getParameter("sothe");
        String maBaoMat = request.getParameter("mabaomat");

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.getConnection();
            String sql = "SELECT * FROM CardInfo WHERE TK = ? AND CardNumber = ? AND SecurityCode = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, tenThe); // Kiểm tra tên tài khoản (tên thẻ)
            stmt.setString(2, soThe);  // Kiểm tra số thẻ
            stmt.setString(3, maBaoMat); // Kiểm tra mã bảo mật

            rs = stmt.executeQuery();
            if (rs.next()) {
                // Nếu thông tin thẻ hợp lệ, tiếp tục quy trình thanh toán
                response.getWriter().println("Thanh toán thành công.");
            } else {
                // Nếu không hợp lệ, thông báo lỗi
                response.getWriter().println("Thông tin thẻ không hợp lệ. Vui lòng kiểm tra lại.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    
	}


}
