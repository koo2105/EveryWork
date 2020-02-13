package com.every.work;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.SpService;
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
		System.out.println(vo);
		if(vo!=null){
		vo = service.specSelectOne(vo);
		mv.addObject("sDetail", vo);
		mv.addObject("alist",vo.getAlist());
		mv.addObject("clist",vo.getClist());
		mv.addObject("edlist",vo.getEdlist());
		mv.addObject("exlist",vo.getExlist());
		mv.addObject("mlist",vo.getMlist());
		mv.addObject("lalist",vo.getLalist());
		mv.addObject("lilist",vo.getLilist());
		mv.addObject("olist",vo.getOlist());
		mv.addObject("ulist",vo.getUlist());
		System.out.println("*************2"+vo);
		System.out.println("*************2"+vo.getUlist());
		}
		mv.setViewName("resume/specForm");
		
		return mv;
	}// loginf	
	

}
