package com.every.work;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.MService;
import vo.EmemberVO;



@Controller
public class MemberController {

	@Autowired
	MService service ;
	


	
	@RequestMapping(value = "/loginf")
	public ModelAndView loginf(ModelAndView mv) {
		mv.setViewName("member/loginForm");
		return mv;
	}// loginf 
	
	
	@RequestMapping(value = "/login")
	public ModelAndView login(HttpServletRequest request, ModelAndView mv, EmemberVO vo) {
		
		HttpSession session = request.getSession() ;
		vo = service.login(vo);
		if (vo!=null ) {  // 로그인 성공
			session.setAttribute("loginID",vo.getEmem_id());
			session.setAttribute("loginNM",vo.getEmem_name());
			mv.setViewName("home");
		}else { // // 로그인 실패
			mv.addObject("Error","L");
			mv.setViewName("member/loginForm");
		} // if
		return mv ;
	}// login
	

	


} // class
