package business;

import java.util.ArrayList;

import vo.EmemberVO;



public interface MService {

	// selctOne
	EmemberVO selectOne(EmemberVO vo);

	// login
	EmemberVO login(EmemberVO vo);

	
	int insert(EmemberVO vo);

	
	int update(EmemberVO vo);

	/*
	// delete
	int delete(EmemberVO vo);*/

}