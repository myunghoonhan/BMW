package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.TheaterDao;
import dto.MemberDto;

/**
 * Servlet implementation class MemberInsert
 */
@WebServlet("/MemberInsert.do")
public class MemberInsert extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		reqpro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		reqpro(request, response);
	}

	protected void reqpro(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8"); //한글깨짐 방징

		String mem_id = request.getParameter("mem_id");
		String mem_passwd = request.getParameter("mem_passwd");
		String mem_name = request.getParameter("mem_name");
		String mem_num1 = request.getParameter("mem_num1");
		String mem_num2 = request.getParameter("mem_num2");
		String mem_email = request.getParameter("mem_email");
		String mem_phone = request.getParameter("mem_phone");
		String mem_zipcode = request.getParameter("mem_zipcode");
		String mem_address = request.getParameter("mem_address");
		
		MemberDto modify = new MemberDto();
		modify.setMem_id(mem_id);
		modify.setMem_passwd(mem_passwd);
		modify.setMem_name(mem_name);
		modify.setMem_num1(mem_num1);
		modify.setMem_num2(mem_num2);
		modify.setMem_email(mem_email);
		modify.setMem_phone(mem_phone);
		modify.setMem_zipcode(mem_zipcode);
		modify.setMem_address(mem_address);
		
		TheaterDao manager = TheaterDao.getInstance();
		
		PrintWriter out = response.getWriter(); //JS쓰기 위해 선언
		String str = "";
		
		if(manager.insertMember(modify)){
			
			str = "<script language='javascript'>";
			str += "alert('회원가입이 완료되었습니다. 정상 로그인이 가능합니다.');";
			str += "history.go(-1);"; 
			str += "</script>";
			out.print(str);
			
		}else{
			
			str = "<script language='javascript'>";
			str += "alert('회원가입 중 오류가 발생했습니다. 다시 시도해주세요.');";
			str += "history.go(-1);"; 
			str += "</script>";
			out.print(str);
		}	

	}


}
