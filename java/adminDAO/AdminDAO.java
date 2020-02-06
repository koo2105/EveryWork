package adminDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.AdminVO;
import vo.EmemberVO;
import vo.InquiryVO;
import vo.JobcategoryVO;
import vo.JobopenVO;
import vo.JobqaVO;
import vo.SelflabVO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSession dao;
	private final static String NS = "work.mappers.adminMapper.";

	public ArrayList<EmemberVO> selectList() {
		return (ArrayList) dao.selectList(NS + "selectList");
	} // selectList()

	public ArrayList<JobopenVO> jobopenList() {
		return (ArrayList) dao.selectList(NS + "jobopenList");
	} // selectList()

	public ArrayList<InquiryVO> answerList() {
		return (ArrayList) dao.selectList(NS + "answerList");
	} // selectList()

	public ArrayList<SelflabVO> blogList() {
		return (ArrayList) dao.selectList(NS + "blogList");
	} // selectList()

	public AdminVO adminLogin(AdminVO vo) {
		return dao.selectOne(NS + "adminLogin", vo);
	} // login

	public int jobopenInsert(JobopenVO vo1, JobcategoryVO vo2, JobqaVO vo3) {
		int cat = 0;
		int qa = 0;
		int cnt = 0;

		if (vo1 != null) {
			cnt = dao.insert(NS + "jobopenInsert", vo1);

			if (vo1.getJc_div() != null) {
				for (int i = 0; i < vo1.getJc_div().length; i++) {
					vo2.setJobopen_id(vo1.getJobopen_id());
					vo2.setJc_div(vo1.getJc_div()[i]);
					vo2.setJc_part(vo1.getJc_part()[i]);
					dao.insert(NS + "jobcategoryInsert", vo2);
					cat++;

				}

			}
			if (vo1.getJobqa_q() != null) {
				for (int i = 0; i < vo1.getJobqa_q().length; i++) {
					vo3.setJc_id(vo2.getJc_id());
					vo3.setJobqa_q(vo1.getJobqa_q()[i]);
					dao.insert(NS + "jobqaInsert", vo3);
					qa++;
				}
			}
		}
		return cnt;
	} // insert

}// end EmemberDAO
