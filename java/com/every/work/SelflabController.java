package com.every.work;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.SlService;
import vo.SelflabVO;

@Controller
public class SelflabController {

	@Autowired
	SlService service;


	@RequestMapping(value = "/resumelist")
	public ModelAndView resumelist(ModelAndView mv, HttpServletRequest request , SelflabVO vo) {
		vo.setLab_cat(request.getParameter("lab_cat"));
		ArrayList<SelflabVO> list = service.selflabList(vo);
		mv.addObject("resumeList", list);
		mv.setViewName("jasose/resumeWell");
		return mv;
	}// mlist

	
	@RequestMapping(value = "/blog") // 자소서연구소
	public ModelAndView blog(ModelAndView mv, SelflabVO vo) {
		
		ArrayList<SelflabVO> list;
		
		vo.setLab_cat("1");
		list = service.selflablistAll(vo);
		mv.addObject("labList1", list);
		vo.setLab_cat("2");
		list = service.selflablistAll(vo);
		mv.addObject("labList2", list);
		vo.setLab_cat("3");
		list = service.selflablistAll(vo);
		mv.addObject("labList3", list);
		
		mv.setViewName("jasose/blog");
		return mv;
	}


} // class
