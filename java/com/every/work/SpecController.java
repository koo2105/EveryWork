package com.every.work;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.SpService;
import vo.SpecUniversityVO;
import vo.SpecVO;


@Controller
public class SpecController {
	
	@Autowired
	SpService service;
	
//	@RequestMapping(value = "/specForm")
//	public ModelAndView specForm(ModelAndView mv) {
//		ArrayList<SpecVO> list = service.specSelectList();
//		mv.addObject("specList", list);
//		mv.setViewName("resume/specForm");
//		return mv;
//	}// 
	
	
	
	@RequestMapping(value = "/specForm")
	public ModelAndView sdetail(ModelAndView mv, SpecVO vo) {
		System.out.println("***********" + vo);
		if (vo.getEmem_id() != null) {
			try {
				vo = service.specSelectOne(vo);
				mv.addObject("sDetail", vo);
			} catch (NullPointerException e) {
				System.out.println(e.toString());
				mv.setViewName("resume/specForm");
				return mv;
			}
			if (vo.getSpec_id() != null) {
				if(vo.getAlist().size()!=0) {
					mv.addObject("alist", vo.getAlist());
				}
				if(vo.getClist().size()!=0) {
					mv.addObject("clist", vo.getClist());
				}
				
				if(vo.getEdlist().size()!=0) {
					mv.addObject("edlist", vo.getEdlist());
				}
				if(vo.getExlist().size()!=0) {
					mv.addObject("exlist", vo.getExlist());
				}
				if(vo.getMlist().size()!=0) {
					mv.addObject("mlist", vo.getMlist());
				}
				if(vo.getLalist().size()!=0) {
					mv.addObject("lalist", vo.getLalist());
				}
				if(vo.getLilist().size()!=0) {
					mv.addObject("lilist", vo.getLilist());
				}
				if(vo.getOlist().size()!=0) {
					mv.addObject("olist", vo.getOlist());
				}
				if(vo.getUlist().size()!=0) {
					mv.addObject("ulist", vo.getUlist());
				}
			}

		}
		mv.setViewName("resume/specForm");

		return mv;
	}// loginf
	
	

	@RequestMapping(value = "/specUpdate")
	public ModelAndView specUpdate(ModelAndView mv, SpecVO vo) {
			if(vo.getSpec_id()!=null) {
				service.specUpdate(vo);
			}else {
				service.specInsert(vo);
			}
			
			service.specAllDelete(vo);
			for(int i=0;i<vo.getUni_eperiod().size();i++) {
				SpecUniversityVO uvo = null;
				uvo.setSpec_id(vo.getSpec_id());
				uvo.setUni_speriod(vo.getUni_speriod().get(i));
				uvo.setUni_eperiod(vo.getUni_eperiod().get(i));
				uvo.setUni_name(vo.getUni_name().get(i));
				uvo.setUni_kind(vo.getUni_name().get(i));
				uvo.setUni_grade(vo.getUni_grade().get(i));
				uvo.setUni_major(vo.getUni_major().get(i));
				uvo.setUni_smajor1(vo.getUni_smajor1().get(i));
				uvo.setUni_smajor2(vo.getUni_smajor2().get(i));
				
				service.universityInsert(uvo);
			}
			mv.setViewName("home");
		
		return mv;
	}// loginf	
	

}
