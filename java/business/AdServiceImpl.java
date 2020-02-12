package business;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import adminDAO.AdminDAO;
import vo.AdminVO;
import vo.EmemberVO;
import vo.InquiryVO;
import vo.JobcategoryVO;
import vo.JobopenVO;
import vo.JobqaVO;
import vo.SelflabVO;

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
	
	@Override
	public ArrayList<SelflabVO> blogList() {
		return dao.blogList();
	}
	
	@Override
	public AdminVO adminLogin(AdminVO vo) {
		return dao.adminLogin(vo);
	}
	
	@Override
	public int jobopenInsert(JobopenVO vo) {
		return dao.jobopenInsert(vo);
	}

	
} // class
