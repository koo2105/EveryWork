package business;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import resumeDAO.SpecDAO;
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



// Service Ŭ����
// => Controller ��  DAO ���̿��� 
//    ��û���� ��Ȱ�� �����ϴ� Ŭ����
//    ��, dao �� �����ϴ� Ŭ����

// ** interface �ڵ��ϼ� 
// => Shift + Alt + T

@Service
public class SpServiceImpl implements SpService {
	
	@Autowired
	SpecDAO dao ;
	
	// selectList

	
	// selctOne
		@Override
		public SpecVO specSelectOne(SpecVO vo) {
			return dao.specSelectOne(vo);
		}
@Override
	public int specInsert(SpecVO vo) {
		return dao.specInsert(vo);
	}
@Override
public int specUpdate(SpecVO vo) {
	return dao.specUpdate(vo);
}
@Override
public int specAllDelete(SpecVO vo) {
	return dao.specAllDelete(vo);
}

@Override
public int awardsInsert(SpecAwardsVO vo) {
	return dao.awardsInsert(vo);
}
@Override
public int careerInsert(SpecCareerVO vo) {
	return dao.careerInsert(vo);
}
@Override
public int educationInsert(SpecEducationVO vo) {
	return dao.educationInsert(vo);
}
@Override
public int experienceInsert(SpecExperienceVO vo) {
	return dao.experienceInsert(vo);
}
@Override
public int graduateSchInsert(SpecGraduateSchVO vo) {
	return dao.graduateSchInsert(vo);
}
@Override
public int languageInsert(SpecLanguageVO vo) {
	return dao.languageInsert(vo);
}
@Override
public int licenseInsert(SpecLicenseVO vo) {
	return dao.licenseInsert(vo);
}
@Override
public int overseasInsert(SpecOverseasVO vo) {
	return dao.overseasInsert(vo);
}
@Override
public int universityInsert(SpecUniversityVO vo) {
	return dao.universityInsert(vo);
}

} // class
