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

	/*public int confirmId(String mem_id) { //아아디 중복확인
		connect();
		int x = 0;
		try {
			pstmt = conn.prepareStatement("select id from member where id=?");
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = 1;
			} else {
				x = -1;
			}

		} catch (Exception e) {
			System.out.println(e);
		}finally {
			disconnect();
		}
		return x;
	}*/
	
	  /* public int checkid(String id) {
	   getCon();
	   int count=0;
	   try{
	      String sql = "select count(*) from tmember where id=?";
	      pstmt = con.prepareStatement(sql);
	      pstmt.setString(1, id);
	      rs = pstmt.executeQuery();
	      while (rs.next()) {
	         count = rs.getInt(1);
	      }
	      con.close();
	   }catch(Exception e){
	      e.printStackTrace();
	   }
	   return count;
	   }
	
	*/
	
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

	public Vector zipCheck(String area3) throws Exception {
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

	public MemberDto selectMember(String mem_id) {
		connect();
		MemberDto memberDto = new MemberDto();

		try {
			pstmt = conn.prepareStatement("select * from member where id=?");
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				memberDto.setMem_name(rs.getString("name"));
				memberDto.setMem_email(rs.getString("email"));
				memberDto.setMem_phone(rs.getString("phone"));
				memberDto.setMem_images(rs.getString("image"));
			}
		} catch (Exception e) {
			System.out.println("selectMember() : " + e);
		} finally {
			disconnect();
		}
		return memberDto;
	}

	public boolean updateProfile(MemberDto member) {
		connect();

		try {
			if (member.getMem_image() == null) {
				String sql = "update member set email=?, phone=? where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, member.getMem_email());
				pstmt.setString(2, member.getMem_phone());
				pstmt.setString(3, member.getMem_id());
			} else {
				String sql = "update member set email=?, phone=?, image=? where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, member.getMem_email());
				pstmt.setString(2, member.getMem_phone());
				pstmt.setString(3, member.getMem_image());
				pstmt.setString(4, member.getMem_id());
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

}
