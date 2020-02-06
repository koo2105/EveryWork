package resumeDAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SpecDAO {

	@Autowired
	private SqlSession dao ;
	private final static String NS="work.mappers.specMapper.";
	
	
	
	
	
	
}
