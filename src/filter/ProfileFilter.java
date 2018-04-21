package filter;
import java.io.IOException;

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

import util.GoalDAO;
import util.UserDAO;

public class ProfileFilter implements Filter {

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
		
		req.setAttribute("account", account);
		req.setAttribute("goal", goal);
		
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
