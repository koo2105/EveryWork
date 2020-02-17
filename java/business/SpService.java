package business;

import vo.SpecVO;



public interface SpService {

//	// selectList
//	ArrayList<SpecVO> specSelectList();

	// selctOne
	SpecVO specSelectOne(SpecVO vo);
	int specUpdate(SpecVO vo);
	public int specInsert(SpecVO vo);
}