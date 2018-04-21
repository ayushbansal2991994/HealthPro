package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.UserDAO;

public class ChangePasswordServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String password = request.getParameter("password");
		String username = request.getParameter("username");
		
		UserDAO.changePassword(username,password);
		
		HttpSession session = request.getSession(false);
		
		if (session != null) {
			session.invalidate();

		}
		response.sendRedirect("/HealthPro/siteStuffs/LoginPage.jsp?msg=Password changed suceessfully...");
		
	}

}
