package business;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jobopenDAO.JobopenDAO;
import vo.JobopenVO;

@Service
public class JoServiceImpl implements JoService {
 
	@Autowired
	JobopenDAO dao ;
	
	
	@Override
	public ArrayList<JobopenVO> jobopenHome() {
		return dao.jobopenHome();
	}

}
