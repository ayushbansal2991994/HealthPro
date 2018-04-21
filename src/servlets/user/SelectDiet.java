package servlets.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Goal;
import util.DietDAO;
import util.ExerciseDAO;
import util.GoalDAO;

public class SelectDiet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
		String diet=request.getParameter("diet");
		
		HttpSession session= request.getSession(false);
		
		if(session!=null){
			Goal goal=GoalDAO.getGoal((String)session.getAttribute("UserName"));
			goal.setDiet(diet);
			
				try {
					GoalDAO.addDiet(goal);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
				
				DietDAO.createTableForUserDiet(goal);
				
				DietDAO.addValuesFromComplexCarbs(goal);
				DietDAO.addValuesFromSimpleCarbs(goal);
				DietDAO.addValuesFromFats(goal);
				DietDAO.addValuesFromVegetables(goal);
				try {
					DietDAO.addValuesFromFruits(goal);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if(goal.getDiet().equals("veg"))
					try {
						DietDAO.addValuesFromVegP(goal);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				else
					try {
						DietDAO.addValuesFromNVegP(goal);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}	
				
				try {
					ExerciseDAO.createTablesForUserExercise(goal);
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				try {
					ExerciseDAO.addValuesFromExercise(goal);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
				
				response.sendRedirect("/HealthPro/siteStuffs/dashboard.jsp");
		}
		
		
	}

}
