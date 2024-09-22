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
@WebServlet("/doimatkhau")
public class AccountChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AccountDAO accDao;  
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccountChangePasswordServlet() {
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
		boolean changepass = false;
		HttpSession session = request.getSession();
		String TK = session.getAttribute("Username").toString();
		String MKCu = request.getParameter("password");
		String MKMoi = request.getParameter("new-password");
		String NhapLaiMKMoi = request.getParameter("re-password");
		Account acc = new Account();
		acc.setUsername(TK);
		acc.setPassword(MKCu);
		String AlertMessage = "";
		if(accDao.CheckNull(TK, MKCu,MKCu))	
		{	
			AlertMessage = "Tài khoản và mật khẩu cũ không được để trống";
			request.getSession().setAttribute("Fail", AlertMessage);
		}
		else if(!accDao.CheckDoDaiMK(MKCu, MKCu))
		{
			AlertMessage = "Độ dài mật khẩu phải lớn hơn 8";
			request.getSession().setAttribute("Fail", AlertMessage);
		} 
//		else if(accDao.LogInAccount(acc) )
//		{
//			AlertMessage = "Tài khoản và mật khẩu không chính xác";
//			request.getSession().setAttribute("Fail", AlertMessage);
//		}
		else if(accDao.CheckNull(MKMoi, NhapLaiMKMoi,NhapLaiMKMoi))	
		{	
			AlertMessage = "Mật khẩu mới và nhập lại mật khẩu mới không được để trống";
			request.getSession().setAttribute("Fail", AlertMessage);
		}
		else if(!accDao.CheckDoDaiMK(MKMoi, NhapLaiMKMoi))
		{
			AlertMessage = "Độ dài mật khẩu mới phải lớn hơn 8";
			request.getSession().setAttribute("Fail", AlertMessage);
		}
		else if(!accDao.CheckMKMoiTrung(MKCu, MKMoi))
		{
			AlertMessage = "Mật khẩu cũ phải khác mật khẩu mới";
			request.getSession().setAttribute("Fail", AlertMessage);
		}
		else if(!accDao.CheckMKTrung(MKMoi, NhapLaiMKMoi))
		{
			AlertMessage = "Mật khẩu nhập lại không trùng khớp";
			request.getSession().setAttribute("Fail", AlertMessage);
		}
		else
		{
			try {
				acc.setUsername(TK);
				acc.setPassword(MKMoi);
				changepass = accDao.ChangePassword(acc);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(changepass)
			{
				session.invalidate();
				response.sendRedirect("dangnhap.jsp");
			}
			else
			{
				AlertMessage = "Tài khoản không thể đổi mật khẩu";
				request.getSession().setAttribute("Fail", AlertMessage);
				response.sendRedirect("trangchu.jsp");
			}
		}
	}
}


