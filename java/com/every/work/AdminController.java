package com.every.work;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.AdService;
import vo.EmemberVO;





@Controller
public class AdminController {

	@Autowired
	AdService service ;
	

	@RequestMapping(value = "/amlist")
	public ModelAndView amlist(ModelAndView mv) {
		ArrayList<EmemberVO> list = service.selectList();
		mv.addObject("List", list);
		mv.setViewName("adminTest/axmemberList");
		return mv;
	}// mlist 
	


} // class
