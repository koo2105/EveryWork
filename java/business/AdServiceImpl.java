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

	@Override
	public JobopenVO bdetail(JobopenVO vo) {
		return dao.bdetail(vo);
	}
	
	@Override
	public EmemberVO minfo(EmemberVO vo) {
		return dao.minfo(vo);
	}
	
	@Override
	public int delete(EmemberVO vo) {
		return dao.delete(vo);
	}

	@Override
	public SelflabVO binfoDetail(SelflabVO vo) {
		return dao.binfoDetail(vo);
	}

	@Override
	public InquiryVO answerDetail(InquiryVO vo) {
		return dao.answerDetail(vo);
	}

	@Override
	public int binfodelete(SelflabVO vo) {
		return dao.binfoDelete(vo);
	}

	@Override
	public int answerDelete(InquiryVO vo) {
		
		return dao.answerDelete(vo);
	}

	@Override
	public int bDelete(JobopenVO vo) {
		return dao.bDelete(vo);
	}

	@Override
	public int blogInsert(SelflabVO vo) {
		return dao.blogInsert(vo);
	}

	@Override
	public int blogUpdate(SelflabVO vo) {
		return dao.blogUpdate(vo);
	}

	@Override
	public int answerProcess(InquiryVO vo) {
		return dao.answerProcess(vo);
	}
	@Override
	public int answerUpdate(InquiryVO vo) {
		return dao.answerUpdate(vo);
	}

	@Override
	public int jobqaInsert(JobqaVO vo) {
		return dao.jobqaInsert(vo);
	}

	@Override
	public int jobcaInsert(JobcategoryVO vo) {
		return dao.jobcaInsert(vo);
	}
	
	@Override
	public JobcategoryVO jobcaMaxID() {
		return dao.jobcaMaxID();
	}
	
	@Override
	public JobopenVO jobopenMaxID() {
		return dao.jobopenMaxID();
	}

	
	@Override
	public ArrayList<JobcategoryVO> jobcategoryList(JobopenVO vo) {
		return dao.jobcategoryList(vo);
	}
	@Override
	public ArrayList<JobqaVO> jobqaList(JobopenVO vo) {
		return dao.jobqaList(vo);
	}
} // class
