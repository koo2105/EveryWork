package com.every.work;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.AdService;
import vo.AdminVO;
import vo.EmemberVO;
import vo.InquiryVO;
import vo.JobopenVO;
import vo.SelflabVO;





@Controller
public class AdminController {

	@Autowired
	AdService service ;
	
	@RequestMapping(value = "/adminhome")
	public ModelAndView adminhome(ModelAndView mv) {
		mv.setViewName("adminTest/adminhome");
		return mv;
	}// mlist 

	@RequestMapping(value = "/amlist")
	public ModelAndView amlist(ModelAndView mv) {
		ArrayList<EmemberVO> list = service.selectList();
		mv.addObject("List", list);
		mv.setViewName("adminTest/axmemberList");
		return mv;
	}// mlist 
	
	
	@RequestMapping(value = "/ablist")
	public ModelAndView ablist(ModelAndView mv) {
		ArrayList<JobopenVO> list = service.jobopenList();
		mv.addObject("Joblist", list);
		mv.setViewName("adminTest/axboardList");
		return mv;
	}// blist
	

	@RequestMapping(value = "/anlist")
	public ModelAndView anlist(ModelAndView mv) {
		ArrayList<InquiryVO> list = service.answerList();
		mv.addObject("Answerlist", list);
		mv.setViewName("adminTest/answerList");
		return mv;
	}//
	
	@RequestMapping(value = "/ajlist")
	public ModelAndView ajlist(ModelAndView mv) {
		ArrayList<SelflabVO> list = service.blogList();
		mv.addObject("Bloglist", list);
		mv.setViewName("adminTest/blogList");
		return mv;
	}//
	
	@RequestMapping(value = "/adminloginf")
	public ModelAndView loginf(ModelAndView mv) {
		mv.setViewName("adminTest/adminLoginForm");
		return mv;
	}// loginf 
	
	
	@RequestMapping(value = "/adminlogin")
	public ModelAndView login(HttpServletRequest request, ModelAndView mv, AdminVO vo) {
		
		HttpSession session = request.getSession() ;
		vo = service.adminLogin(vo);
		if (vo!=null ) {  // 로그인 성공
			session.setAttribute("adloginID",vo.getAdmin_id());
			session.setAttribute("adloginNM",vo.getAdmin_name());
			mv.setViewName("adminTest/adminHome");
		}else { // // 로그인 실패
			mv.addObject("Error","AL");
			mv.setViewName("adminTest/adminHome");
		} // if
		return mv ;
	}// login

} // class
