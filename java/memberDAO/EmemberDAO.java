package memberDAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmemberVO;
import vo.InquiryVO;





@Repository
public class EmemberDAO {
	
	@Autowired
	private SqlSession dao ;
	private final static String NS="work.mappers.memberMapper.";
	
	public EmemberVO selectOne(EmemberVO vo) {   
		return dao.selectOne(NS+"selectOne",vo);
	} // selectOne
	
	public EmemberVO login(EmemberVO vo) {
		return dao.selectOne(NS+"login",vo); 
	} // login
	
	public int insert(EmemberVO vo) {
		return dao.insert(NS+"ememberInsert", vo);
	} // insert
	
	public int update(EmemberVO vo) {
		return dao.update(NS+"ememberUpdate", vo);
	} // update
	
	public int answerInsert(InquiryVO vo) {
		return dao.insert(NS+"answerInsert", vo);
	} // insert
	
	
}//end EmemberDAO 
