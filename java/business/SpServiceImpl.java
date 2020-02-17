package business;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import resumeDAO.SpecDAO;
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
	
} // class
