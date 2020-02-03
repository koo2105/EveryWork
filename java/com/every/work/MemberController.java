package com.every.work;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
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
		if (vo!=null ) {  // �α��� ����
			session.setAttribute("loginID",vo.getEmem_id());
			session.setAttribute("loginNM",vo.getEmem_name());
			mv.setViewName("home");
		}else { // // �α��� ����
			mv.addObject("Error","L");
			mv.setViewName("member/loginForm");
		} // if
		return mv ;
	}// login
	
	
	@RequestMapping(value = "/joinf")
	public ModelAndView joinf(ModelAndView mv) {
		mv.setViewName("member/joinForm");
		return mv;
	}// joinf 
	
	
	@RequestMapping(value = "/join")
	public ModelAndView join(HttpServletRequest request, ModelAndView mv, EmemberVO vo) throws IOException {
	
	   
		if (service.insert(vo)>0) { 
			// ȸ������ ���� 
			// -> loginForm ����  
			mv.addObject("Join","T");
			mv.setViewName("home");
		}else { 
			// ȸ������ ���� -> /member/doFinish.jsp
			mv.addObject("Error","J");
			mv.setViewName("everyUsing/doFinish");
		} // if		
		return mv ;
	}// join

	


} // class
