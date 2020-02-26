package com.every.work;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.JoService;
import business.RService;
import vo.JobcategoryVO;
import vo.JobopenVO;
import vo.JobqaVO;
import vo.SelftitleVO;

@Controller
public class JobopenController {
	
	@Autowired
	JoService service;
	@Autowired
	RService service2;
	
	
	@RequestMapping(value = "/jobopenDetail")
	public ModelAndView jobopenDetail(ModelAndView mv,JobopenVO vo) {
		vo=service.jobopenDetail(vo);
		mv.addObject("jDetail", vo);
		
		ArrayList<JobcategoryVO> list = service.jobcategorySelectList(vo);
		mv.addObject("JobcaList", list);
		
		mv.setViewName("jobOpening/jobDetail");
		return mv;
	}// jobopenDetail
	
	
	
	@RequestMapping(value = "/wResumeDetail")
	public ModelAndView wResumeDetail(ModelAndView mv,JobcategoryVO vo,SelftitleVO vo2) {
		ArrayList<JobqaVO> list = service.writeResumeBtn(vo);
		mv.addObject("JobqaList", list);
		
		mv.addObject("company", vo.getJobopen_company());
		
		ArrayList<SelftitleVO> list2 = service2.selfTitleList(vo2);
		mv.addObject("titleList",list2); //자소서 목록 전송
		
		mv.setViewName("resume/resumeForm");
		return mv;
	}// jobopenDetail
	
	@RequestMapping(value = "/jobMain")
	public ModelAndView jobMain(ModelAndView mv) {
		mv.setViewName("jobOpening/jobMain");
		return mv;
	}
	
	
	
	
	
	
	
	

}
