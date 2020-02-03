package business;

import java.util.ArrayList;

import vo.EmemberVO;



public interface MService {

	// selectList
	ArrayList<EmemberVO> selectList();

	// selctOne
	EmemberVO selectOne(EmemberVO vo);

	// login
	EmemberVO login(EmemberVO vo);

	
	int insert(EmemberVO vo);

	
	/*// update
	int update(EmemberVO vo);

	// delete
	int delete(EmemberVO vo);*/

}