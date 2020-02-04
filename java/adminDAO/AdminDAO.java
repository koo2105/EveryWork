package adminDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.EmemberVO;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSession dao ;
	private final static String NS="work.mappers.adminMapper.";

	
	public ArrayList<EmemberVO> selectList() {
		return (ArrayList)dao.selectList(NS+"selectList");
	} // selectList()
	
}//end EmemberDAO 
