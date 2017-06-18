package serviceImpl;

import dao.TheaterDao;
import dto.TmemberBean;
import service.MyPageService;

public class MyPageServiceImpl implements MyPageService{
	
	TheaterDao tdao;
	
	@Override
	public TmemberBean getTmember(String id) {
		return tdao.getTmember(id);
	}

}
