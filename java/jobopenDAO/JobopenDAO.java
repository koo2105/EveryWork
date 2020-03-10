package jobopenDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import calendar.JobCalendar;
import vo.EmemberVO;
import vo.JobcategoryVO;
import vo.JobopenVO;
import vo.JobqaVO;
import vo.ScrapVO;


@Repository
public class JobopenDAO {
	
	@Autowired
	private SqlSession dao ;
	private final static String NS="work.mappers.jobopenMapper.";
	

	
	public ArrayList<JobopenVO> jobopenHome() {
		return (ArrayList) dao.selectList(NS + "jobopenHome");
	} //jobopenHome()
	
	public ArrayList<JobopenVO> jobopenPopular() {
		return (ArrayList) dao.selectList(NS + "jobopenPopular");
	} // jobopenPopular()
	
	public ArrayList<JobopenVO> jobopenThisWeek() {
		return (ArrayList) dao.selectList(NS + "jobopenThisWeek");
	} // jobopenThisWeek()

	public JobopenVO jobopenDetail(JobopenVO vo) {
		dao.update(NS + "jobopenCnt",vo);
		return dao.selectOne(NS + "jobopenDetail",vo);
	} // 
	
	public ArrayList<JobcategoryVO> jobcategorySelectList(JobopenVO vo) {
		return (ArrayList) dao.selectList(NS + "jobcategorySelectList",vo);
	} // jobcategorySelectList()
	
	public ArrayList<JobqaVO> writeResumeBtn(JobcategoryVO vo) {
		return (ArrayList) dao.selectList(NS + "writeResumeBtn",vo);
	} // writeResumeBtn()
	
	public ArrayList<JobopenVO> jobopenMonList(JobCalendar jc) {
		return (ArrayList) dao.selectList(NS + "jobopenMonList",jc);
	} //jobopenMonList()
	
	public ArrayList<JobopenVO> scrapMonList(JobCalendar jc){
		return (ArrayList) dao.selectList(NS + "scrapMonList", jc );
	} //scrapMonList()
	
	public int scrapInsert(JobCalendar jc) {
		ScrapVO vo = dao.selectOne(NS + "scrapCheck",jc);
		int cnt=0;
		if(vo != null) {
			cnt = dao.delete(NS + "scrapDelete",jc);
		}else {
			cnt = dao.insert(NS + "scrapInsert", jc);
		}
		return cnt;
	} //scrapInsert()
	
	public ScrapVO scrapCheck(JobopenVO vo) {
		return dao.selectOne(NS+"scrapCheck",vo);	
	}
	


}//end EmemberDAO 
