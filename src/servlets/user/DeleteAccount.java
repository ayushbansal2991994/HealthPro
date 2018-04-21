package servlets.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Goal;

import util.GoalDAO;
import util.UserDAO;

public class DeleteAccount extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		if (session != null) {

			String username1 = (String) session.getAttribute("UserName");

			String username = request.getParameter("username");
			
			Goal goal=new Goal();

			if (username.equals(username1)) {
				
				goal=GoalDAO.getGoal((String)session.getAttribute("UserName"));
				
				if(goal.getUsername()!=null&&goal.getDiet()!=null)
				{
				UserDAO.deleteUserTables(username,goal);
				UserDAO.deleteGoal(username);
				UserDAO.deleteAccount(username);
				}
				else if(goal.getUsername()!=null)
				{
					UserDAO.deleteGoal(username);
					UserDAO.deleteAccount(username);
				}
				else
				{
				UserDAO.deleteAccount(username);
				}
				session.invalidate();
				response.sendRedirect("/HealthPro/siteStuffs/LoginPage.jsp?msg=Account Deleted successfully.");

			} else {
				session.invalidate();
				response.sendRedirect("/HealthPro/siteStuffs/LoginPage.jsp?msg=This is not your account.");
				
			}

		} else {
		
			response.sendRedirect("/HealthPro/siteStuffs/LoginPage.jsp?msg=Please Login.");
		}
	}

}
