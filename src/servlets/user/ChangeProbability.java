package servlets.user;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Goal;
import util.DietDAO;
import util.GoalDAO;

public class ChangeProbability<E> extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String val="";

	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session= request.getSession(false);
		
		 ArrayList<String> names = new ArrayList<String>();
		 Enumeration<E> name = (Enumeration<E>) request.getParameterNames();
		    while (name.hasMoreElements()) {
		        String parameterName = (String) name.nextElement();
		        names.add(parameterName);
		    }

		Goal goal=GoalDAO.getGoal((String)session.getAttribute("UserName"));
		if(names.get(0).equals("protein")&&goal.getDiet().equals("veg"))
		{
			val=request.getParameter("protein");
			try {
				DietDAO.changeProb(val,"veg",goal);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(names.get(0).equals("protein")&&goal.getDiet().equals("nveg"))
		{
			val=request.getParameter("protein");
			try {
				DietDAO.changeProb(val,"nveg",goal);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(names.get(0).equals("fats"))
		{
			val=request.getParameter("fats");
			try {
				DietDAO.changeProb(val,"fats",goal);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(names.get(0).equals("simple_carbs"))
		{
			val=request.getParameter("simple_carbs");
			try {
				DietDAO.changeProb(val,"simple_carbs",goal);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(names.get(0).equals("complex_carbs"))
		{
			val=request.getParameter("complex_carbs");
			try {
				DietDAO.changeProb(val,"complex_carbs",goal);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(names.get(0).equals("fruits"))
		{
				val=request.getParameter("fruits");
			try {
				DietDAO.changeProb(val,"fruits",goal);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(names.get(0).equals("vegetables"))
		{
			val=request.getParameter("vegetables");
			try {
				DietDAO.changeProb(val,"vegetables",goal);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	
		
		response.sendRedirect("/HealthPro/siteStuffs/userPages/diet.jsp");
		
		
		
		
	}

}
