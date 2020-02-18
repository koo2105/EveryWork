package com.every.work;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import business.SpService;
import vo.SpecAwardsVO;
import vo.SpecCareerVO;
import vo.SpecEducationVO;
import vo.SpecExperienceVO;
import vo.SpecGraduateSchVO;
import vo.SpecLanguageVO;
import vo.SpecLicenseVO;
import vo.SpecOverseasVO;
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
				SpecUniversityVO uvo = new SpecUniversityVO();
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
			
			for(int i=0;i<vo.getGra_eperiod().size();i++) {
				SpecGraduateSchVO gvo = new SpecGraduateSchVO();
				gvo.setSpec_id(vo.getSpec_id());
				gvo.setGra_speriod(vo.getGra_speriod().get(i));
				gvo.setGra_eperiod(vo.getGra_eperiod().get(i));
				gvo.setGra_name(vo.getGra_name().get(i));
				gvo.setGra_kind(vo.getGra_kind().get(i));
				gvo.setGra_grade(vo.getGra_grade().get(i));
				gvo.setGra_major(vo.getGra_major().get(i));
				gvo.setGra_smajor1(vo.getGra_smajor1().get(i));
				gvo.setGra_smajor2(vo.getGra_smajor2().get(i));
				
				service.graduateSchInsert(gvo);
			}
			
			for(int i=0;i<vo.getLic_name().size();i++) {
				SpecLicenseVO livo = new SpecLicenseVO();
				livo.setSpec_id(vo.getSpec_id());
				livo.setLic_name(vo.getLic_name().get(i));
				livo.setLic_pub(vo.getLic_pub().get(i));
				livo.setLic_grade(vo.getLic_grade().get(i));
				
				service.licenseInsert(livo);
			}
			
			for(int i=0;i<vo.getCar_name().size();i++) {
				SpecCareerVO cvo = new SpecCareerVO();
				cvo.setSpec_id(vo.getSpec_id());
				cvo.setCar_name(vo.getCar_name().get(i));
				cvo.setCar_speriod(vo.getCar_speriod().get(i));
				cvo.setCar_eperiod(vo.getCar_eperiod().get(i));
				cvo.setCar_rank(vo.getCar_rank().get(i));
				cvo.setCar_dep(vo.getCar_dep().get(i));
				cvo.setCar_work(vo.getCar_work().get(i));
				cvo.setCar_res(vo.getCar_res().get(i));
				
				service.careerInsert(cvo);
			}
			
			for(int i=0;i<vo.getLan_sort().size();i++) {
				SpecLanguageVO lavo = new SpecLanguageVO();
				lavo.setSpec_id(vo.getSpec_id());
				lavo.setLan_sort(vo.getLan_sort().get(i));
				lavo.setLan_name(vo.getLan_name().get(i));
				lavo.setLan_grade(vo.getLan_grade().get(i));
				lavo.setLan_date(vo.getLan_date().get(i));
				
				service.languageInsert(lavo);
			}
			
			for(int i=0;i<vo.getAw_name().size();i++) {
				SpecAwardsVO avo = new SpecAwardsVO();
				avo.setSpec_id(vo.getSpec_id());
				avo.setAw_name(vo.getAw_name().get(i));
				avo.setAw_story(vo.getAw_story().get(i));
				avo.setAw_pub(vo.getAw_pub().get(i));
				avo.setAw_date(vo.getAw_date().get(i));
				
				service.awardsInsert(avo);
			}
			
			for(int i=0;i<vo.getOv_country().size();i++) {
				SpecOverseasVO ovo = new SpecOverseasVO();
				ovo.setSpec_id(vo.getSpec_id());
				ovo.setOv_country(vo.getOv_country().get(i));
				ovo.setOv_pub(vo.getOv_pub().get(i));
				ovo.setOv_purpose(vo.getOv_purpose().get(i));
				
				service.overseasInsert(ovo);
			}
			
			for(int i=0;i<vo.getExp_name().size();i++) {
				SpecExperienceVO exvo = new SpecExperienceVO();
				exvo.setSpec_id(vo.getSpec_id());
				exvo.setExp_name(vo.getExp_name().get(i));
				exvo.setExp_pub(vo.getExp_pub().get(i));
				exvo.setExp_sdate(vo.getExp_sdate().get(i));
				exvo.setExp_edate(vo.getExp_edate().get(i));
				exvo.setExp_story(vo.getExp_story().get(i));
				
				service.experienceInsert(exvo);
			}
			
			for(int i=0;i<vo.getEdu_name().size();i++) {
				SpecEducationVO edvo = new SpecEducationVO();
				edvo.setSpec_id(vo.getSpec_id());
				edvo.setEdu_name(vo.getEdu_name().get(i));
				edvo.setEdu_pub(vo.getEdu_pub().get(i));
				edvo.setEdu_sdate(vo.getEdu_sdate().get(i));
				edvo.setEdu_edate(vo.getEdu_edate().get(i));
				edvo.setEdu_story(vo.getEdu_story().get(i));
				
				service.educationInsert(edvo);
			}
			
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
	

}
