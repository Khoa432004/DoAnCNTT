package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.AccountDAO;
import Entity.Account;

/**
 * Servlet implementation class AccountLoginServlet
 */
@WebServlet("/dangnhap")
public class AccountLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AccountDAO accDao;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountLoginServlet() {
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
		boolean login = false;
		String TK = request.getParameter("email");
		String MK = request.getParameter("password");
		String AlertMessage = "";
		if(accDao.CheckNull(TK, MK,MK))	
		{	
			AlertMessage = "Tài khoản và mật khẩu không được để trống";
			request.getSession().setAttribute("Fail", AlertMessage);
		}
		else if(!accDao.CheckDoDaiMK(MK, MK))
		{
			AlertMessage = "Độ dài mật khẩu phải lớn hơn 8";
			request.getSession().setAttribute("Fail", AlertMessage);
		}
		else
		{
			HttpSession session = request.getSession(true);
			session.setAttribute("Username", TK);
			Account acc = new Account();
			acc.setUsername(TK);
			acc.setPassword(MK);
			try {
				login = accDao.LogInAccount(acc);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(login)
			{
				String currentURL = session.getAttribute("CurrentURL").toString();
				AlertMessage = "Đăng nhập thành công";
				request.getSession().setAttribute("Success", AlertMessage);
				response.sendRedirect(currentURL);
			}
			else
			{
				AlertMessage = "Tài khoản hoặc mật khẩu không chính xác";
				request.getSession().setAttribute("Fail", AlertMessage);
				response.sendRedirect("dangnhap.jsp");
			}	
		}
	}


}
