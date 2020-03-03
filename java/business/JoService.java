package business;

import java.util.ArrayList;

import calendar.JobCalendar;
import vo.JobcategoryVO;
import vo.JobopenVO;
import vo.JobqaVO;

public interface JoService {
	
	ArrayList<JobopenVO> jobopenHome();

	ArrayList<JobopenVO> jobopenPopular();

	ArrayList<JobopenVO> jobopenThisWeek();

	JobopenVO jobopenDetail(JobopenVO vo);


	ArrayList<JobcategoryVO> jobcategorySelectList(JobopenVO vo);
	ArrayList<JobqaVO> writeResumeBtn(JobcategoryVO vo);
	public ArrayList<JobopenVO> jobopenMonList(JobCalendar jc);
}
