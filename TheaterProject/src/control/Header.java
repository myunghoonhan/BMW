package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Header
 */
@WebServlet("/Header.do")
public class Header extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		reqpro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		reqpro(request, response);
	}

	protected void reqpro(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String url= request.getRequestURL().toString();
		String port = String.valueOf(request.getServerPort());
		String navbar_style = request.getParameter("navbar_style");
		
		RequestDispatcher dis = request.getRequestDispatcher("src/view/component/header.jsp");
		dis.forward(request, response);
	}

}
