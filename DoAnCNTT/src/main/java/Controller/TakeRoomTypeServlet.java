package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class TakeRoomTypeServlet
 */
@WebServlet("/addmaloaiphong")
public class TakeRoomTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TakeRoomTypeServlet() {
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
		String maloaiphong = request.getParameter("MaLoaiPhong");
		session.setAttribute("MaLoaiPhong", maloaiphong);
		
        // Thiết lập loại nội dung là HTML
        response.setContentType("text/html");

        // Gửi mã JavaScript để quay lại trang trước đó
        response.getWriter().println("<html><body>");
        response.getWriter().println("<script type='text/javascript'>");
        response.getWriter().println("window.history.back();");
        response.getWriter().println("</script>");
        response.getWriter().println("</body></html>");
	}

}
