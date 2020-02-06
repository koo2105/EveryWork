package business;

import java.util.ArrayList;

import vo.AdminVO;
import vo.EmemberVO;
import vo.InquiryVO;
import vo.JobcategoryVO;
import vo.JobopenVO;
import vo.JobqaVO;
import vo.SelflabVO;



public interface AdService {

	// selectList
	ArrayList<EmemberVO> selectList();
	ArrayList<JobopenVO> jobopenList();
	ArrayList<InquiryVO> answerList();
	ArrayList<SelflabVO> blogList();
	AdminVO adminLogin(AdminVO vo);
	int jobopenInsert(JobopenVO vo1,JobcategoryVO vo2,JobqaVO vo3);

}