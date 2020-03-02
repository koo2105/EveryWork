package com.every.work;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.JoService;
import business.RService;
import calendar.JobCalendar;
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
	public ModelAndView jobMain(ModelAndView mv,JobCalendar jc) {
		
		//여기에 달력구현
		Calendar cal = Calendar.getInstance();
		String strYear = null;
		String strMonth = null;
		if(jc.getYear()!=null) {
			strYear = Integer.toString(jc.getYear());
			jc.setYear(Integer.parseInt(strYear));
		}else {
			jc.setYear(cal.get(Calendar.YEAR));
		}
			
		if(jc.getMonth()!=null) {
			if(jc.getMonth()==0){
				jc.setYear(Integer.parseInt(strYear)-1);
				jc.setMonth(12);
			}else if(jc.getMonth()==13) {
				jc.setYear(Integer.parseInt(strYear)+1);
				jc.setMonth(1);
			}else {
				strMonth =Integer.toString(jc.getMonth());
				jc.setMonth(Integer.parseInt(strMonth));
			}
		}else {
			jc.setMonth(cal.get(Calendar.MONTH)+1);
		}
		
		if(jc.getDate()==null) {
			jc.setDate(cal.get(Calendar.DATE));
		}
		

		//년도/월 셋팅
		cal.set(jc.getYear(), jc.getMonth()-1, 1);
		jc.setStartDay(cal.getMinimum(java.util.Calendar.DATE));
		jc.setEndDay(cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH));
		jc.setStart(cal.get(java.util.Calendar.DAY_OF_WEEK));
		
		String sdc = Integer.toString(jc.getYear())+(Integer.toString(jc.getMonth()).length()==1 ? "0"+Integer.toString(jc.getMonth()):Integer.toString(jc.getMonth()))+"01";
		String edc = Integer.toString(jc.getYear())+(Integer.toString(jc.getMonth()).length()==1 ? "0"+Integer.toString(jc.getMonth()):Integer.toString(jc.getMonth()))+jc.getEndDay();
		jc.setSdateCheck(sdc);
		jc.setEdateCheck(edc);
		ArrayList<JobopenVO> joblist = service.jobopenMonList(jc);
		System.out.println("공고리스트가 나오나?"+joblist);
		mv.addObject("joblist",joblist);
		mv.addObject("jc",jc);
		mv.setViewName("jobOpening/jobMain");
		return mv;
	}
	
	

}
