package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.time.temporal.ChronoUnit;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connection.DBConnection;
import Dao.RoomTypeDAO;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/addchitietphong")
public class RoomInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomInformationServlet() {
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
		
        // Đặt mã hóa ký tự để hỗ trợ tiếng Việt
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        // Định dạng ngày
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        // Tạo mã hóa đơn ngẫu nhiên
        Random random = new Random();
        int mahoadon = 100000 + random.nextInt(900000);

        // Lấy tham số từ yêu cầu
        String hoten = request.getParameter("hoten");
        String phone = request.getParameter("phone");
        String ngaynhanStr = request.getParameter("ngaynhan");
        String ngaytraStr = request.getParameter("ngaytra");
        String nguoilon = request.getParameter("nguoilon");
        String treem = request.getParameter("treem");

        // Biến để lưu trữ ngày nhận và ngày trả
        LocalDate ngaynhan = null;
        LocalDate ngaytra = null;
        long songaythue = 0;

        try {
            // Kiểm tra và phân tích ngày nhận
            if (ngaynhanStr == null || ngaynhanStr.trim().isEmpty()) {
                throw new IllegalArgumentException("Ngày nhận không được để trống.");
            }
            ngaynhan = LocalDate.parse(ngaynhanStr, formatter);

            // Kiểm tra và phân tích ngày trả
            if (ngaytraStr == null || ngaytraStr.trim().isEmpty()) {
                throw new IllegalArgumentException("Ngày trả không được để trống.");
            }
            ngaytra = LocalDate.parse(ngaytraStr, formatter);

            // Tính số ngày thuê
            songaythue = ChronoUnit.DAYS.between(ngaynhan, ngaytra);
            if (songaythue <= 0) {
                throw new IllegalArgumentException("Ngày trả phải sau ngày nhận.");
            }

        } catch (DateTimeParseException e) {
            // Xử lý lỗi định dạng ngày
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Định dạng ngày không hợp lệ. Vui lòng sử dụng định dạng yyyy-MM-dd.");
            return;
        } catch (IllegalArgumentException e) {
            // Xử lý lỗi dữ liệu đầu vào
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
            return;
        }

        // Thiết lập các thuộc tính phiên
        HttpSession session = request.getSession();
        
        String roomtype = session.getAttribute("MaLoaiPhong").toString();
        RoomTypeDAO roomTypeDAO = new RoomTypeDAO();
        int giathuephong = roomTypeDAO.getRoomPrice(roomtype);
        
        session.setAttribute("MaHoaDon", mahoadon);
        session.setAttribute("HoTen", hoten);
        session.setAttribute("Phone", phone);
        session.setAttribute("NgayNhan", ngaynhan);
        session.setAttribute("NgayTra", ngaytra);
        session.setAttribute("SoNgayThue", songaythue);
        session.setAttribute("NguoiLon", nguoilon);
        session.setAttribute("TreEm", treem);
        session.setAttribute("GiaThuePhong", giathuephong);
        session.setAttribute("TongTien", giathuephong*songaythue);
        // Chuyển hướng sau khi xử lý thành công
        response.sendRedirect("paying.jsp");
    }


}
