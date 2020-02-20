package com.every.work;

import java.util.ArrayList;
import java.time.*;
import java.time.temporal.ChronoUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import business.JoService;
import vo.JobopenVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	JoService service;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request, JobopenVO vo, ModelAndView mv) {
		ArrayList<JobopenVO> list = service.jobopenHome();
		mv.addObject("JobList", list);
		
		//jobopenPopular()
		ArrayList<JobopenVO> plist = service.jobopenPopular();
//		LocalDate today = LocalDate.now();
//		for(int i=0; i<plist.size();i++) {
//			String eDates = plist.get(i).getJobopen_edate();
//			eDates= eDates.substring(0, 10);
//			LocalDate eDate = LocalDate.parse(eDates); 
//			plist.get(i).setEndDday(ChronoUnit.DAYS.between(today, eDate));
//			
//		}
		mv.addObject("PopularList", plist);
		// end jobopenPopular()
		
		ArrayList<JobopenVO> twlist = service.jobopenThisWeek();
//		LocalDate twToday = LocalDate.now();
//		for(int i=0; i<twlist.size();i++) {
//			String tDates = twlist.get(i).getJobopen_edate();
//			tDates= tDates.substring(0, 10);
//			LocalDate tDate = LocalDate.parse(tDates); 
//			twlist.get(i).setEndDday(ChronoUnit.DAYS.between(twToday, tDate));
//		}
		mv.addObject("thisWeekList", twlist);
		
		
		
		mv.setViewName("home");
		return mv;
	}
	
	/*
	 * @RequestMapping(value = "/jobopenPopular") public ModelAndView
	 * joinForm(ModelAndView mv,JobopenVO vo) { ArrayList<JobopenVO> list =
	 * service.jobopenPopular(); LocalDate today = LocalDate.now(); for(int i=0;
	 * i<list.size();i++) {
	 * 
	 * String eDates = list.get(i).getJobopen_edate(); eDates= eDates.substring(0,
	 * 9); LocalDate eDate = LocalDate.parse(eDates); Period test
	 * =Period.between(eDate, today);
	 * 
	 * list.get(i).setEndDday(test.getDays());
	 * 
	 * } mv.addObject("PopularList", list); mv.setViewName("home"); return mv; }
	 */
	
	
	
	//Áö¿µ¾²
	
	
	@RequestMapping(value = "/joinForm")
	public ModelAndView joinForm(ModelAndView mv) {
		mv.setViewName("member/joinForm");
		return mv;
	}


	//µÕ Áö¿µ¾²

	//³¿­Z¾²

	@RequestMapping(value = "/bloginsertf")
	public ModelAndView bloginsert(ModelAndView mv) {
		mv.setViewName("adminTest/blogInsertForm");
		return mv;
	}

	@RequestMapping(value = "/jbinsertf")
	public ModelAndView jbinsertf(ModelAndView mv) {
		mv.setViewName("adminTest/jBoardInsertForm");
		return mv;
	}

	@RequestMapping(value = "/seditor")
	public ModelAndView seditor(ModelAndView mv) {
		mv.setViewName("adminTest/SmartEditor2Skin");
		return mv;
	}

	@RequestMapping(value = "/jobMain")
	public ModelAndView jobMain(ModelAndView mv) {
		mv.setViewName("jobOpening/jobMain");
		return mv;
	}

	@RequestMapping(value = "/jdetail")
	public ModelAndView jdetail(ModelAndView mv) {
		mv.setViewName("jobOpening/jobDetail");
		return mv;
	}

	@RequestMapping(value = "/calendar")
	public ModelAndView calendar(ModelAndView mv, HttpServletResponse response, HttpServletRequest request) {
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		request.setAttribute("month", month);
		request.setAttribute("year", year);
		mv.setViewName("jobOpening/calendar");
		return mv;
	}
	// µÕ ³¿­Z½º

	//ÁöÀ±¾²
	// category list
	@RequestMapping(value = "/useEW")
	public ModelAndView useEW(ModelAndView mv) {
		mv.setViewName("jasose/useEW");
		return mv;
	}


	@RequestMapping(value = "/EWNews")
	public ModelAndView EWNews(ModelAndView mv) {
		mv.setViewName("jasose/EWNews");
		return mv;
	}

	

	// adminPage
	@RequestMapping(value = "/adminf")
	public ModelAndView atestf(ModelAndView mv) {
		mv.setViewName("adminTest/adminHome");
		return mv;
	}

	@RequestMapping(value = "/binsertf")
	public ModelAndView binsertf(ModelAndView mv) {
		mv.setViewName("adminTest/binsertForm");
		return mv;
	}//



	// µÕ ÁöÀ±½º
}
