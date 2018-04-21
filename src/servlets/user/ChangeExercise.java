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

import util.ExerciseDAO;
import util.GoalDAO;
import bean.Goal;

public class ChangeExercise<E> extends HttpServlet {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session=request.getSession(false);
		
		 ArrayList<String> content = new ArrayList<String>();
		 Enumeration<E> content1 = (Enumeration<E>) request.getParameterNames();
		    while (content1.hasMoreElements()) {
		        String parameterName = (String) content1.nextElement();
		        content.add(parameterName);
		    }

		Goal goal=GoalDAO.getGoal((String)session.getAttribute("UserName"));
			
			try {
				ExerciseDAO.changeExercise(goal,request.getParameter(content.get(0)),request.getParameter(content.get(2)));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
			response.sendRedirect("/HealthPro/siteStuffs/userPages/exercise.jsp");
		
	}

}
