package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TheaterDao;

@WebServlet("/IdCheck.do")
public class IdCheck extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqpro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqpro(request, response);
	}

	protected void reqpro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8"); // 한글깨짐 방징

		String id = request.getParameter("id");

		// 데이터베이스에 접근
		TheaterDao manager = TheaterDao.getInstance();
		// 아이디 체크 메소드
		int count = manager.getCheckId(id);
/*
		// 아치디체크후 리턴값을 0또는 1로 보냄
		request.setAttribute("count", count);

		// jsp(view)로 화면을 넘겨줌
		RequestDispatcher dis = request.getRequestDispatcher("JoinForm.jsp");
		dis.forward(request, response);*/

	}
}
