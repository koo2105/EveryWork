package memberDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmemberVO;



@Repository
public class EmemberDAO {
	
	@Autowired
	private SqlSession dao ;
	private final static String NS="work.mappers.memberMapper.";

	
	public ArrayList<EmemberVO> selectList() {
		return (ArrayList)dao.selectList(NS+"selectList");
	} // selectList()
	
	public EmemberVO selectOne(EmemberVO vo) {
		return dao.selectOne(NS+"selectOne",vo);
	} // selectOne
	
	public EmemberVO login(EmemberVO vo) {
		return dao.selectOne(NS+"login",vo); 
	} // login
	
	
}//end EmemberDAO 
