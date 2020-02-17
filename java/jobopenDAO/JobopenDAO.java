package jobopenDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.JobopenVO;


@Repository
public class JobopenDAO {
	
	@Autowired
	private SqlSession dao ;
	private final static String NS="work.mappers.jobopenMapper.";
	

	
	public ArrayList<JobopenVO> jobopenHome() {
		return (ArrayList) dao.selectList(NS + "jobopenHome");
	} // selectList()
	
	public ArrayList<JobopenVO> jobopenPopular() {
		return (ArrayList) dao.selectList(NS + "jobopenPopular");
	} // selectList()

	
}//end EmemberDAO 
