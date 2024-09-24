package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
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
		String timkiem = request.getParameter("diadiem").toString();
		if(timkiem.equals("VT") || timkiem.equals("Vũng Tàu") )
		{
			response.sendRedirect("diemden-VungTau.jsp");
			return;
		}
		
		if(timkiem.equals("TPHCM") || timkiem.equals("Thành Phố Hồ Chí Minh") )
		{
			response.sendRedirect("diemden-HoChiMinh.jsp");
			return;
		}
		
		if(timkiem.equals("DN") || timkiem.equals("Đà Nẵng") )
		{
			response.sendRedirect("diemden-DaNang.jsp");
			return;
		}
		
		if(timkiem.equals( "HN") || timkiem.equals( "Hà Nội") )
		{
			response.sendRedirect("diemden-HaNoi.jsp");
			return;
		}
		
		if(timkiem.equals( "HUE") || timkiem.equals( "Huế") )
		{
			response.sendRedirect("diemden-Hue.jsp");
			return;
		}
		else {
			response.sendRedirect("trangchu.jsp");
		}
	}

}
