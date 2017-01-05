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

	public int userCheck(String mem_id, String mem_passwd) {
		connect();
		String dbpasswd = null;
		int x = -1;

		try {
			String sql = "select passwd from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dbpasswd = rs.getString("passwd");
				if (dbpasswd.equals(mem_passwd)) {
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

	public int confirmId(String mem_id) {
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
		}
		return x;
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

	public boolean insertMember(MemberDto member) {
		connect();

		try {
			String sql = "insert into member(id, passwd, name, num1, num2, email, phone, zipcode, address) values(?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMem_id());
			pstmt.setString(2, member.getMem_passwd());
			pstmt.setString(3, member.getMem_name());
			pstmt.setString(4, member.getMem_num1());
			pstmt.setString(5, member.getMem_num2());
			pstmt.setString(6, member.getMem_email());
			pstmt.setString(7, member.getMem_phone());
			pstmt.setString(8, member.getMem_zipcode());
			pstmt.setString(9, member.getMem_address());

			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
			return false;
		} finally {
			disconnect();
		}
		return true;
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

	public int getCheckId(String id) {
		connect();
		int count = 0; // 회원이 있는지에 대한 숫자를 저장하는 변수 있으면 1 없으면 0
		try {
			String sql = "select count(*) from member where id=?";
			pstmt = conn.prepareStatement(sql);
			// ?에 값을 대입
			pstmt.setString(1, id);
			// 4결과
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

}
