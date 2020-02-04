package com.every.work;

import java.io.IOException;

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
	
	@RequestMapping(value = "/mdetail")
	public ModelAndView mdetail(ModelAndView mv, EmemberVO vo) {
		vo = service.selectOne(vo);
		mv.addObject("Detail", vo);
		mv.setViewName("member/memberDetail");
		return mv;
	}// loginf
	
	
	@RequestMapping(value = "/updatef")
	public ModelAndView updatef(ModelAndView mv, EmemberVO vo) {
		vo = service.selectOne(vo);	
		mv.addObject("Detail", vo);
		mv.setViewName("member/updateForm");
		return mv;
	}// loginf 


	
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
	
	
	@RequestMapping(value = "/joinf")
	public ModelAndView joinf(ModelAndView mv) {
		mv.setViewName("member/joinForm");
		return mv;
	}// joinf 
	
	
	@RequestMapping(value = "/join")
	public ModelAndView join(HttpServletRequest request, ModelAndView mv, EmemberVO vo) throws IOException {
	
	   
		if (service.insert(vo)>0) { 
			// 회원가입 성공 
			// -> loginForm 으로  
			mv.addObject("Join","T");
			mv.setViewName("home");
		}else { 
			// 회원가입 실패 -> /member/doFinish.jsp
			mv.addObject("Error","J");
			mv.setViewName("everyUsing/doFinish");
		} // if		
		return mv ;
	}// join

	
	@RequestMapping(value = "/update")
	public ModelAndView update(HttpServletRequest request, ModelAndView mv, EmemberVO vo) throws IOException  {

		if (service.update(vo)>0) { 
			// 회원수정 성공 
			// -> memberList.jsp 으로  
			request.getSession().setAttribute("loginNM", vo.getEmem_name());
			mv.addObject("Success","T");
			mv.setViewName("everyUsing/doFinish");
		}else { 
			// 회원수정 실패 -> /member/doFinish.jsp
			mv.addObject("Error","U");
			mv.setViewName("member/doFinish");
		} // if		
		return mv ;
	}// update
	
	@RequestMapping(value = "/mlogout")
	public ModelAndView mlogout(HttpServletRequest request, ModelAndView mv, EmemberVO vo) {
		request.getSession().invalidate();
		mv.setViewName("redirect:home"); 
		return mv ;
	}// login
	


} // class
