package business;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import memberDAO.EmemberDAO;
import vo.EmemberVO;
import vo.InquiryVO;

// Service 클래스
// => Controller 와  DAO 사이에서 
//    요청받은 역활을 수행하는 클래스
//    즉, dao 를 실행하는 클래스

// ** interface 자동완성 
// => Shift + Alt + T

@Service
public class MServiceImpl implements MService {
	@Autowired
	EmemberDAO dao ;
	

	// selctOne
	@Override
	public EmemberVO selectOne(EmemberVO vo) {
		return dao.selectOne(vo);
	}
	// login
	@Override
	public EmemberVO login(EmemberVO vo) {
		return dao.login(vo);
	}
	
	// join
	@Override
	public int insert(EmemberVO vo) {
		return dao.insert(vo);
	}
	
	
	// update
	@Override
	public int update(EmemberVO vo) {
		return dao.update(vo);
	}
	
	@Override
	public int answerInsert(InquiryVO vo) {
		return dao.answerInsert(vo);
	}
	/*
	// delete
	@Override
	public int delete(EmemberVO vo) {
		return dao.delete(vo);
	}*/
} // class
