package business;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import memberDAO.EmemberDAO;
import vo.EmemberVO;

// Service Ŭ����
// => Controller ��  DAO ���̿��� 
//    ��û���� ��Ȱ�� �����ϴ� Ŭ����
//    ��, dao �� �����ϴ� Ŭ����

// ** interface �ڵ��ϼ� 
// => Shift + Alt + T

@Service
public class MServiceImpl implements MService {
	@Autowired
	EmemberDAO dao ;
	
	// selectList
	@Override
	public ArrayList<EmemberVO> selectList() {
		return dao.selectList();
	}
	// selctOne
	@Override
	public EmemberVO selectOne(EmemberVO vo) {
		return dao.selectOne(vo);
	}
	// login
	@Override
	public EmemberVO login(EmemberVO vo) {
		return dao.login(vo);
	}
	
	// join
	@Override
	public int insert(EmemberVO vo) {
		return dao.insert(vo);
	}
	
	/*
	// update
	@Override
	public int update(EmemberVO vo) {
		return dao.update(vo);
	}
	// delete
	@Override
	public int delete(EmemberVO vo) {
		return dao.delete(vo);
	}*/
} // class
