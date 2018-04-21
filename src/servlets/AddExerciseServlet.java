package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.AdminDAO;

import bean.Exercise;

@SuppressWarnings("serial")
public class AddExerciseServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try{
			
			
			String chest = request.getParameter("chest");
			String back = request.getParameter("back");
			String bicep = request.getParameter("bicep");
			String tricep = request.getParameter("tricep");
			String shoulder = request.getParameter("shoulder");
			String legs = request.getParameter("legs");
			String abs = request.getParameter("abs");
			
				Exercise exercise=new Exercise();
				exercise.setChest(chest);
				exercise.setShoulder(shoulder);
				exercise.setTricep(tricep);
				exercise.setBack(back);
				exercise.setBicep(bicep);
				exercise.setLegs(legs);
				exercise.setAbs(abs);
				

				AdminDAO.addExercise(exercise);
				
				response
				.sendRedirect("/HealthPro/siteStuffs/admindashboard.jsp?msg=Excercise created succesfully...");
			
				
		}
		
		catch (Exception ex) {
			ex.printStackTrace();
		}


	}

	
	
}
