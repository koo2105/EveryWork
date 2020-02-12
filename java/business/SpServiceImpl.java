package business;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import resumeDAO.SpecDAO;
import vo.SpecVO;



// Service 클래스
// => Controller 와  DAO 사이에서 
//    요청받은 역활을 수행하는 클래스
//    즉, dao 를 실행하는 클래스

// ** interface 자동완성 
// => Shift + Alt + T

@Service
public class SpServiceImpl implements SpService {
	
	@Autowired
	SpecDAO dao ;
	
	// selectList
	
//	@Override
//	public ArrayList<SpecVO> specSelectList() {
//		return dao.specSelectList();
//	}
	
	// selctOne
		@Override
		public SpecVO specSelectOne(SpecVO vo) {
			return dao.specSelectOne(vo);
		}
	
	
} // class
