package resumeDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SpecVO;

@Repository
public class SpecDAO {

	@Autowired
	private SqlSession dao ;
	private final static String NS="work.mappers.specMapper.";
	
	public SpecVO specSelectOne(SpecVO vo) {   
		return dao.selectOne(NS+"specSelectOne",vo);
	} // selectOne

	
//	public ArrayList<SpecVO> specSelectList() {
//		return (ArrayList)dao.selectList(NS+"specSelectList");
//	}
	
	
	
}
