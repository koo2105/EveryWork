package business;

import java.util.ArrayList;

import vo.EmemberVO;
import vo.InquiryVO;
import vo.JobopenVO;



public interface AdService {

	// selectList
	ArrayList<EmemberVO> selectList();
	ArrayList<JobopenVO> jobopenList();
	ArrayList<InquiryVO> answerList();

}