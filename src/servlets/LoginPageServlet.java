package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Account;

import util.UserDAO;

public class LoginPageServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			Account account = UserDAO.doAuthenticate(username, password);
			
			if(account==null){

				response
						.sendRedirect("/HealthPro/siteStuffs/LoginPage.jsp?msg= Account doesn't exist. Go to create Account page.");
			}
			
			else{
			 
				if(account.getUsername().equals("siteadmin"))
					{
					HttpSession session = request.getSession(true);

					session.setAttribute("UserName", username);
					session.setAttribute("account", account);

					request.getRequestDispatcher("/siteStuffs/admindashboard.jsp")
							.forward(request, response);

				} 

			else  {

				HttpSession session = request.getSession(true);

				session.setAttribute("UserName", username);
				session.setAttribute("account", account);

				request.getRequestDispatcher("/siteStuffs/dashboard.jsp")
						.forward(request, response);

			} }
			
		} catch (Exception e2) {
			e2.printStackTrace();

		}

	}
}
