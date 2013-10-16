package openid;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.openid4java.consumer.ConsumerException;


public class AuthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			if (request.getParameter("logout") != null) {
				logoutUser(request, response);
			}else{
				Consumer consumer = new Consumer();
	
				HttpSession session = request.getSession();
				boolean checkResponse = session.getAttribute("checkResponse") != null ? true : false;  
				if (!checkResponse){
					consumer.authRequest(request, response, getServletContext());
				}else{
					consumer.verifyResponse(request);
					RequestDispatcher dispatcher = request.getRequestDispatcher("pesquisaProduto.jsp");
					dispatcher.forward(request, response);
				}
			}
		} catch (ConsumerException e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	private void logoutUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("user", null);
		session.removeAttribute("checkResponse");
		session.removeAttribute("discovered");
		
		response.sendRedirect("login.jsp");
	}

}

