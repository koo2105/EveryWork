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
import criteria.PageMaker;
import criteria.SearchCriteria;
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
		mv.setViewName("adminTest/adminHome");
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
	public ModelAndView ajlist(ModelAndView mv, SearchCriteria cri) {
		cri.setSnoEno();
		mv.addObject("Bloglist", service.searchCriList(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.searchCriCount(cri));
		mv.addObject("pageMaker",pageMaker);
		
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
	public ModelAndView jobopeninsert(HttpServletRequest request, ModelAndView mv, JobopenVO vo, JobcategoryVO jcvo) throws IOException {
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
			JobopenVO vo2=service.jobopenMaxID();
			int j = 0;
			for (int i = 0; i < vo.getJc_div().size(); i++) {
				JobcategoryVO jcvo2 = new JobcategoryVO();
				jcvo2.setJobopen_id(vo2.getJobopen_id());
				jcvo2.setJc_div(vo.getJc_div().get(i));
				jcvo2.setJc_part(vo.getJc_part().get(i));
				service.jobcaInsert(jcvo2);
				jcvo2=service.jobcaMaxID();
				
				for (; j < jcvo.getJobqa_q().size(); j++) {
					JobqaVO qavo=new JobqaVO();
					if("end".equals(jcvo.getJobqa_q().get(j))) {
						j++;
						break;
					}
					qavo.setJc_id(jcvo2.getJc_id());
					qavo.setJobqa_q(jcvo.getJobqa_q().get(j));
					service.jobqaInsert(qavo);
				}
			}
	//		mv.addObject("JOI", "T");
		} else {
			// 회원가입 실패 -> /member/doFinish.jsp
			mv.addObject("Error", "JOE");
		} // if
		mv.setViewName("everyUsing/doFinish");
		return mv;
	}// login

	
	@RequestMapping(value = "/bdetail")
	public ModelAndView bdetail(ModelAndView mv,JobopenVO vo) {
		if(vo!=null) {
			vo=service.bdetail(vo);
			mv.addObject("Detail", vo);
			ArrayList<JobcategoryVO> clist = service.jobcategoryList(vo);
			mv.addObject("clist",clist);
			ArrayList<JobqaVO> qalist = service.jobqaList(vo);
			mv.addObject("qalist",qalist);
		}
		
		mv.setViewName("adminTest/bdetail");
		return mv;
	}// mlist 
	
	@RequestMapping(value = "/bDelete")
	public ModelAndView bDelete(HttpServletRequest request, ModelAndView mv, JobopenVO vo) {
		if (service.bDelete(vo)>0) {
			// 회원 탈퇴 성공 : session 삭제 -> home.jsp
			mv.addObject("Success", "SS");
		}else { // doFinish.jsp 로  
			mv.addObject("Success", "XX");
		}
		mv.setViewName("adminTest/adminHome");
		return mv ;
	}// mdelete
	
	@RequestMapping(value = "/minfo")
	public ModelAndView minfo(ModelAndView mv,EmemberVO vo) {
		vo=service.minfo(vo);
		mv.addObject("minfo", vo);
		mv.setViewName("adminTest/minfo");
		return mv;
	}// mlist 
	
	@RequestMapping(value = "/minfoDelete")
	public ModelAndView minfoDelete(HttpServletRequest request, ModelAndView mv, EmemberVO vo) {
	
				if (service.delete(vo)>0) {
					// 회원 탈퇴 성공 : session 삭제 -> home.jsp
					mv.addObject("Success", "SS");
				}else { // doFinish.jsp 로  
					mv.addObject("Success", "XX");
				}
				  mv.setViewName("adminTest/adminHome");
			
		return mv ;
	}// mdelete
	
	
	@RequestMapping(value = "/binfoDetail")
	public ModelAndView binfoDetail(ModelAndView mv,SelflabVO vo) {
		vo=service.binfoDetail(vo);
		mv.addObject("binfoDetail", vo);
		mv.setViewName("adminTest/blogDetail");
		return mv;
	}// binfoDetail 
	
	@RequestMapping(value = "/binfoDelete")
	public ModelAndView binfoDelete(HttpServletRequest request, ModelAndView mv, SelflabVO vo) {
		if (service.binfodelete(vo)>0) {
			// 회원 탈퇴 성공 : session 삭제 -> home.jsp
			mv.addObject("Success", "SS");
		}else { // doFinish.jsp 로  
			mv.addObject("Success", "XX");
		}
		mv.setViewName("adminTest/adminHome");
		return mv ;
	}// mdelete
	
	
	@RequestMapping(value = "/answerDetail")
	public ModelAndView answerDetail(ModelAndView mv,InquiryVO vo) {
		vo=service.answerDetail(vo);
		if("2".equals(vo.getInq_state())) {
			service.answerProcess(vo);
		}
		mv.addObject("answerDetail", vo);
		mv.setViewName("adminTest/answerDetail");
		return mv;
	}// binfoDetail 
	
	@RequestMapping(value = "/answerDelete")
	public ModelAndView answerDelete(HttpServletRequest request, ModelAndView mv, InquiryVO vo) {
		if (service.answerDelete(vo)>0) {
			// 회원 탈퇴 성공 : session 삭제 -> home.jsp
			mv.addObject("Success", "SS");
		}else { // doFinish.jsp 로  
			mv.addObject("Success", "XX");
		}
		mv.setViewName("adminTest/adminHome");
		return mv ;
	}// mdelete
	
	@RequestMapping(value = "/blogInsert")
	public ModelAndView blogInsert(HttpServletRequest request, ModelAndView mv, SelflabVO vo) throws IOException {
		if (vo != null) {

			MultipartFile lab_imgf = vo.getLab_imgf();
			String file1, file2;
			if (!lab_imgf.isEmpty()) {

				file1 = "D:/Mywork/EveryWork/src/main/webapp/resources/uploadImage/"
						+ lab_imgf.getOriginalFilename();
				lab_imgf.transferTo(new File(file1));
				file2 = "resources/uploadImage/" + lab_imgf.getOriginalFilename();
			} else
				file2 = "NO Image";
			vo.setLab_img(file2);
		}
		
		if (service.blogInsert(vo) > 0) {
			mv.addObject("BOGI", "T");
		} else {
			// 회원가입 실패 -> /member/doFinish.jsp
			mv.addObject("Error", "BOGE");
		} // if
		mv.setViewName("everyUsing/doFinish");
		return mv;
	}//blogInsert
	
	
	@RequestMapping(value = "/blogUpdatef")
	public ModelAndView blogUpdatef(ModelAndView mv, SelflabVO vo) {
		vo = service.binfoDetail(vo);	
		mv.addObject("BlogD", vo);
		mv.setViewName("adminTest/blogUpdate");
		return mv;
	}// loginf 

	
	@RequestMapping(value = "/blogUpdate")
	public ModelAndView blogUpdate(ModelAndView mv, SelflabVO vo) throws IOException  {

		 MultipartFile lab_imgf = vo.getLab_imgf();
		 String file1, file2= "NO Image"; 
		 if(!lab_imgf.isEmpty()) {
			 
			 file1="D:/Mywork/EveryWork/src/main/webapp/resources/uploadImage/"+lab_imgf.getOriginalFilename();
			 lab_imgf.transferTo(new File(file1));		 
			 file2="resources/uploadImage/"+lab_imgf.getOriginalFilename();
			 vo.setLab_img(file2);
		 }
		
		
		if (service.blogUpdate(vo)>0) { 
			// 회원수정 성공 
			// -> memberList.jsp 으로  
			//request.getSession().setAttribute("loginNM", vo.getEmem_name());
			mv.addObject("Success","B");
			mv.setViewName("everyUsing/doFinish");
		}else { 
			// 회원수정 실패 -> /member/doFinish.jsp
			mv.addObject("Error","UU");
			mv.setViewName("everyUsing/doFinish");
		} // if		
		return mv ;
	}// update
	@RequestMapping(value = "/answerUpdate")
	public ModelAndView answerUpdate(ModelAndView mv, InquiryVO vo) {
		System.out.println(vo);
		if (service.answerUpdate(vo)>0) { 
			mv.addObject("Success","AS");
		}else { 
			mv.addObject("Error","AE");
		} // if		
		ArrayList<InquiryVO> list = service.answerList();
		mv.addObject("Answerlist", list);
		mv.setViewName("adminTest/answerList");
		return mv ;
	}// update
	
	@RequestMapping(value = "/bupdatef")
	public ModelAndView bupdatef(ModelAndView mv, JobopenVO vo) {
		if(vo!=null) {
			vo=service.bdetail(vo);
			mv.addObject("Detail", vo);
			ArrayList<JobcategoryVO> clist = service.jobcategoryList(vo);
			mv.addObject("clist",clist);
			ArrayList<JobqaVO> qalist = service.jobqaList(vo);
			mv.addObject("qalist",qalist);
		}
		
		mv.setViewName("adminTest/bupdateForm");
		return mv;
	}
	
	@RequestMapping(value = "/bupdate")
	public ModelAndView bupdate(ModelAndView mv, JobopenVO vo, JobcategoryVO cvo) throws IOException {
		System.out.println(vo);
		System.out.println(cvo);
		MultipartFile jobopen_pimgf = vo.getJobopen_pimgf();
		MultipartFile jobopen_cimgf = vo.getJobopen_cimgf(); 
		String file1, file2, file3, file4= "NO Image"; 
		if(!jobopen_pimgf.isEmpty()) {	 
			file1="D:/Mywork/EveryWork/src/main/webapp/resources/uploadImage/"+jobopen_pimgf.getOriginalFilename();
			jobopen_pimgf.transferTo(new File(file1));		 
			file2="resources/uploadImage/"+jobopen_pimgf.getOriginalFilename();
			vo.setJobopen_pimg(file2);
			 
		}if(!jobopen_cimgf.isEmpty()){
			file3="D:/Mywork/EveryWork/src/main/webapp/resources/uploadImage/"+jobopen_cimgf.getOriginalFilename();
			jobopen_cimgf.transferTo(new File(file3));		 
			file4="resources/uploadImage/"+jobopen_cimgf.getOriginalFilename();
			vo.setJobopen_cimg(file4);
		}	
		
		if(service.jobopenUpdate(vo)>0) {
			if(service.jobcatDelete(vo)>0) {
				int j=0;
				for (int i = 0; i < vo.getJc_div().size(); i++) {
					JobcategoryVO jcvo2 = new JobcategoryVO();
					jcvo2.setJobopen_id(vo.getJobopen_id());
					jcvo2.setJc_div(vo.getJc_div().get(i));
					jcvo2.setJc_part(vo.getJc_part().get(i));
					service.jobcaInsert(jcvo2);
					jcvo2=service.jobcaMaxID();
					System.out.println(jcvo2.getJc_id());
					for (; j < cvo.getJobqa_q().size(); j++) {
						JobqaVO qavo=new JobqaVO();
						if("end".equals(cvo.getJobqa_q().get(j))) {
							j++;
							break;
						}
						qavo.setJc_id(jcvo2.getJc_id());
						qavo.setJobqa_q(cvo.getJobqa_q().get(j));
						service.jobqaInsert(qavo);
					}
				}
				
			}
			
		}
		
		ArrayList<JobopenVO> list = service.jobopenList();
		mv.addObject("Joblist", list);
		mv.setViewName("adminTest/axboardList");
		
		

		return mv ;
	}// update
	
} // class
