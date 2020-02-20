package business;

import java.util.ArrayList;

import vo.EmemberVO;
import vo.SelflabVO;



public interface SlService {

	ArrayList<SelflabVO> selflabList(SelflabVO vo);
	ArrayList<SelflabVO> selflablistAll(SelflabVO vo);
	SelflabVO selflabOne(SelflabVO vo);
}