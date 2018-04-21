package servlets.enterDiet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.AdminDAO;

public class SimpleCarbServlet extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

try{
	
	
	String simpleC = request.getParameter("simpleC");
	String simpleCVal = request.getParameter("simpleCVal");
	
	
	if(AdminDAO.checkAlreadyExistSimpleCarb(simpleC))
	{
		response
		.sendRedirect("/HealthPro/siteStuffs/adminPages/diet/addDiet.jsp?msg=Already Exist in Database");
	}
	else
	{
		AdminDAO.addSimpleC(simpleC,simpleCVal);
		
		response
		.sendRedirect("/HealthPro/siteStuffs/adminPages/diet/addDiet.jsp?msg=Added successfully");
	}
		
}

catch (Exception ex) {
	ex.printStackTrace();
}


}


}
