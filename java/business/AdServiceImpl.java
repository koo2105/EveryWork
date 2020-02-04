package business;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import adminDAO.AdminDAO;
import vo.EmemberVO;
import vo.InquiryVO;
import vo.JobopenVO;

// Service Ŭ����
// => Controller ��  DAO ���̿��� 
//    ��û���� ��Ȱ�� �����ϴ� Ŭ����
//    ��, dao �� �����ϴ� Ŭ����

// ** interface �ڵ��ϼ� 
// => Shift + Alt + T

@Service
public class AdServiceImpl implements AdService {
	@Autowired
	AdminDAO dao ;
	
	// selectList
	@Override
	public ArrayList<EmemberVO> selectList() {
		return dao.selectList();
	}
	
	@Override
	public ArrayList<JobopenVO> jobopenList() {
		return dao.jobopenList();
	}
	
	@Override
	public ArrayList<InquiryVO> answerList() {
		return dao.answerList();
	}
	
} // class
