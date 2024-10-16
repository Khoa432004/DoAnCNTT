package Controller;

import java.io.Console;
import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.AccountDAO;

/**
 * Servlet implementation class AccountLogOutServlet
 */
@WebServlet("/dangxuat")
public class AccountLogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AccountDAO accDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountLogOutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		accDao = new AccountDAO();
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
		String currentURL = request.getHeader("referer");
		String AlertMessage = "";
		AlertMessage = "Đăng xuất thành công";
		request.getSession().setAttribute("Success", AlertMessage);
		session.invalidate();
		if(currentURL == "khachsandadat.jsp")
			response.sendRedirect("trangchu.jsp");
		else
			response.sendRedirect(currentURL);
	}

}
