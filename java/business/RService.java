package business;

import java.util.ArrayList;

import vo.AdminVO;
import vo.EmemberVO;
import vo.InquiryVO;
import vo.JobcategoryVO;
import vo.JobopenVO;
import vo.JobqaVO;
import vo.SelflabVO;
import vo.SelfqaVO;
import vo.SelftitleVO;
import vo.SpecVO;



public interface RService {

	// selectList
	ArrayList<SelftitleVO> selfTitleList(SelftitleVO vo);
	int resumeUpdate(SelftitleVO vo);
	int selftitleInsert(SelftitleVO vo);
	int selfqaInsert(SelfqaVO vo);
	int selfqaDelete(SelftitleVO vo);
	int selftitleDelete(SelftitleVO vo);
	SelftitleVO selftitleMaxId();
	SelftitleVO selftitleOne(SelftitleVO vo);
	ArrayList<SelfqaVO> selfqaList(SelftitleVO vo);
}