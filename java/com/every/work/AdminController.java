package com.every.work;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import business.AdService;
import vo.AdminVO;
import vo.EmemberVO;
import vo.InquiryVO;
import vo.JobcategoryVO;
import vo.JobopenVO;
import vo.JobqaVO;
import vo.SelflabVO;

@Controller
public class AdminController {

	@Autowired
	AdService service;

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

		HttpSession session = request.getSession();
		vo = service.adminLogin(vo);
		if (vo != null) { // 로그인 성공
			session.setAttribute("adloginID", vo.getAdmin_id());
			session.setAttribute("adloginNM", vo.getAdmin_name());
			mv.setViewName("adminTest/adminHome");
		} else { // // 로그인 실패
			mv.addObject("Error", "AL");
			mv.setViewName("adminTest/adminHome");
		} // if
		return mv;
	}// login

	@RequestMapping(value = "/jobopeninsert")
	public ModelAndView jobopeninsert(HttpServletRequest request, ModelAndView mv, JobopenVO vo) throws IOException {
		if (vo != null) {

			MultipartFile jobopen_pimgf = vo.getJobopen_pimgf();
			String file1, file2;
			if (!jobopen_pimgf.isEmpty()) {

				file1 = "D:/Mywork/EveryWork/src/main/webapp/resources/uploadImage/"
						+ jobopen_pimgf.getOriginalFilename();
				jobopen_pimgf.transferTo(new File(file1));
				file2 = "resources/uploadImage/" + jobopen_pimgf.getOriginalFilename();
			} else
				file2 = "NO Image";
			vo.setJobopen_pimg(file2);

			MultipartFile jobopen_cimgf = vo.getJobopen_cimgf();
			String file3, file4;
			if (!jobopen_cimgf.isEmpty()) {

				file3 = "D:/Mywork/EveryWork/src/main/webapp/resources/uploadImage/"
						+ jobopen_cimgf.getOriginalFilename();
				jobopen_cimgf.transferTo(new File(file3));
				file4 = "resources/uploadImage/" + jobopen_cimgf.getOriginalFilename();
			} else
				file4 = "NO Image";
			vo.setJobopen_cimg(file4);
		}
		
		if (service.jobopenInsert(vo) > 0) {
			mv.addObject("JOI", "T");
		} else {
			// 회원가입 실패 -> /member/doFinish.jsp
			mv.addObject("Error", "JOE");
		} // if
		mv.setViewName("everyUsing/doFinish");
		return mv;
	}// login

} // class
