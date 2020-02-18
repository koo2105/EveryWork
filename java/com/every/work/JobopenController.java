package com.every.work;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.JoService;
import vo.JobopenVO;

@Controller
public class JobopenController {
	
	@Autowired
	JoService service;
	
	@RequestMapping(value = "/jobopenDetail")
	public ModelAndView jobopenDetail(ModelAndView mv,JobopenVO vo) {
		vo=service.jobopenDetail(vo);
		mv.addObject("jDetail", vo);
		mv.setViewName("jobOpening/jobDetail");
		return mv;
	}// mlist 
	
	
	
	

}
