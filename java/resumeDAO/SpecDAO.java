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
		vo.setAlist((ArrayList)dao.selectList(NS+"universityList",vo));
		vo.setClist((ArrayList)dao.selectList(NS+"graduateSchList",vo));
		vo.setEdlist((ArrayList)dao.selectList(NS+"licenseList",vo));
		vo.setExlist((ArrayList)dao.selectList(NS+"careerList",vo));
		vo.setMlist((ArrayList)dao.selectList(NS+"languageList",vo));
		vo.setLalist((ArrayList)dao.selectList(NS+"awardsList",vo));
		vo.setLilist((ArrayList)dao.selectList(NS+"overseasList",vo));
		vo.setOlist((ArrayList)dao.selectList(NS+"experienceList",vo));
		vo.setUlist((ArrayList)dao.selectList(NS+"educationList",vo));
		return vo;
	} // selectOne
	
}
