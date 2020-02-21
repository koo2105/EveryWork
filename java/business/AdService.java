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
	int jobopenInsert(JobopenVO vo);
	int jobqaInsert(JobqaVO vo);
	int jobcaInsert(JobcategoryVO vo);
	JobopenVO bdetail(JobopenVO vo);
	EmemberVO minfo(EmemberVO vo);
	int delete(EmemberVO vo);
	SelflabVO binfoDetail(SelflabVO vo);
	InquiryVO answerDetail(InquiryVO vo);
	int binfodelete(SelflabVO vo);
	int answerDelete(InquiryVO vo);
	int bDelete(JobopenVO vo);
	int blogInsert(SelflabVO vo);
	int blogUpdate(SelflabVO vo);
	int answerProcess(InquiryVO vo);
	int answerUpdate(InquiryVO vo);
	JobcategoryVO jobcaMaxID();
	JobopenVO jobopenMaxID();
	ArrayList<JobcategoryVO> jobcategoryList(JobopenVO vo);
	ArrayList<JobqaVO> jobqaList(JobopenVO vo);
	int jobopenUpdate(JobopenVO vo);
	int jobcatDelete(JobopenVO vo);
}