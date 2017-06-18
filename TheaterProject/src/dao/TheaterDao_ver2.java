package dao;

import dto.TmemberBean;

public interface TheaterDao_ver2 {
	
	public void connect();
	public void disconnect();
	public TmemberBean getTmember(String id);
	
}
