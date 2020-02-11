package business;

import vo.EmemberVO;
import vo.InquiryVO;



public interface MService {

	// selctOne
	EmemberVO selectOne(EmemberVO vo);

	// login
	EmemberVO login(EmemberVO vo);

	
	int insert(EmemberVO vo);
	
	int update(EmemberVO vo);
	
	int answerInsert(InquiryVO vo);

	/*
	// delete
	int delete(EmemberVO vo);*/

}