package servlets.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import calcultors.Calculators;
import bean.Goal;
import util.GoalDAO;


public class SelectGoalServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession session =req.getSession(false);
		
		
		
		String username=  (String) session.getAttribute("UserName");
		String current_goal= req.getParameter("Goal");
		 String height = req.getParameter("height");
		 String weight = req.getParameter("weight");
		 int height1 = Integer.parseInt(req.getParameter("height"));
		 float weight1 = Float.parseFloat(req.getParameter("weight"));
		String sex= req.getParameter("gender");
		String age= req.getParameter("age");
		int age1= Integer.parseInt(req.getParameter("age"));
		
		
		if(GoalDAO.checkAlreadyExistInGoals(username))
		{
			resp
			.sendRedirect("/HealthPro/siteStuffs/dashboard.jsp?msg=Goto Change Goal");
		}
		else
		{
			
			float macros[]= Calculators.getMacros(current_goal,weight1);
			float bmi =Calculators.getBmi(height1,weight1);
			float bmr =Calculators.getBmr(height1,weight1,age1,sex);
			
			Goal goal=new Goal();
			
			goal.setUsername(username);
			goal.setBmi(String.valueOf(bmi));
			goal.setBmr(String.valueOf(bmr));
			goal.setCarbs(String.valueOf(macros[1]));
			goal.setCurrent_goal(current_goal);
			goal.setFats(String.valueOf(macros[2]));
			goal.setHeight(height);
			goal.setProtein(String.valueOf(macros[0]));
			goal.setSex(sex);
			goal.setWeight(weight);
			goal.setAge(age);
			
		try {
			GoalDAO.addGoal(goal);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
			
			resp
			.sendRedirect("/HealthPro/siteStuffs/dashboard.jsp?msg=Goal created succesfully...");
			
			
		}
		
		
	}

}
