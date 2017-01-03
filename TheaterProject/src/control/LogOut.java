package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogOut
 */
@WebServlet("/LoginOut.do")
public class LogOut extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		reqpro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		reqpro(request, response);
	}

	protected void reqpro(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8"); //한글깨짐 방징

		String url = request.getParameter("url");
		
		HttpSession session = request.getSession(); //session객체 만들기
		session.invalidate();
		
		response.sendRedirect(url);
	}

}
