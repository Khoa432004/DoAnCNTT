package mypack;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AccountServlet
 */
@WebServlet("/dangky")
public class AccountRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AccountDAO accDao;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccountRegisterServlet() {
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
		String TK = request.getParameter("email");
		String MK = request.getParameter("password");
		String NhapLaiMK = request.getParameter("re-password");
		boolean check = false;
		check = accDao.CheckRegister(TK,MK, NhapLaiMK);
		if(true)
		{
			Account acc = new Account();
			acc.setUsername(TK);
			acc.setPassword(MK);
			try {
				accDao.LogInAccount(acc);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("dangnhap.html");
		}
	}

}