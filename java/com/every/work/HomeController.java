package com.every.work;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	 @RequestMapping(value = "/joinForm")
	   public ModelAndView joinForm(ModelAndView mv) {
	      mv.setViewName("member/joinForm");
	      return mv;
	   }
	 @RequestMapping(value = "/resumeForm")
	 public ModelAndView resumeForm(ModelAndView mv) {
		 mv.setViewName("resume/resumeForm");
		 return mv;
	 }
	 @RequestMapping(value = "/specForm")
	 public ModelAndView specForm(ModelAndView mv) {
		 mv.setViewName("resume/specForm");
		 return mv;
	 }
	 
	 
	 @RequestMapping(value = "/blogupdatef")
		public ModelAndView blogupdatef(ModelAndView mv) {
			mv.setViewName("adminTest/blogUpdateForm");
			return mv;
		}
	 
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
			String year= request.getParameter("year");
			String month = request.getParameter("month");
			request.setAttribute("month", month);
			request.setAttribute("year", year);
			mv.setViewName("calendar");
			return mv;
		}
		//µÕ ³¿­Z½º
		
		
		//ÁöÀ±½º

		 @RequestMapping(value = "/blog")//ÀÚ¼Ò¼­¿¬±¸¼Ò
		   public ModelAndView blog(ModelAndView mv) {
		      mv.setViewName("jasose/blog");
		      return mv;
		   }
		 
		 
		 @RequestMapping(value = "/updateForm")
		   public ModelAndView updateForm(ModelAndView mv) {
		      mv.setViewName("member/updateForm");
		      return mv;
		   }
		 
		 @RequestMapping(value = "/myblog")//category
		   public ModelAndView myblog(ModelAndView mv) {
		      mv.setViewName("jasose/myblog");
		      return mv;
		   }
		 
		 @RequestMapping(value = "/post")
		   public ModelAndView post(ModelAndView mv) {
		      mv.setViewName("jasose/post");
		      return mv;
		   }
		 
		 @RequestMapping(value = "/detail")
		   public ModelAndView detail(ModelAndView mv) {
		      mv.setViewName("jasose/detail");
		      return mv;
		   }
		 
		 //category list
		 @RequestMapping(value = "/useEW")
		 public ModelAndView useEW(ModelAndView mv) {
			 mv.setViewName("jasose/useEW");
			 return mv;
		 }
		 @RequestMapping(value = "/resumeWell")
		 public ModelAndView resumeWell(ModelAndView mv) {
			 mv.setViewName("jasose/resumeWell");
			 return mv;
		 }
		 @RequestMapping(value = "/EWNews")
		 public ModelAndView EWNews(ModelAndView mv) {
			 mv.setViewName("jasose/EWNews");
			 return mv;
		 }
		 
		 
		 
		 
		 
		 
		 //adminPage
		 @RequestMapping(value = "/adminf")
			public ModelAndView atestf(ModelAndView mv) {
			mv.setViewName("adminTest/adminHome");
			return mv;
		 }

		 @RequestMapping(value = "/aidlist")
			public ModelAndView aidlist(ModelAndView mv) {
				mv.setViewName("adminTest/axboardList");
				return mv;
			}
			
			@RequestMapping(value = "/ablist")
			public ModelAndView ablist(ModelAndView mv) {
				mv.setViewName("adminTest/axboardList");
				return mv;
			}//
			@RequestMapping(value = "/amlist")
			public ModelAndView amlist(ModelAndView mv) {
				mv.setViewName("adminTest/axmemberList");
				return mv;
			}// 
			
			@RequestMapping(value = "/anlist")
			public ModelAndView anlist(ModelAndView mv) {
				mv.setViewName("adminTest/answerList");
				return mv;
			}// 
			
			@RequestMapping(value = "/ajlist")
			public ModelAndView ajlist(ModelAndView mv) {
				mv.setViewName("adminTest/blogList");
				return mv;
			}// 
			
			@RequestMapping(value = "/binsertf")
			public ModelAndView binsertf(ModelAndView mv) {
				mv.setViewName("adminTest/binsertForm");
				return mv;
			}// 
			
			//µÕ ÁöÀ±½º
	
}
