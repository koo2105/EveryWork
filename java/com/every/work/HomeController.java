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
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		request.getSession().invalidate();
		return "home";
	}
	
	//Áö¿µ¾²
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

	//µÕ Áö¿µ¾²

	//³¿­Z¾²
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

	@RequestMapping(value = "labDetail")
	public ModelAndView labDetail(ModelAndView mv) {

		// DB¿¬°á ÈÄ ÇØ´ç Dtail ÆäÀÌÁö ¿­µµ·Ï ÄÚµù
		mv.setViewName("jasose/post");
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

	@RequestMapping(value = "/bupdatef")
	public ModelAndView bupdatef(ModelAndView mv) {
		mv.setViewName("adminTest/bupdateForm");
		return mv;
	}// 

	// µÕ ÁöÀ±½º
}
