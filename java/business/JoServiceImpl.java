package business;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import calendar.JobCalendar;
import jobopenDAO.JobopenDAO;
import vo.JobcategoryVO;
import vo.JobopenVO;
import vo.JobqaVO;
import vo.ScrapVO;

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
	
	@Override
	public ArrayList<JobcategoryVO> jobcategorySelectList(JobopenVO vo) {
		return dao.jobcategorySelectList(vo);
	}

	@Override
	public ArrayList<JobqaVO> writeResumeBtn(JobcategoryVO vo) {
		
		return dao.writeResumeBtn(vo);
	}
	
	@Override
	public ArrayList<JobopenVO> jobopenMonList(JobCalendar jc) {
		return dao.jobopenMonList(jc);
	}
	
	@Override
	public ArrayList<JobopenVO> scrapMonList(JobCalendar jc) {
		return dao.scrapMonList(jc);
	}
	@Override
	public int scrapInsert(JobCalendar jc) {
		return dao.scrapInsert(jc);
	}
	
}
