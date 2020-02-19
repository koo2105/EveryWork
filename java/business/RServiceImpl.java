package business;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import resumeDAO.ResumeDAO;
import vo.SelfqaVO;
import vo.SelftitleVO;

// Service Ŭ����
// => Controller ��  DAO ���̿��� 
//    ��û���� ��Ȱ�� �����ϴ� Ŭ����
//    ��, dao �� �����ϴ� Ŭ����

// ** interface �ڵ��ϼ� 
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
