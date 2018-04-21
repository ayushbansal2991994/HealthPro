package servlets.deleteDiet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.AdminDAO;

public class ComplexCarbServlet extends HttpServlet{
	
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

try{
	
	
	String complexC = request.getParameter("complexC");
	
	if(AdminDAO.checkAlreadyExistComplexCarb(complexC))
	{
		AdminDAO.deleteComplexCarb(complexC);
		response
		.sendRedirect("/HealthPro/siteStuffs/adminPages/diet/addDiet.jsp?msg=Deleted");
	}
	else
	response
	.sendRedirect("/HealthPro/siteStuffs/adminPages/diet/addDiet.jsp?msg=Do not Exist in Database");
}

catch (Exception ex) {
	ex.printStackTrace();
}


}


}
