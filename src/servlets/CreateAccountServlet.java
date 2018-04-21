package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.UserDAO;

import bean.Account;

@SuppressWarnings("serial")
public class CreateAccountServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try{
			
			
			String firstName = request.getParameter("fName");
			String lastName = request.getParameter("lName");
			String email = request.getParameter("email");
			String dob = request.getParameter("dob");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String phoneNo = request.getParameter("phone");
			String recoveryEmail = request.getParameter("recoveryEmail");
			String securityQues1 = request.getParameter("secQ1");
			String securityQues2 = request.getParameter("secQ2");
			
			if(UserDAO.checkAlreadyExist(username))
			{
				response
				.sendRedirect("/HealthPro/siteStuffs/LoginPage.jsp?msg=Username already used");
			}
			else
			{

				Account account = new Account();
				account.setFirstName(firstName);
				account.setLastName(lastName);
				account.setEmail(email);
				account.setDob(dob);
				account.setUsername(username);
				account.setPassword(password);
				account.setPhone(phoneNo);
				account.setRecoveryEmail(recoveryEmail);
				account.setSecurityQues1(securityQues1);
				account.setSecurityQues2(securityQues2);
				

				UserDAO.addAccount(account);
				
				response
				.sendRedirect("/HealthPro/siteStuffs/LoginPage.jsp?msg=Account created succesfully...");
			}
				
		}
		
		catch (Exception ex) {
			ex.printStackTrace();
		}


	}

	
	
}
