package com.every.work;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.SService;
import vo.SpecVO;


@Controller
public class SpecController {
	
	@Autowired
	SService service;
	
//	@RequestMapping(value = "/specForm")
//	public ModelAndView specForm(ModelAndView mv) {
//		ArrayList<SpecVO> list = service.specSelectList();
//		mv.addObject("specList", list);
//		mv.setViewName("resume/specForm");
//		return mv;
//	}// 
	
	
	
	@RequestMapping(value = "/specForm")
	public ModelAndView sdetail(ModelAndView mv, SpecVO vo) {
		System.out.println(vo);
		if(vo.getEmem_id()!=null){
		vo = service.specSelectOne(vo);
		mv.addObject("sDetail", vo);
		}
		mv.setViewName("resume/specForm");
		
		return mv;
	}// loginf	
	

}
