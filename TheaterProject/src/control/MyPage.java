package control;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Oracle;
import dao.TheaterDao;
import dao.TheaterDao_ver2;
import dto.BookBean;
import dto.ShowBean;
import dto.TmemberBean;
import service.MyPageService;

/**
 * Servlet implementation class MyPage
 */
@WebServlet("/MyPage.do")
public class MyPage extends HttpServlet {
		
	private MyPageService mypageservie;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		reqPro(request,response);
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		reqPro(request,response);
	}	
	private void reqPro(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		TheaterDao tdao = new TheaterDao(); //디비접속 객체
		
		TmemberBean bean = tdao.getTmember(id); //디비접속 후 정보를 bean에 저장
		
		Vector<ShowBean> interestBean = tdao.getInterest(id); //디비접속 후 정보를 bean에 저장
		
		Vector<BookBean> bookbean = tdao.getBook(id);
		
		
		TheaterDao_ver2 tdao2 = new Oracle(); // 인터페이스 사용시 이 부분만 바꾸면 됌
		TmemberBean bean2 = tdao2.getTmember(id);
		System.out.println(bean2.getId());
		
		
		
		request.setAttribute("TmemberBean", bean);
		request.setAttribute("interestBean", interestBean);
		request.setAttribute("bookbean", bookbean);
		
		RequestDispatcher dis = request.getRequestDispatcher("src/view/mypage.jsp");
		dis.forward(request, response);
	}
}
