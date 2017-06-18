package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.TmemberBean;

public class Oracle implements TheaterDao_ver2{
	
	private static Oracle instance = new Oracle();

	public static Oracle getInstance() {
		return instance;
	}

	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	DataSource ds = null;

	@Override
	public void connect() {
	
		try {

			Context initContext = new InitialContext();
			ds = (DataSource) initContext.lookup("java:comp/env/jdbc/oracle");
			conn = ds.getConnection();

		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	@Override
	public void disconnect() {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	@Override
	public TmemberBean getTmember(String id) {
		connect();
		TmemberBean bean = null;
		
		try{
			String sql = "select * from tmember where id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				bean = new TmemberBean();
				
				bean.setId(rs.getString(1));
				bean.setPw(rs.getString(2));
				bean.setName(rs.getString(3));
				bean.setPhone(rs.getString(4));
				bean.setEmail(rs.getString(5));
				bean.setProfile(rs.getString(6));
				bean.setTemp(rs.getString(7));
			}
			
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}

}
