package selflabDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SelflabVO;

@Repository
public class SelflabDAO {

	@Autowired
	private SqlSession dao;
	private final static String NS = "work.mappers.selflabMapper.";

	public ArrayList<SelflabVO> selflabList(SelflabVO vo) {
		ArrayList<SelflabVO> list = (ArrayList) dao.selectList(NS+"selflabList",vo);
		return list;
	} // selectList()
	
	public ArrayList<SelflabVO> selflablistAll(SelflabVO vo) {
		ArrayList<SelflabVO> list = (ArrayList) dao.selectList(NS+"selflablistAll",vo);
		return list;
	} // selectList()

}// end EmemberDAO
