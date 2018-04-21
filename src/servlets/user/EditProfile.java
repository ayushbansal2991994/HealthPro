package servlets.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.UserDAO;
import bean.Account;

public class EditProfile extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		
		if (session != null) {
			String userName = (String) session.getAttribute("UserName");
			String firstName = request.getParameter("fName");
			String lastName = request.getParameter("lName");
			String email = request.getParameter("email");
			String dob = request.getParameter("dob");
			String phone = request.getParameter("phone");
			String recoveryEmail = request.getParameter("recoveryEmail");
			
			Account account = new Account();
			
			account.setDob(dob);
			account.setEmail(email);
			account.setFirstName(firstName);
			account.setLastName(lastName);
			account.setPhone(phone);
			account.setRecoveryEmail(recoveryEmail);
			
			
			try {
				UserDAO.editProfile(account,userName);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response
			.sendRedirect("/HealthPro/siteStuffs/dashboard.jsp");
		}
		else {
								response.sendRedirect("/HealthPro/siteStuffs/LoginPage.jsp?msg=Do Login First.");
				}
		
	}

}
