package resumeDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SelfqaVO;
import vo.SelftitleVO;
import vo.SpecVO;

@Repository
public class ResumeDAO {

	@Autowired
	private SqlSession dao ;
	private final static String NS="work.mappers.resumeMapper.";
	

	
	public ArrayList<SelftitleVO> selfTitleList(SelftitleVO vo) {  
		return (ArrayList)dao.selectList(NS+"selfTitleList",vo);
	}
	
	public int resumeUpdate(SelftitleVO vo) {  
		return dao.update(NS+"resumeUpdate",vo);
	}
	public int selftitleInsert(SelftitleVO vo) {
		return dao.insert(NS+"selftitleInsert",vo);
	}
	
	public int selfqaInsert(SelfqaVO vo) {
		return dao.insert(NS+"selfqaInsert",vo);
	}
	
	public int selfqaDelete(SelftitleVO vo) {
		return dao.delete(NS+"selfqaDelete",vo);
	}	
	public int selftitleDelete(SelftitleVO vo) {
		return dao.delete(NS+"selftitleDelete",vo);
	}	
	

}
