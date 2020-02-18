package business;

import java.util.ArrayList;

import vo.JobopenVO;

public interface JoService {
	
	ArrayList<JobopenVO> jobopenHome();

	ArrayList<JobopenVO> jobopenPopular();

	ArrayList<JobopenVO> jobopenThisWeek();

	JobopenVO jobopenDetail(JobopenVO vo);

}
