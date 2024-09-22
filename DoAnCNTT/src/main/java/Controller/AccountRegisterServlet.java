package Controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.AccountDAO;
import Entity.Account;

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
		Account acc = new Account();
		acc.setUsername(TK);
		acc.setPassword(MK);
		String AlertMessage = "";
		if(accDao.CheckNull(TK, MK,NhapLaiMK))
		{
			AlertMessage = "Tài khoản và mật khẩu không được để trống";
			request.getSession().setAttribute("Fail", AlertMessage);
		}
		else if(!accDao.CheckDoDaiMK(MK, NhapLaiMK))
		{
			AlertMessage = "Độ dài mật khẩu phải lớn hơn 8";
			request.getSession().setAttribute("Fail", AlertMessage);
		}
		else if(!accDao.CheckMKTrung(MK, NhapLaiMK))
		{
			AlertMessage = "Mật khẩu nhập lại không trùng khớp";
			request.getSession().setAttribute("Fail", AlertMessage);
		} 
//		else if(!accDao.CheckTkDaTonTai(acc))
//		{
//			AlertMessage = "Tài khoản hoặc mật khẩu không chính xác";
//			request.getSession().setAttribute("Fail", AlertMessage);
//		}
		else
		{
			try {
				accDao.registerAccount(acc);
				AlertMessage = "Đăng ký thành công";
				request.getSession().setAttribute("Success", AlertMessage);
			} catch (Exception e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("dangnhap.jsp");
		}
	}
}
