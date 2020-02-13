package resumeDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	} // selectOne
	
}
