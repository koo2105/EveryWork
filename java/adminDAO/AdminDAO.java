package adminDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.AdminVO;
import vo.EmemberVO;
import vo.InquiryVO;
import vo.JobcategoryVO;
import vo.JobopenVO;
import vo.JobqaVO;
import vo.SelflabVO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSession dao;
	private final static String NS = "work.mappers.adminMapper.";

	public ArrayList<EmemberVO> selectList() {
		return (ArrayList) dao.selectList(NS + "selectList");
	} // selectList()

	public ArrayList<JobopenVO> jobopenList() {
		return (ArrayList) dao.selectList(NS + "jobopenList");
	} // selectList()

	public ArrayList<InquiryVO> answerList() {
		return (ArrayList) dao.selectList(NS + "answerList");
	} // selectList()

	public ArrayList<SelflabVO> blogList() {
		return (ArrayList) dao.selectList(NS + "blogList");
	} // selectList()

	public AdminVO adminLogin(AdminVO vo) {
		return dao.selectOne(NS + "adminLogin", vo);
	} // login

	public int jobopenInsert(JobopenVO vo) {
		int cnt = 0;
		if (vo != null) {
			cnt = dao.insert(NS + "jobopenInsert", vo);
		}
		return cnt;
	} // insert
	
	public int jobcaInsert(JobcategoryVO vo) {
		return dao.insert(NS + "jobcaInsert", vo);
	} // insert
	
	
	public int jobqaInsert(JobqaVO vo) {		
		return dao.insert(NS + "jobqaInsert", vo);
	} // insert
	

	public JobopenVO bdetail(JobopenVO vo) {
		return dao.selectOne(NS + "bdetail",vo);
	} // selectList()
	
	public EmemberVO minfo(EmemberVO vo) {
		return dao.selectOne(NS + "minfo",vo);
	} // selectList()
	
	
	public int delete(EmemberVO vo) {
		return dao.delete(NS+"minfoDelete", vo);
	} // delete
	
	public SelflabVO binfoDetail(SelflabVO vo) {
		return dao.selectOne(NS + "binfoDetail",vo);
	} // binfoDetail()
	
	public int binfoDelete(SelflabVO vo) {
		return dao.delete(NS + "binfoDelete",vo);
	} // binfoDelete()
	
	public InquiryVO answerDetail(InquiryVO vo) {
		return dao.selectOne(NS + "answerDetail",vo);
	} // answerDetail()
	
	public int answerDelete(InquiryVO vo) {
		return dao.delete(NS + "answerDelete",vo);
	} // answerDelete()
	
	public int bDelete(JobopenVO vo) {
		return dao.delete(NS + "bDelete",vo);
	} // answerDelete()
	
	public int blogInsert(SelflabVO vo) {
		int cnt = 0;

		if (vo != null) {
			cnt = dao.insert(NS + "blogInsert", vo);
		}
		return cnt;
	} // insert
	
	public int blogUpdate(SelflabVO vo) {
		return dao.update(NS+"blogUpdate", vo);
	} // update
	
	public int answerProcess(InquiryVO vo) {
		return dao.update(NS+"answerProcess", vo);
	}
	
	public int answerUpdate(InquiryVO vo) {
		return dao.update(NS+"answerUpdate", vo);
	}//answerUpdate()
	
	
	public JobcategoryVO jobcaMaxID() {
		return dao.selectOne(NS+"jobcaMaxID");
	}
	
	public JobopenVO jobopenMaxID() {
		return dao.selectOne(NS+"jobopenMaxID");
	}
	
	public ArrayList<JobcategoryVO> jobcategoryList(JobopenVO vo) {
		return (ArrayList)dao.selectList(NS+"jobcategoryList",vo);
	}
	
	public ArrayList<JobqaVO> jobqaList(JobopenVO vo) {
		return (ArrayList)dao.selectList(NS+"jobqaList",vo);
	}
}// end EmemberDAO
