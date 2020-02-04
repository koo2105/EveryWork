package business;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import adminDAO.AdminDAO;
import vo.EmemberVO;
import vo.InquiryVO;
import vo.JobopenVO;

// Service 클래스
// => Controller 와  DAO 사이에서 
//    요청받은 역활을 수행하는 클래스
//    즉, dao 를 실행하는 클래스

// ** interface 자동완성 
// => Shift + Alt + T

@Service
public class AdServiceImpl implements AdService {
	@Autowired
	AdminDAO dao ;
	
	// selectList
	@Override
	public ArrayList<EmemberVO> selectList() {
		return dao.selectList();
	}
	
	@Override
	public ArrayList<JobopenVO> jobopenList() {
		return dao.jobopenList();
	}
	
	@Override
	public ArrayList<InquiryVO> answerList() {
		return dao.answerList();
	}
	
} // class
