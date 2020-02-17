package resumeDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SpecAwardsVO;
import vo.SpecCareerVO;
import vo.SpecEducationVO;
import vo.SpecExperienceVO;
import vo.SpecGraduateSchVO;
import vo.SpecLanguageVO;
import vo.SpecLicenseVO;
import vo.SpecOverseasVO;
import vo.SpecUniversityVO;
import vo.SpecVO;

@Repository
public class SpecDAO {

	@Autowired
	private SqlSession dao ;
	private final static String NS="work.mappers.specMapper.";
	
	public SpecVO specSelectOne(SpecVO vo) {  
		vo=dao.selectOne(NS+"specSelectOne",vo);
		vo.setAlist((ArrayList)dao.selectList(NS+"awardsList",vo));
		vo.setClist((ArrayList)dao.selectList(NS+"careerList",vo));
		vo.setEdlist((ArrayList)dao.selectList(NS+"educationList",vo));
		vo.setExlist((ArrayList)dao.selectList(NS+"experienceList",vo));
		vo.setMlist((ArrayList)dao.selectList(NS+"graduateSchList",vo));
		vo.setLalist((ArrayList)dao.selectList(NS+"languageList",vo));
		vo.setLilist((ArrayList)dao.selectList(NS+"licenseList",vo));
		vo.setOlist((ArrayList)dao.selectList(NS+"overseasList",vo));
		vo.setUlist((ArrayList)dao.selectList(NS+"universityList",vo));
		return vo;
	} // select
	
	public int specUpdate(SpecVO vo) {  
		return dao.update(NS+"specUpdate",vo);
	}
	public int specInsert(SpecVO vo) {
		return dao.insert(NS+"specInsert",vo);
	}
	public int specAllDelete(SpecVO vo){
		int cnt=0;
		cnt+=dao.delete(NS+"universityDelete",vo);
		cnt+=dao.delete(NS+"graduateSchDelete",vo);
		cnt+=dao.delete(NS+"licenseDelete",vo);
		cnt+=dao.delete(NS+"careerDelete",vo);
		cnt+=dao.delete(NS+"languageDelete",vo);
		cnt+=dao.delete(NS+"awardsDelete",vo);
		cnt+=dao.delete(NS+"overseasDelete",vo);
		cnt+=dao.delete(NS+"experienceDelete",vo);
		cnt+=dao.delete(NS+"educationDelete",vo);
		return cnt;
	}	
	public int universityInsert(SpecUniversityVO vo) {
		return dao.insert(NS+"universityInsert",vo);
	}
	public int graduateSchInsert(SpecGraduateSchVO vo) {
		return dao.insert(NS+"graduateSchInsert",vo);
	}
	public int licenseInsert(SpecLicenseVO vo) {
		return dao.insert(NS+"licenseInsert",vo);
	}
	public int careerInsert(SpecCareerVO vo) {
		return dao.insert(NS+"careerInsert",vo);
	}
	public int languageInsert(SpecLanguageVO vo) {
		return dao.insert(NS+"languageInsert",vo);
	}
	public int awardsInsert(SpecAwardsVO vo) {
		return dao.insert(NS+"awardsInsert",vo);
	}
	public int overseasInsert(SpecOverseasVO vo) {
		return dao.insert(NS+"overseasInsert",vo);
	}
	public int experienceInsert(SpecExperienceVO vo) {
		return dao.insert(NS+"experienceInsert",vo);
	}
	public int educationInsert(SpecEducationVO vo) {
		return dao.insert(NS+"educationInsert",vo);
	}
}
