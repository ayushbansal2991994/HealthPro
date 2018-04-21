package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.AdminDAO;

import bean.Supplement;

@SuppressWarnings("serial")
public class AddSupplementServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try{
			
			
			String fat_loss = request.getParameter("fat_loss");
			String maintain = request.getParameter("maintain");
			String gain_weight = request.getParameter("gain_weight");
			
				Supplement supp=new Supplement();
			
				supp.setFat_loss(fat_loss);
				supp.setMaintain(maintain);
				supp.setGain_weight(gain_weight);
			
				

				AdminDAO.addSupplement(supp);
				
				response
				.sendRedirect("/HealthPro/siteStuffs/admindashboard.jsp?msg=Supplement added succesfully...");
			
				
		}
		
		catch (Exception ex) {
			ex.printStackTrace();
		}


	}

	
	
}
