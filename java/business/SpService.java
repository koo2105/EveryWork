package business;

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



public interface SpService {

//	// selectList
//	ArrayList<SpecVO> specSelectList();

	// selctOne
	SpecVO specSelectOne(SpecVO vo);
	int specUpdate(SpecVO vo);
	public int specInsert(SpecVO vo);
	public int specAllDelete(SpecVO vo);
	public int universityInsert(SpecUniversityVO vo);
	public int graduateSchInsert(SpecGraduateSchVO vo);
	public int licenseInsert(SpecLicenseVO vo);
	public int careerInsert(SpecCareerVO vo);
	public int languageInsert(SpecLanguageVO vo);
	public int awardsInsert(SpecAwardsVO vo);
	public int overseasInsert(SpecOverseasVO vo) ;
	public int experienceInsert(SpecExperienceVO vo);
	public int educationInsert(SpecEducationVO vo);
}