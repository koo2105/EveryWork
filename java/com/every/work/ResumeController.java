package com.every.work;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.RService;
import vo.SelfqaVO;
import vo.SelftitleVO;
import vo.SpecUniversityVO;
import vo.SpecVO;


@Controller
public class ResumeController {
	
	@Autowired
	RService service;
	
	@RequestMapping(value = "/resumeForm")
	public ModelAndView resumeForm(ModelAndView mv, SelftitleVO vo) {
		ArrayList<SelftitleVO> list = service.selfTitleList(vo);
		mv.addObject("titleList",list);
		mv.setViewName("resume/resumeForm");
		return mv;
	}
	
	
	@RequestMapping(value = "/resumesave")
	public ModelAndView resumesave(ModelAndView mv, SelftitleVO vo) {
			if(vo.getJa_name()!=null) {
				service.selftitleInsert(vo);
			}
			
			service.selfqaDelete(vo);
			
			for(int i=0;i<vo.getSelfqa_q().size();i++) {
				SelfqaVO qavo = new SelfqaVO();
				qavo.setJa_id(vo.getJa_id());
				qavo.setSelfqa_q(vo.getSelfqa_q().get(i));
				qavo.setSelfqa_a(vo.getSelfqa_a().get(i));
				service.selfqaInsert(qavo);
			}
			//여기까지!
			mv.setViewName("resume/specForm");
			return mv;
	}
}
