package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import Dao.HotelBookedDAO;
import Entity.HotelBooked;
/**
 * Servlet implementation class HotelBookedServlet
 */
@WebServlet("/HotelBookedServlet")
public class HotelBookedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelBookedServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HotelBookedDAO hotelBookedDAO = new HotelBookedDAO();
		HttpSession session = request.getSession();
		String username = session.getAttribute("Username").toString();
		List<HotelBooked> hotelBookedList = new ArrayList<HotelBooked>();
		try {
			hotelBookedList = hotelBookedDAO.DisplayPayment(username);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.setAttribute("HotelBookedList", hotelBookedList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("khachsandadat.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
