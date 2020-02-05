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
	private SqlSession dao ;
	private final static String NS="work.mappers.adminMapper.";

	
	public ArrayList<EmemberVO> selectList() {
		return (ArrayList)dao.selectList(NS+"selectList");
	} // selectList()
	
	
	public ArrayList<JobopenVO> jobopenList() {
		return (ArrayList)dao.selectList(NS+"jobopenList");
	} // selectList()
	
	public ArrayList<InquiryVO> answerList() {
		return (ArrayList)dao.selectList(NS+"answerList");
	} // selectList()
	
	public ArrayList<SelflabVO> blogList() {
		return (ArrayList)dao.selectList(NS+"blogList");
	} // selectList()

	public AdminVO adminLogin(AdminVO vo) {		
		return dao.selectOne(NS+"adminLogin",vo); 
	} // login
	
	public int jobopenInsert(JobopenVO vo) {
		return dao.insert(NS+"jobopenInsert", vo);
	} // insert

	public int jobcategoryInsert(JobcategoryVO vo,JobopenVO jvo) {
		
		return dao.insert(NS+"jobcategoryInsert", vo);
	} // insert
	
	public int jobqaInsert(JobqaVO vo,JobopenVO jvo) {
		
		return dao.insert(NS+"jobqaInsert", vo);
	} // insert
}//end EmemberDAO 
