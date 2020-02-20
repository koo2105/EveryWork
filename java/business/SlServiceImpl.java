package business;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import selflabDAO.SelflabDAO;
import vo.SelflabVO;

// Service Ŭ����
// => Controller ��  DAO ���̿��� 
//    ��û���� ��Ȱ�� �����ϴ� Ŭ����
//    ��, dao �� �����ϴ� Ŭ����

// ** interface �ڵ��ϼ� 
// => Shift + Alt + T

@Service
public class SlServiceImpl implements SlService {
	@Autowired
	SelflabDAO dao ;
	
	@Override
	public ArrayList<SelflabVO> selflabList(SelflabVO vo) {
		return dao.selflabList(vo);
	}
	
	@Override
	public ArrayList<SelflabVO> selflablistAll(SelflabVO vo) {
		return dao.selflablistAll(vo);
	}

	@Override
	public SelflabVO selflabOne(SelflabVO vo) {
		return dao.selflabOne(vo);
	}
	

	
} // class
