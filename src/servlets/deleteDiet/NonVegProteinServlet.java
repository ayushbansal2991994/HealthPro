package servlets.deleteDiet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.AdminDAO;

public class NonVegProteinServlet extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

try{
	
	
	String nvegP = request.getParameter("nvegP");
	
	
	if(AdminDAO.checkAlreadyExistNonVegProtein(nvegP))
	{
		AdminDAO.deleteNonVegProtein(nvegP);
		response
		.sendRedirect("/HealthPro/siteStuffs/adminPages/diet/addDiet.jsp?msg=Deleted");
	}
	else
	{	
		response
		.sendRedirect("/HealthPro/siteStuffs/adminPages/diet/addDiet.jsp?msg=Doesn't exist in database");
	}
		
}

catch (Exception ex) {
	ex.printStackTrace();
}


}


}
