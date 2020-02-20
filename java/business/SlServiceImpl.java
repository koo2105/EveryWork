package business;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import selflabDAO.SelflabDAO;
import vo.SelflabVO;

// Service 클래스
// => Controller 와  DAO 사이에서 
//    요청받은 역활을 수행하는 클래스
//    즉, dao 를 실행하는 클래스

// ** interface 자동완성 
// => Shift + Alt + T

@Service
public class SlServiceImpl implements SlService {
	@Autowired
	SelflabDAO dao ;
	
	@Override
	public ArrayList<SelflabVO> selflabList(SelflabVO vo) {
		return dao.selflabList(vo);
	}
	
	@Override
	public ArrayList<SelflabVO> selflablistAll(SelflabVO vo) {
		return dao.selflablistAll(vo);
	}

	@Override
	public SelflabVO selflabOne(SelflabVO vo) {
		return dao.selflabOne(vo);
	}
	

	
} // class
