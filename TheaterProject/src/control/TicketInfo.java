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

import dao.TheaterDao;
import dto.ReviewBean;
import dto.ShowBean;
import dto.ShowImgBean;

/**
 * Servlet implementation class TicketInfo
 */
@WebServlet("/TicketInfo.do")
public class TicketInfo extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	private void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 한글처리
		request.setCharacterEncoding("UTF-8");

		// 공연번호 읽어오기
		String sno = request.getParameter("sno");

		// 세션에 아이디 저장 여부 확인
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		// 데이터 베이스 객체 생성후
		TheaterDao tdao = new TheaterDao();

		// 해당 공연에 대한 정보를 얻어오는 메소드 호출 getTicketInfo(sno)
		ShowBean bean = tdao.getTicketInfo(sno);

		// 좋아요 클릭 여부를 확인하기 위한 메소드 호출 getLike(sno, id);
		int like_first = tdao.getLike(sno, id);

		String like_no = null;
		String like_yes = null;

		if (like_first == 0) {
			like_no = "";
			like_yes = "none";
		} else if (like_first == 1) {
			like_no = "none";
			like_yes = "";
		}

		// The-Ticket 정보를 불러오는 메소드 호출 getTicketDetail(sno)
		Vector<ShowImgBean> imgbean = tdao.getTicketDetail(sno);

		// 해당 공연의 후기를 모두 불러오는 메소드 호출 getRieviewAll(sno, id)
		Vector<ReviewBean> reviewAll = tdao.getReviewAll(sno, id);

		// 해당 공연의 예매정보를 불러오는 메소드 호출 getBookInfo(sno)
		//Vector<ShowSeatBean> bookinfo = tdao.getBookInfo(sno);
		//String bookinfo_time = tdao.getBookInfo_time(sno);

		// request객체에 부착
		request.setAttribute("bean", bean);
		request.setAttribute("like_no", like_no);
		request.setAttribute("like_yes", like_yes);
		request.setAttribute("id", id);
		request.setAttribute("imgbean", imgbean);
		request.setAttribute("reviewAll", reviewAll);
		//request.setAttribute("bookinfo", bookinfo);
		//request.setAttribute("bookinfo_time", bookinfo_time);

		RequestDispatcher dis = request.getRequestDispatcher("src/view/ticketinfo.jsp");
		dis.forward(request, response);
	}
}
