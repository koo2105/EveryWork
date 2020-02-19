package business;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import resumeDAO.ResumeDAO;
import vo.SelfqaVO;
import vo.SelftitleVO;

// Service 클래스
// => Controller 와  DAO 사이에서 
//    요청받은 역활을 수행하는 클래스
//    즉, dao 를 실행하는 클래스

// ** interface 자동완성 
// => Shift + Alt + T

@Service
public class RServiceImpl implements RService {
	@Autowired
	ResumeDAO dao ;
	
	// selectList
@Override
public ArrayList<SelftitleVO> selfTitleList(SelftitleVO vo) {
	return dao.selfTitleList(vo);
}

@Override
public ArrayList<SelfqaVO> selfqaList(SelftitleVO vo) {
	return dao.selfqaList(vo);
}

@Override
public int resumeUpdate(SelftitleVO vo) {
	return dao.resumeUpdate(vo);
}

@Override
public int selftitleInsert(SelftitleVO vo) {
	return dao.selftitleInsert(vo);
}

@Override
public int selfqaInsert(SelfqaVO vo) {
	return dao.selfqaInsert(vo);
}

@Override
public int selfqaDelete(SelftitleVO vo) {
	return dao.selfqaDelete(vo);
}

@Override
public int selftitleDelete(SelftitleVO vo) {
	return dao.selftitleDelete(vo);
}

@Override
public SelftitleVO selftitleMaxId() {
	return dao.selftitleMaxId();
}

@Override
public SelftitleVO selftitleOne(SelftitleVO vo) {
	return dao.selftitleOne(vo);
}

} // class
