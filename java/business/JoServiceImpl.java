package business;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jobopenDAO.JobopenDAO;
import vo.JobopenVO;

@Service
public class JoServiceImpl implements JoService {

	@Autowired
	JobopenDAO dao;

	@Override
	public ArrayList<JobopenVO> jobopenHome() {
		return dao.jobopenHome();
	}

	@Override
	public ArrayList<JobopenVO> jobopenPopular() {

		return dao.jobopenPopular();
	}
	
	
	@Override
	public ArrayList<JobopenVO> jobopenThisWeek() {
		return dao.jobopenThisWeek();
	}

	
	@Override
	public JobopenVO jobopenDetail(JobopenVO vo) {
		return dao.jobopenDetail(vo);
	}
}