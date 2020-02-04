package adminDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmemberVO;
import vo.InquiryVO;
import vo.JobopenVO;
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
}//end EmemberDAO 
