package servlets.editDiet;

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
	String complexCVal = request.getParameter("complexCVal");
	
	
	if(AdminDAO.checkAlreadyExistComplexCarb(complexC))
	{
		
		AdminDAO.updateComplexC(complexC,complexCVal);
		
		response
		.sendRedirect("/HealthPro/siteStuffs/adminPages/diet/editDiet.jsp?msg=Updated successfully");
	}
	else
	{
		response
		.sendRedirect("/HealthPro/siteStuffs/adminPages/diet/addDiet.jsp?msg=First Add this");
	}
		
}

catch (Exception ex) {
	ex.printStackTrace();
}


}


}
