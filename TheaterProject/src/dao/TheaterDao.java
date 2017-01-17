package dao;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.MemberDto;
import dto.ShowBean;
import dto.TmemberBean;
import dto.ZipcodeDto;

public class TheaterDao {

	private static TheaterDao instance = new TheaterDao();

	public static TheaterDao getInstance() {
		return instance;
	}

	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	DataSource ds = null;

	public void connect() {
		try {

			Context initContext = new InitialContext();
			ds = (DataSource) initContext.lookup("java:comp/env/jdbc/oracle");
			conn = ds.getConnection();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public void disconnect() {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public int userCheck(String id, String pw) { //아이디 비번 체크 (완료)
		connect();
		String dbpasswd = null;
		int x = -1;

		try {
			String sql = "select pw from tmember where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dbpasswd = rs.getString("pw");
				if (dbpasswd.equals(pw)) {
					x = 1;
				} else {
					x = 0;
				}
			} else {
				x = -1;
			}

		} catch (Exception e) {
			System.out.println(e);
		} finally {
			disconnect();
		}
		return x;
	}
	
	public int getCheckId(String id) { //아이디 중복체크 (완료)
		connect();
		int count = 0; 
		try {
			String sql = "select count(*) from tmember where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				count = rs.getInt(1);
			}
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	
	public boolean insertMember(TmemberBean bean) { //회원가입  (완료)
		connect();

		try {
			String sql = "insert into tmember(id,pw,name,phone,email) values(?,?,?,?,?)";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, bean.getId());
	         pstmt.setString(2, bean.getPw());
	         pstmt.setString(3, bean.getName());
	         pstmt.setString(4, bean.getPhone());
	         pstmt.setString(5, bean.getEmail());

			pstmt.executeUpdate();
		} catch (Exception e) {
			
			System.out.println(e);
			return false;
			
		} finally {
			disconnect();
		}
		return true;
	}

	public Vector zipCheck(String area3) throws Exception { //삭제 예정
		connect();
		Vector<ZipcodeDto> list = new Vector<ZipcodeDto>();

		try {
			String sql = "select * from zipcode where area3 like '" + area3 + "%'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ZipcodeDto zip = new ZipcodeDto();
				zip.setZipcode(rs.getString("zipcode"));
				zip.setArea1(rs.getString("area1"));
				zip.setArea2(rs.getString("area2"));
				zip.setArea3(rs.getString("area3"));
				zip.setArea4(rs.getString("area4"));

				list.add(zip);
			}

		} catch (Exception e) {
			System.out.println(e);
		} finally {
			disconnect();
		}
		return list;
	}

	public TmemberBean selectMember(String id) {	//완료
		connect();
		TmemberBean bean = new TmemberBean();

		try {
			pstmt = conn.prepareStatement("select * from tmember where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bean.setId(rs.getString("id"));
				bean.setPw(rs.getString("pw"));
				bean.setName(rs.getString("name"));
				bean.setPhone(rs.getString("phone"));
				bean.setEmail(rs.getString("email"));
				bean.setProfile(rs.getString("profile"));
			}
		} catch (Exception e) {
			System.out.println("selectMember() : " + e);
		} finally {
			disconnect();
		}
		return bean;
	}

	public boolean updateProfile(TmemberBean bean) { //수정중
		connect();

		try {
			if (bean.getProfile() == null) {
				String sql = "update tmember set name=?, phone=? where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bean.getName());
				pstmt.setString(2, bean.getPhone());
				pstmt.setString(3, bean.getId());
			} else {
				String sql = "update member set name=?, phone=?, image=? where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bean.getName());
				pstmt.setString(2, bean.getPhone());
				pstmt.setString(3, bean.getProfile());
				pstmt.setString(4, bean.getId());
			}

			pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("DB:updateProfile(): " + e);
			return false;
		} finally {
			disconnect();
		}
		return true;
	}

	public Vector<ShowBean> getTop4() { //완료
		connect();
		
		// 리턴할 객체 생성(즉 박스로 리턴)
		Vector<ShowBean> top4 = new Vector<>();
		
		// 컬럼의 데이터를 빈클래스에 맵핑해야하기에 객체를 선언(즉, 가방)
		ShowBean bean = null;
		try {
			// 3.
			String sql = "select * from (select A.* , Rownum rnum from"
					+ " (select * from show order by slike desc)A) where rnum <=4";
			pstmt = conn.prepareStatement(sql);
			// 4.쿼리실행후 결과를 리턴
			rs = pstmt.executeQuery();
			// 반복문을 통하여 데이터를 가방(빈에 저장)에 추출
			while (rs.next()) {
				// 빈클래스 (가방) 객체 생성
				bean = new ShowBean();
				bean.setSno(rs.getString(1));
				bean.setSname(rs.getString(2));
				bean.setSaddress(rs.getString(3));
				bean.setSperiod(rs.getString(4));
				bean.setSactor(rs.getString(5));
				bean.setSprice(rs.getInt(6));
				bean.setStime(rs.getString(7));
				bean.setStab(rs.getString(8));
				bean.setSlocation(rs.getString(9));
				bean.setSmainimg(rs.getString(10));
				bean.setSwido(rs.getString(11));
				bean.setSkyungdo(rs.getString(12));
				bean.setSlike(rs.getInt(13));
				bean.setSupdate(rs.getDate(14));
				bean.setStemp(rs.getString(15));
				bean.setSinttemp(rs.getInt(16));
				
				top4.add(bean);
			}
			// 5
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return top4;// 박스 객체를 리턴
	}

	public Vector<ShowBean> getNewTicket() { //완료
		connect();
		
		// 리턴할 객체 생성(즉 박스로 리턴)
		Vector<ShowBean> newTicket = new Vector<>();
		
		// 컬럼의 데이터를 빈클래스에 맵핑해야하기에 객체를 선언(즉, 가방)
		ShowBean bean = null;
		try {
			// 3.
			String sql = "select * from (select A.* , Rownum rnum from"
					+ " (select * from show order by supdate desc)A) where rnum <=12";
			pstmt = conn.prepareStatement(sql);
			// 4.쿼리실행후 결과를 리턴
			rs = pstmt.executeQuery();
			// 반복문을 통하여 데이터를 가방(빈에 저장)에 추출
			while (rs.next()) {
				// 빈클래스 (가방) 객체 생성
				bean = new ShowBean();
				bean.setSno(rs.getString(1));
				bean.setSname(rs.getString(2));
				bean.setSaddress(rs.getString(3));
				bean.setSperiod(rs.getString(4));
				bean.setSactor(rs.getString(5));
				bean.setSprice(rs.getInt(6));
				bean.setStime(rs.getString(7));
				bean.setStab(rs.getString(8));
				bean.setSlocation(rs.getString(9));
				bean.setSmainimg(rs.getString(10));
				bean.setSwido(rs.getString(11));
				bean.setSkyungdo(rs.getString(12));
				bean.setSlike(rs.getInt(13));
				bean.setSupdate(rs.getDate(14));
				bean.setStemp(rs.getString(15));
				bean.setSinttemp(rs.getInt(16));
				
				newTicket.add(bean);
			}
			// 5
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newTicket;// 박스 객체를 리턴
	}

	public Vector<ShowBean> getSearchTab_top4(String gubun) { //완료
		connect();
		
		// 리턴할 객체 생성(즉 박스로 리턴)
		Vector<ShowBean> top4 = new Vector<>();
		
		// 컬럼의 데이터를 빈클래스에 맵핑해야하기에 객체를 선언(즉, 가방)
		ShowBean bean = null;
		try {
			// 3.
			String sql = "select * from (select A.* , Rownum rnum from"
					+ " (select * from show where stab=? order by slike desc)A) where rnum <=4";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, gubun);
			
			// 4.쿼리실행후 결과를 리턴
			rs = pstmt.executeQuery();
			// 반복문을 통하여 데이터를 가방(빈에 저장)에 추출
			while (rs.next()) {
				// 빈클래스 (가방) 객체 생성
				bean = new ShowBean();
				bean.setSno(rs.getString(1));
				bean.setSname(rs.getString(2));
				bean.setSaddress(rs.getString(3));
				bean.setSperiod(rs.getString(4));
				bean.setSactor(rs.getString(5));
				bean.setSprice(rs.getInt(6));
				bean.setStime(rs.getString(7));
				bean.setStab(rs.getString(8));
				bean.setSlocation(rs.getString(9));
				bean.setSmainimg(rs.getString(10));
				bean.setSwido(rs.getString(11));
				bean.setSkyungdo(rs.getString(12));
				bean.setSlike(rs.getInt(13));
				bean.setSupdate(rs.getDate(14));
				bean.setStemp(rs.getString(15));
				bean.setSinttemp(rs.getInt(16));
				
				top4.add(bean);
			}
			// 5
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return top4;// 박스 객체를 리턴
	}

	public Vector<ShowBean> getSearchTab_new(String gubun) { //완료

		connect();
		
		// 리턴할 객체 생성(즉 박스로 리턴)
		Vector<ShowBean> newTicket = new Vector<>();
		
		// 컬럼의 데이터를 빈클래스에 맵핑해야하기에 객체를 선언(즉, 가방)
		ShowBean bean = null;
		try {
			// 3.
			String sql = "select * from (select A.* , Rownum rnum from"
					+ " (select * from show where stab=? order by supdate desc)A) where rnum <=30";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, gubun);
			
			// 4.쿼리실행후 결과를 리턴
			rs = pstmt.executeQuery();
			// 반복문을 통하여 데이터를 가방(빈에 저장)에 추출
			while (rs.next()) {
				// 빈클래스 (가방) 객체 생성
				bean = new ShowBean();
				bean.setSno(rs.getString(1));
				bean.setSname(rs.getString(2));
				bean.setSaddress(rs.getString(3));
				bean.setSperiod(rs.getString(4));
				bean.setSactor(rs.getString(5));
				bean.setSprice(rs.getInt(6));
				bean.setStime(rs.getString(7));
				bean.setStab(rs.getString(8));
				bean.setSlocation(rs.getString(9));
				bean.setSmainimg(rs.getString(10));
				bean.setSwido(rs.getString(11));
				bean.setSkyungdo(rs.getString(12));
				bean.setSlike(rs.getInt(13));
				bean.setSupdate(rs.getDate(14));
				bean.setStemp(rs.getString(15));
				bean.setSinttemp(rs.getInt(16));
				
				newTicket.add(bean);
			}
			// 5
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newTicket;// 박스 객체를 리턴	
	}

	public int getSearchTab_count(String gubun) { //완료
		connect();
		
		int count = 0;	
		try {
			String sql = "select count(*) from show where stab=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, gubun);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {// 검색 결과가 있다면
				count = rs.getInt(1);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

}
