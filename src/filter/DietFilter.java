package filter;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.Account;
import bean.Goal;

import util.DietDAO;
import util.GoalDAO;
import util.UserDAO;

public class DietFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest httpReq = (HttpServletRequest) req;
		HttpServletResponse httpResp = (HttpServletResponse) resp;

		HttpSession session = httpReq.getSession(false);

		if (session != null) {
			String username = (String) session.getAttribute("UserName");
			
		Account account=	UserDAO.getAccount(username);
		Goal goal= GoalDAO.getGoal(username);
		
		ArrayList<String> protein= new ArrayList<String>();
		ArrayList<String> simple_carbs= new ArrayList<String>();
		ArrayList<String> fats= new ArrayList<String>();
		ArrayList<String> complex_carbs= new ArrayList<String>();
		ArrayList<String> fruits= new ArrayList<String>();
		ArrayList<String> vegetables= new ArrayList<String>();
		
		
		
		protein.addAll(DietDAO.fetchProtein(goal));
		
		simple_carbs.addAll(DietDAO.fetchSimpleCarbs(goal)) ;
		fats.addAll(DietDAO.fetchFats(goal));
		complex_carbs.addAll(DietDAO.fetchComplexCarbs(goal));
		fruits.addAll(DietDAO.fetchFruits(goal));
		vegetables.addAll(DietDAO.fetchVegetables(goal));
		
		
		
		
		req.setAttribute("account", account);
		req.setAttribute("goal", goal);
		req.setAttribute("protein", protein);
		req.setAttribute("simple_carbs",simple_carbs);
		req.setAttribute("fats", fats);
		req.setAttribute("complex_carbs", complex_carbs);
		req.setAttribute("fruits",fruits);
		req.setAttribute("vegetables", vegetables);
		
		
		chain.doFilter(req, resp);
		

		} else {
			httpResp
					.sendRedirect("/HealthPro/siteStuffs/LoginPage.jsp?msg=Login Please.");
		}

	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
