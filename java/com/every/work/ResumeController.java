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
	
	@RequestMapping(value = "/resumeFormSelectOne")
	public ModelAndView resumeFormSelectOne(ModelAndView mv, SelftitleVO vo, SelfqaVO qavo) {
		ArrayList<SelftitleVO> list = service.selfTitleList(vo);
		mv.addObject("titleList",list); //자소서 목록 전송
		
		vo=service.selftitleOne(vo);
		mv.addObject("selftitle", vo);
		
		ArrayList<SelfqaVO> qalist = service.selfqaList(vo);
		if(qalist.size()!=0) {
			mv.addObject("qalist",qalist);
		}
		mv.setViewName("resume/resumeForm");
		return mv;
	}
	
	
	@RequestMapping(value = "/resumesave")
	public ModelAndView resumesave(ModelAndView mv, SelftitleVO vo) {
			if(vo.getJa_id()==null) { //ja_id가 null이면  insert 
				if(service.selftitleInsert(vo)>0) {
				SelftitleVO vo2=service.selftitleMaxId(); //위에서 insert해준 최근 등록한 ja_id를 가져옴
				vo.setJa_id(vo2.getJa_id());
				for(int i=0;i<vo.getSelfqa_q().size();i++) {
					SelfqaVO qavo= new SelfqaVO();
					qavo.setJa_id(vo.getJa_id());
					qavo.setSelfqa_q(vo.getSelfqa_q().get(i));
					qavo.setSelfqa_a(vo.getSelfqa_a().get(i));
					service.selfqaInsert(qavo);
				}
				mv.addObject("Save", "T");
				}
			}else {
				service.selfqaDelete(vo);
				for(int i=0;i<vo.getSelfqa_q().size();i++) {
					SelfqaVO qavo= new SelfqaVO();
					qavo.setJa_id(vo.getJa_id());
					qavo.setSelfqa_q(vo.getSelfqa_q().get(i));
					qavo.setSelfqa_a(vo.getSelfqa_a().get(i));
					service.selfqaInsert(qavo);
				}
			}
			ArrayList<SelftitleVO> list = service.selfTitleList(vo);
			mv.addObject("titleList",list);
			mv.setViewName("resume/resumeForm");
			return mv;
	}
}
