package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.UserDAO;

import bean.Account;

public class ForgotPasswordServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String dob = request.getParameter("dob");
		String username = request.getParameter("username");
		String phone = request.getParameter("phone");
		String recoveryEmail = request.getParameter("recoveryEmail");
		String securityQues1 = request.getParameter("secQ1");
		String securityQues2 = request.getParameter("secQ2");

		Account account = new Account();

		account.setDob(dob);
		account.setEmail(email);
		account.setPhone(phone);
		account.setRecoveryEmail(recoveryEmail);
		account.setSecurityQues1(securityQues1);
		account.setSecurityQues2(securityQues2);
		account.setUsername(username);
		
		boolean isValid = UserDAO.checkDetailsForForgotPassword(account);
		
		if(isValid){
			
			request.getRequestDispatcher("/siteStuffs/changePassword.jsp?username="+username).forward(request, response);
		}
		else
		{
			response
			.sendRedirect("/HealthPro/siteStuffs/ForgotPassword.jsp?msg=Details Incorrect.");
		}

	}

}
